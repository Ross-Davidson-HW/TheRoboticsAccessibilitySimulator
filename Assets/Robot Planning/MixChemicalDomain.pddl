(define (domain CHEMLAB)
    (:requirements :strips :typing)
    (:types 
        
        thing location - object          
        robot interactable station - thing
        chemical mixedChemical - interactable    
    )
    

    (:predicates (at ?t - thing ?l - location)
                 (carry ?r - robot ?i - interactable)
                 (moveTo ?f ?t - location) 
    )

    ; move robot
    ; requires robot to be at a location, and moving to another location
    (:action moveRobot
        :parameters   (?r - robot ?f ?t - location)
        :precondition (and  (at ?r ?f)
                            (moveTo ?f ?t)                           
                      )                     
        :effect       (and  (not (at ?r ?f))                            
                            (at ?r ?t)                            
                      )
            
    )

    ; mixes the two chemicals together
    ; requires robot to be at the mixing station, with two chemicals
    (:action mixChemical
        :parameters (?r - robot ?c1 ?c2 - chemical ?c3 - mixedChemical ?s - station ?l - location)
        :precondition (and  (at ?r ?l)
                            (carry ?r ?c1)
                            (carry ?r ?c2)
                            (at ?s ?l)             
        )
        :effect (and (at ?c3 ?l)
                     (at ?c1 ?l)
                     (at ?c2 ?l)
                     (not (carry ?r ?c1))
                     (not (carry ?r ?c2))
        )
    )

    ; collects a chemical
    ; requires robot to be at the location of a chemical
    (:action collectChemical
        :parameters (?r - robot ?c - interactable ?l - location)
        :precondition (and  (at ?r ?l)
                            (at ?c ?l)
                      )
        :effect (and (carry ?r ?c)
                     (not (at ?c ?l))
                )
    ) 

    ; delivers the mixed chemical
    ; requires robot to be at delivery station
    (:action deliverChemical
        :parameters (?r - robot ?c - mixedChemical ?l - location ?s - station)
        :precondition (and  (at ?r ?l)
                            (carry ?r ?c)
                            (at ?s ?l)            
        )
        :effect (and (not (carry ?r ?c))
                     (at ?c ?l)            
        )
    )
)