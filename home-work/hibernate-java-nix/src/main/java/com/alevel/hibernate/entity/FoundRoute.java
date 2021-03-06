package com.alevel.hibernate.entity;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "found_routes")
public class FoundRoute {

    @Id
    private Long id;

    @Column(name = "cost")
    private Integer minCost;

    @OneToOne
    @JoinColumn(name = "id")
    @MapsId
    private Problem problem;

    public FoundRoute() {

    }

    public Integer getMinCost() {
        return minCost;
    }

    public void setMinCost(Integer minCost) {
        this.minCost = minCost;
    }

    public Problem getProblem() {
        return problem;
    }

    public void setProblem(Problem problemFk) {
        this.problem = problemFk;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof FoundRoute)) return false;
        FoundRoute that = (FoundRoute) o;
        return getId().equals(that.getId()) &&
                getMinCost().equals(that.getMinCost()) &&
                getProblem().equals(that.getProblem());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getMinCost(), getProblem());
    }
}
