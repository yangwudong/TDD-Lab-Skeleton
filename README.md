# Skeleton for TDD Lab

## Purpose

To practice, understand and enjoy TDD by using a coding exercise. The exercise is a generic one, called String Calculator. 

**Exercise detail at below,**

### String Calculator

#### **Rules of this Kata:**

1. Pick up features ONE by ONE. 

    Features are from User one by one, so do one feature at a time.

2. JIT - Just in time, do user needed and learn to work incrementally.

#### Features / User Stories:

1. As a user, I want to use a String Calculator to sum all my input numbers, so that I don't need to sum by myself.
2. As a user, I want the String Calculator to support an unknown amount of numbers, so that I don't need to execute many times.
3. As a user, I want to use the line separator - "\n" to split my input numbers for using the String Calculator, so that I can easily read my input numbers.
4. As a user, I want to use a provided delimiter at beginning of input for string calculation, so that I can use whatever delimiters as my preference.
5. As a user, I want to forbidden all negative numbers during string calculation, so that I can avoid the offsetting happen.
6. As a user, I want to set 1000 as max number for input during string calculation, so that I can avoid the exceeded calculation.
7. As a user, I want to use an unlimited length of delimiter for input numbers, so that I can choose delimiters by my preference.
8. As a user, I want to use multiple selected delimiters for input numbers, so that I can choose delimiters based on different cases.
9. As a user, I want to use multiple selected delimiters with unlimited length for input numbers, so that I can choose delimiters based on different cases.

## Tech Summary

Java based exercise, JDK 11 LTS. 

Using JUnit 5 as unit testing framework; Cucumber Java as BDD framework and supports for great testing experiences; Jacoco as testing coverage tools; Slf4j as Logging framework; Lombok to accelerate coding; Guava as Utils.