package javaminor.al.domain.beans;

import java.io.IOException;
import java.io.Serializable;
import java.util.Map;
import java.util.Optional;
import javaminor.al.entities.concrete.MaintenanceAssignment;
import javaminor.al.service.MaintenanceProcess;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.context.SessionScoped;
import javax.faces.context.FacesContext;
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

    @EJB
    private MaintenanceProcess process;

    private MaintenanceAssignment assignment;


    /**
     * Finish the assignment.
     *
     * @return the next page
     */
    public String finish() {
        refreshAssignment();
        //TODO: Add inspection check
        process.markAssignmentFinished(assignment);
        return "maintenanceOverview.xhtml";
    }

    /**
     * Move the assignment to IN_PROGRESS.
     *
     * @return the next page
     */
    public String inProgress() {
        refreshAssignment();
        process.markAssignmentInProgress(assignment);
        return "maintenanceOverview.xhtml";
    }

    private void refreshAssignment() {
        //assignment = process.findById(assignment.getId()).get();
    }

    /**
     * View an assignment.
     *
     * @param assignment The assignment
     * @return the page
     */
    public String viewAssignment(MaintenanceAssignment assignment) {
        setAssignment(assignment);
        return "viewAssignment.xhtml";
    }

}