(define (problem mixChemicals)
    (:domain dynamicTest)

    (:objects
        robot-01 - robot
        arm-01 - arm
        arm2-01 - arm2
        station-01 - mixStation
        station-02 - station
        chem-01 - chemical
        chem-02 - chemical
        chem-03 - mixedChemical
        pos-01 - location
        pos-02 - location
        pos-03 - location
        pos-04 - location
        pos-05 - location
        pos-06 - location
        pos-07 - location
        pos-08 - location
    )

    (:init
        (at robot-01 pos-01)        
        (at chem-01 pos-02)
        (at chem-02 pos-03)
        (moveTo pos-01 pos-05)
        (moveTo pos-02 pos-06)
        (moveTo pos-03 pos-07)
        (moveTo pos-04 pos-08)
        (moveTo pos-05 pos-01)
        (moveTo pos-06 pos-02)
        (moveTo pos-07 pos-03)
        (moveTo pos-08 pos-04)
        (moveTo pos-05 pos-06)
        (moveTo pos-05 pos-07)
        (moveTo pos-05 pos-08)
        (moveTo pos-06 pos-05)
        (moveTo pos-06 pos-07)
        (moveTo pos-06 pos-08)
        (moveTo pos-07 pos-05)
        (moveTo pos-07 pos-06)
        (moveTo pos-07 pos-08)
        (moveTo pos-08 pos-05)
        (moveTo pos-08 pos-06)
        (moveTo pos-08 pos-07)
        (arm-empty)
        (arm2-empty)
        (at station-01 pos-04)
        (at station-02 pos-01) 
    )

    (:goal 
        (and
            (at robot-01 pos-01)
            (at chem-03 pos-01)
            (at chem-01 pos-04)
            (at chem-02 pos-04)
        )
    )

)