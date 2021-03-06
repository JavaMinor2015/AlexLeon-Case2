package javaminor.al.domain.beans;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;
import javaminor.al.business.MaintenanceStatus;
import javaminor.al.entities.concrete.MaintenanceAssignment;
import javaminor.al.repository.MaintenanceRepository;
import javax.ejb.EJB;
import javax.ejb.Stateful;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * Created by alex on 11/19/15.
 */
@Stateful
@Getter
@Setter
@NoArgsConstructor
public class MaintenanceBean implements Serializable {

    private static final long serialVersionUID = -3551969903952911887L;

    @EJB
    private MaintenanceRepository maintenanceRepository;


    /**
     * Add a maintenance assignment to the repository and persist.
     *
     * @param assignment the assignment to create
     */
    public void createMaintenanceAssignment(final MaintenanceAssignment assignment) {
        maintenanceRepository.save(assignment);
    }

    /**
     * Call to ensure fresh data.
     *
     * @param assignment the assignment to update
     */
    public void refresh(final MaintenanceAssignment assignment) {
        maintenanceRepository.update(assignment);
    }

    /**
     * Get all assignments.
     *
     * @return the assignments
     */
    public List<MaintenanceAssignment> getAssignments() {
        return maintenanceRepository.getAll();
    }

    /**
     * Get all Assignments with a certain status.
     *
     * @param status The status
     * @return the assignments
     */
    public List<MaintenanceAssignment> getAssignmentsWithStatus(MaintenanceStatus... status) {
        return maintenanceRepository.getAllWithStatus(status);
    }

    /**
     * Find a MaintenanceAssignment by it's ID.
     *
     * @param id The ID
     * @return The MaintenanceAssignment if found
     */
    public Optional<MaintenanceAssignment> findById(long id) {
        return maintenanceRepository.findById(id);
    }

}
