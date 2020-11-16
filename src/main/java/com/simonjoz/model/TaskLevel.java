package com.simonjoz.model;

public enum TaskLevel {
    JUNIOR("success"),
    JUNIOR_PLUS("info"),
    MID("warning"),
    MID_PLUS("primary"),
    SENIOR("danger");

    private final String color;

    TaskLevel(String color) {
        this.color = color;
    }

    public String getColor() {
        return color;
    }
}
