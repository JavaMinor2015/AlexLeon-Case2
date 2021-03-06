package javaminor.al.domain.beans;

import java.io.Serializable;
import javaminor.al.entities.concrete.MaintenanceAssignment;
import javaminor.al.service.MaintenanceProcess;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import lombok.Getter;
import lombok.Setter;

/**
 * Created by Leon Stam on 23-11-2015.
 */
@Named("assignmentBean")
@SessionScoped
@Getter
@Setter
public class AssignmentManagedBean implements Serializable {
    private static final long serialVersionUID = -4328773083415169251L;
    public static final String MAINTENANCE_OVERVIEW_XHTML = "maintenanceOverview.xhtml";
    public static final String VIEW_ASSIGNMENT_XHTML = "viewAssignment.xhtml";

    @EJB
    private MaintenanceProcess process;

    private MaintenanceAssignment assignment;

    /**
     * Finish the assignment.
     *
     * @return the next page
     */
    public String finish() {
        process.markAssignmentFinished(assignment);
        return MAINTENANCE_OVERVIEW_XHTML;
    }

    /**
     * Move the assignment to IN_PROGRESS.
     *
     * @return the next page
     */
    public String inProgress() {
        process.markAssignmentInProgress(assignment);
        return MAINTENANCE_OVERVIEW_XHTML;
    }

    /**
     * View an assignment.
     *
     * @param assignment The assignment
     * @return the page
     */
    public String viewAssignment(MaintenanceAssignment assignment) {
        setAssignment(assignment);
        return VIEW_ASSIGNMENT_XHTML;
    }

    /**
     * Mark an inspection done.
     *
     * @param assignment the assignment to mark done
     * @return the next page in the process
     */
    public String markInspectionDone(final MaintenanceAssignment assignment) {
        process.markInspectionDone(assignment);
        return MAINTENANCE_OVERVIEW_XHTML;
    }

    /**
     * Mark a spot check done.
     *
     * @param assignment the assignment tto mark done
     * @return the next page in the process
     */
    public String markSpotCheckDone(final MaintenanceAssignment assignment) {
        process.markSpotCheckDone(assignment);
        return MAINTENANCE_OVERVIEW_XHTML;
    }
}
