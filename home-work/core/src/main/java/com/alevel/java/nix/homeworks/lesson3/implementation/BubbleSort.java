package com.alevel.java.nix.homeworks.lesson3.implementation;

import com.alevel.java.nix.homeworks.lesson3.SortHandler;

public class BubbleSort implements SortHandler {

    @Override
    public int[] bubbleSort(int[] array) {
        int temp;
        for(int i = 0; i < array.length; i++) {
            for(int j = array.length - 1; j != i ; j--) {
                if(array[i] > array[j]) {
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                }
            }
        }
        return array;
    }
}
