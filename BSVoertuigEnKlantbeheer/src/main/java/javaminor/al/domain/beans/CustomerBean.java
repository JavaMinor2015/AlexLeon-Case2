package javaminor.al.domain.beans;

import java.io.Serializable;
import java.util.List;
import javaminor.al.entities.abs.Customer;
import javaminor.al.entities.concrete.Driver;
import javaminor.al.repository.DriverRepository;
import javax.ejb.EJB;
import javax.ejb.Stateful;
import lombok.Getter;
import lombok.Setter;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

/**
 * Created by alex on 11/19/15.
 */
@Stateful
@Getter
@Setter
public class CustomerBean implements Serializable {
    private static final Logger LOGGER = LogManager.getLogger(CustomerBean.class.getName());
    private static final long serialVersionUID = 473528075546619935L;

    @EJB
    private DriverRepository driverRepository;

    /**
     * Add a customer to the repository and persist.
     *
     * @param customer the customer to persist
     */
    public void createCustomer(final Customer customer) {
        if (customer instanceof Driver) {
            driverRepository.save((Driver) customer);
        }
    }

    /**
     * Call to ensure fresh data.
     *
     * @param customer the customer to update
     */
    public void refresh(final Customer customer) {
        if (customer instanceof Driver) {
            driverRepository.update((Driver) customer);
        }
    }

    /**
     * Retrieve a customer by its first and last name.
     *
     * @param firstName first name
     * @param lastName  last name
     * @return the corresponding customer or null if not found
     */
    public Customer getCustomer(final String firstName, final String lastName) {
        return driverRepository.findByName(firstName, lastName);
    }

    /**
     * Get all drivers.
     *
     * @return the list
     */
    public List<Driver> getAll() {
        return driverRepository.getAll();
    }

}
