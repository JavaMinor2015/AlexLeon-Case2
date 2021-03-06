package javaminor.al.repository;

import java.util.ArrayList;
import java.util.List;
import javaminor.al.entities.concrete.Car;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.junit.Before;
import org.junit.Test;

import static org.hamcrest.core.Is.is;
import static org.hamcrest.core.IsNull.nullValue;
import static org.junit.Assert.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

/**
 * Created by alex on 11/19/15.
 */
public class CarRepositoryTest {

    private EntityManager mockManager;

    private Root<Car> mockRoot;
    private List<Car> carList;

    private CarRepository carRepository;
    private CriteriaBuilder mockBuilder;
    private CriteriaQuery<Car> mockCriteriaQuery;
    private TypedQuery mockTypedQuery;

    @Before
    public void setUp() {

        Car testCar = new Car();


        carList = new ArrayList<>();
        carList.add(testCar);

        mockRoot = mock(Root.class);
        mockManager = mock(EntityManager.class);
        mockBuilder = mock(CriteriaBuilder.class);
        mockCriteriaQuery = mock(CriteriaQuery.class);
        mockTypedQuery = mock(TypedQuery.class);
        carRepository = new CarRepository();
        carRepository.setEm(mockManager);

        when(mockManager.getCriteriaBuilder()).thenReturn(mockBuilder);
        when(mockBuilder.createQuery(Car.class)).thenReturn(mockCriteriaQuery);
        when(mockManager.createQuery(mockCriteriaQuery)).thenReturn(mockTypedQuery);
        when(mockTypedQuery.getResultList()).thenReturn(carList);
        when(mockCriteriaQuery.from(Car.class)).thenReturn(mockRoot);
    }

    @Test
    public void testGetAll() throws Exception {
        assertThat(carRepository.getAll(), is(carList));
    }

    @Test
    public void testGetById() throws Exception {
        when(mockTypedQuery.getSingleResult()).thenReturn(carList.get(0));
        assertThat(carRepository.getById(1), is(carList.get(0)));
    }

    @Test
    public void testSave() throws Exception {
        carRepository.save(null);
        // no exception thrown
    }

    @Test
    public void testFindByPlate() {
        when(mockTypedQuery.getSingleResult()).thenReturn(carList.get(0));
        assertThat(carRepository.findByPlate("woop"), is(carList.get(0)));
    }

    @Test
    public void testFindByPlateErrorZero() {
        when(mockTypedQuery.getSingleResult()).thenThrow(NonUniqueResultException.class);
        when(mockTypedQuery.getResultList()).thenReturn(carList);
        assertThat(carRepository.findByPlate("woop"), is(carList.get(0)));
    }

    @Test
    public void testFindByPlateErrorOne() {
        when(mockTypedQuery.getSingleResult()).thenThrow(NonUniqueResultException.class);
        when(mockTypedQuery.getResultList()).thenReturn(null);
        assertThat(carRepository.findByPlate("woop"), is(nullValue()));
    }

    @Test
    public void testFindByPlateErrorTwo() {
        when(mockTypedQuery.getSingleResult()).thenThrow(NoResultException.class);
        assertThat(carRepository.findByPlate("woop"), is(nullValue()));
    }
}