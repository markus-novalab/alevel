package com.alevel.java.nix.dzenmoney.model;

import java.math.BigDecimal;

public class ExportOrders {

    private final Long id;

    private final String instance;

    private final BigDecimal value;

    private String category;

    private ExportOrders(Long id, String instance, BigDecimal value, String category) {
        this.id = id;
        this.instance = instance;
        this.value = value;
        this.category = category;
    }

    public static ExportOrders of(Long id, String instance, BigDecimal value, String category) {
        return new ExportOrders(id, instance, value, category);
    }

    public Long getId() {
        return id;
    }

    public String getInstance() {
        return instance;
    }

    public BigDecimal getValue() {
        return value;
    }

    public String getCategory() {
        return category;
    }

    public void addCategory(String category) {
        this.category = this.category + "," + category;
    }
}