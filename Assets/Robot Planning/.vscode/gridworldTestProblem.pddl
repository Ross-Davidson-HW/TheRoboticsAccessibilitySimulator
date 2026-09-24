(define (problem moveToGoal)
    (:domain gridworldTest)

    (:objects
        robot-01 - robot
        arm-01 - arm
        arm2-01 - arm2
        
        mixStation-01 - mixStation
        station-01 - station
        chem-01 - chemical
        chem-02 - chemical
        chem-03 - mixedChemical
        wall-01 - wall
        wall-02 - wall
        wall-03 - wall
        wall-04 - wall
        pos-01 - location
        pos-02 - location
        pos-03 - location
        pos-04 - location
        pos-05 - location
        pos-06 - location
        pos-07 - location
        pos-08 - location
        pos-09 - location
        pos-10 - location
        pos-11 - location
        pos-12 - location
        pos-13 - location
        pos-14 - location
        pos-15 - location
        pos-16 - location
        pos-17 - location
        pos-18 - location
        pos-19 - location
        pos-20 - location
        pos-21 - location
        pos-22 - location
        pos-23 - location
        pos-24 - location
        pos-25 - location
        pos-26 - location
        pos-27 - location
        pos-28 - location
        pos-29 - location
    )

    (:init
        (at robot-01 pos-01)              
        (arm-empty)
        (arm2-empty)
        (at chem-01 pos-12)        
        (at chem-02 pos-18)        
        (at mixStation-01 pos-29)
        (at station-01 pos-01)
        (at wall-01 pos-08)
        (at wall-02 pos-10)
        (at wall-03 pos-20)
        (at wall-04 pos-22)
        (moveTo pos-01 pos-04)
        (moveTo pos-02 pos-03)
        (moveTo pos-02 pos-07)
        (moveTo pos-03 pos-02)
        (moveTo pos-03 pos-04)
        (moveTo pos-04 pos-01)
        (moveTo pos-04 pos-03)
        (moveTo pos-04 pos-05)
        (moveTo pos-04 pos-09)
        (moveTo pos-05 pos-04)
        (moveTo pos-05 pos-06)
        (moveTo pos-06 pos-05)
        (moveTo pos-06 pos-11)
        (moveTo pos-07 pos-02)
        (moveTo pos-07 pos-13)
        (moveTo pos-09 pos-04)
        (moveTo pos-09 pos-15)
        (moveTo pos-11 pos-06)
        (moveTo pos-11 pos-17)
        (moveTo pos-12 pos-13)
        (moveTo pos-13 pos-07)
        (moveTo pos-13 pos-12)
        (moveTo pos-13 pos-14)
        (moveTo pos-13 pos-19)
        (moveTo pos-14 pos-13)
        (moveTo pos-14 pos-15)
        (moveTo pos-15 pos-09)
        (moveTo pos-15 pos-14)
        (moveTo pos-15 pos-16)
        (moveTo pos-15 pos-21)
        (moveTo pos-16 pos-15)
        (moveTo pos-16 pos-17)
        (moveTo pos-17 pos-11)
        (moveTo pos-17 pos-16)
        (moveTo pos-17 pos-18)
        (moveTo pos-17 pos-23)
        (moveTo pos-18 pos-17)
        (moveTo pos-19 pos-13)
        (moveTo pos-19 pos-24)
        (moveTo pos-21 pos-15)
        (moveTo pos-21 pos-26)
        (moveTo pos-23 pos-17)
        (moveTo pos-23 pos-28)
        (moveTo pos-24 pos-19)
        (moveTo pos-24 pos-25)
        (moveTo pos-25 pos-24)
        (moveTo pos-25 pos-26)
        (moveTo pos-26 pos-21)
        (moveTo pos-26 pos-25)
        (moveTo pos-26 pos-27)
        (moveTo pos-26 pos-29)
        (moveTo pos-27 pos-26)
        (moveTo pos-27 pos-28)
        (moveTo pos-28 pos-23)
        (moveTo pos-28 pos-27)
        (moveTo pos-29 pos-26)
    )

    (:goal (and
        (at robot-01 pos-01)
        (at chem-03 pos-01) 
        (at chem-01 pos-29)
        (at chem-02 pos-29)               
    ))

)