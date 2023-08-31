package com.himedia.springboot;

import java.util.List;

public class ReservationData {
    List<String> arrayDate;
    List<String> arrayStartTime;
    List<String> arrayEndTime;
    List<Integer> arrayAddedPrice;

    public List<String> getArrayDate() {
        return arrayDate;
    }

    public void setArrayDate(List<String> arrayDate) {
        this.arrayDate = arrayDate;
    }

    public List<String> getArrayStartTime() {
        return arrayStartTime;
    }

    public void setArrayStartTime(List<String> arrayStartTime) {
        this.arrayStartTime = arrayStartTime;
    }

    public List<String> getArrayEndTime() {
        return arrayEndTime;
    }

    public void setArrayEndTime(List<String> arrayEndTime) {
        this.arrayEndTime = arrayEndTime;
    }

    public List<Integer> getArrayAddedPrice() {
        return arrayAddedPrice;
    }

    public void setArrayAddedPrice(List<Integer> arrayAddedPrice) {
        this.arrayAddedPrice = arrayAddedPrice;
    }
}