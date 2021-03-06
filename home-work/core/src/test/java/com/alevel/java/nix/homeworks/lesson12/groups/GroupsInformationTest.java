package com.alevel.java.nix.homeworks.lesson12.groups;


import org.junit.jupiter.api.Test;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.assertEquals;

class GroupsInformationTest {

    @Test
    void assertShowContractStudents() {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        PrintStream out = new PrintStream(baos);
        System.setOut(out);

        Student[] students = new Student[7];

        for (int i = 0; i < students.length; i++) {
            students[i] = new Student();
        }
        students[0].name = "Alex";
        students[0].age = 18;

        students[1].name = "John";
        students[1].age = 19;

        students[2].name = "Grace";
        students[2].age = 18;

        students[3].name = "Victoria";
        students[3].age = 20;

        students[4].name = "Jack";
        students[4].age = 17;

        ContractStudent[] contractStudents = new ContractStudent[2];

        for (int i = 0; i < contractStudents.length; i++) {
            contractStudents[i] = new ContractStudent();
        }

        contractStudents[0].name = "Martin";
        contractStudents[0].contractCost = 2500;

        contractStudents[1].name = "Ben";
        contractStudents[1].contractCost = 7500;

        students[5] = contractStudents[0];
        students[6] = contractStudents[1];

        Group[] groups = new Group[1];
        groups[0] = new Group(students);

        GroupsInformation groupsInformation = new GroupsInformation(groups);
        groupsInformation.showContractStudents(0);

        String expected = "Name: Martin, contract cost: 2,500\n" +
                "Name: Ben, contract cost: 7,500\n";
        String actual = baos.toString();

        assertEquals(expected, actual);
    }
}