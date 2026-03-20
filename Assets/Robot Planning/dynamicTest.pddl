(define (domain dynamicTest)
    (:requirements :strips :typing :negative-preconditions)


    (:types 
        thing location - object
        robot grip interactable station mixStation - thing
        mixedChemical chemical - interactable
        arm arm2 - grip                
    )


    (:predicates  
                  (at ?t - thing ?l - location)                  
                  (moveTo ?f ?t - location)
                  (carry ?a - arm ?c - chemical)
                  (carry2 ?a - arm2 ?c - chemical)
                  (twoHandCarry ?a - arm ?a2 - arm2 ?c - mixedChemical)
                  (arm-empty)
                  (arm2-empty)                    
    )


    ;; move robot between locations
    (:action moveRobot
        :parameters   (?r - robot ?f ?t - location)
        :precondition (and  (at ?r ?f)                            
                            (moveTo ?f ?t)                           
                      )                     
        :effect       (and  (not (at ?r ?f))                                                                                   
                            (at ?r ?t)                                                       
                      )            
    )

    ;; pick up chemical with arm1
    (:action pickUp
        :parameters (?r - robot ?a - arm ?c - chemical ?l - location)
        :precondition (and  (at ?r ?l)
                            (at ?c ?l)
                            (arm-empty)                                                                
        )
        :effect (and  (not (at ?c ?l))
                      (not (arm-empty))
                      (carry ?a ?c)        
        )
    )
    ;; pick up chemical with arm2
    (:action pickUp2
        :parameters (?r - robot ?a - arm2 ?c - chemical ?l - location)
        :precondition (and  (at ?r ?l)
                            (at ?c ?l)
                            (arm2-empty)                                                                
        )
        :effect (and  (not (at ?c ?l))
                      (not (arm2-empty))
                      (carry2 ?a ?c)        
        )
    )

    ;; put chemical down from arm1
    (:action drop     
        :parameters (?r - robot ?a - arm ?c - chemical ?l - location)
        :precondition (and  (at ?r ?l)
                            (not (arm-empty))
                            (carry ?a ?c)           
        )
        :effect (and  (not (carry ?a ?c))
                      (arm-empty)
                      (at ?c ?l)
        )    
    )

    ;; put chemical down from arm2
    (:action drop2     
        :parameters (?r - robot ?a - arm2 ?c - chemical ?l - location)
        :precondition (and  (at ?r ?l)
                            (not (arm2-empty))
                            (carry2 ?a ?c)           
        )
        :effect (and  (not (carry2 ?a ?c))
                      (arm2-empty)
                      (at ?c ?l)
        )    
    )

    ;; mix two chemicals together
    (:action mixChemical
        :parameters (?r - robot ?a - arm ?a2 - arm2 ?c1 ?c2 - chemical ?c3 - mixedChemical ?l - location ?s - mixStation)
        :precondition (and  (at ?r ?l)
                            (at ?s ?l)
                            (carry ?a ?c1)
                            (carry2 ?a2 ?c2)                            
        )
        :effect (and  (not (carry ?a ?c1))
                      (not (carry2 ?a2 ?c2))
                      (at ?c1 ?l)
                      (at ?c2 ?l)
                      (at ?c3 ?l)
                      (arm-empty)      
                      (arm2-empty)                
        )    
    )

    ;; pick up mixed chemical with two arms
    (:action pickUpMixed
        :parameters (?r - robot ?a - arm ?a2 - arm2 ?c - mixedChemical ?l - location ?s - mixStation)
        :precondition (and  (arm-empty)
                            (arm2-empty)
                            (at ?r ?l)
                            (at ?s ?l)
                            (at ?c ?l)                            
        )
        :effect (and (twoHandCarry ?a ?a2 ?c)
                     (not (at ?c ?l))
                     (not (arm-empty))
                     (not (arm2-empty))                     
        )
    )

    ;; drop mixed chemical with two arms
    (:action dropMixed
        :parameters (?r - robot ?a - arm ?a2 - arm2 ?c - mixedChemical ?l - location ?s - station)
        :precondition (and  (at ?r ?l)
                            (at ?s ?l)
                            (twoHandCarry ?a ?a2 ?c)                            
        )
        :effect (and  (not (twoHandCarry ?a ?a2 ?c))
                      (arm-empty)
                      (arm2-empty)
                      (at ?c ?l)
        )    
    )

)