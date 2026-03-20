(define (problem moveBetweenNodes)
    (:domain dynamicTest)

    (:objects
        robot-01 - robot
        arm-01 - arm
        chem-01 - chemical
        pos-01 - location
        pos-02 - location
    )

    (:init
        (at robot-01 pos-01)        
        (at chem-01 pos-02)
        (arm-empty)
        (moveTo pos-01 pos-02)
        (moveTo pos-02 pos-01)
    )

    (:goal 
        (and
            (at robot-01 pos-01)
            (at chem-01 pos-01)
        )
    )

)