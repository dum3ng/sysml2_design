package ExampleRequirements {
    requirement def 'Functional and Performance' {}

    requirement 'Payload Sensor Specification' {
        doc /* */
        requirement functionalAndPerformance : 'Functional and Performance' {
            requirement <'80.3.1'> Sensing {
                doc /*
                     * The sensor should sense thermal emissions with a sensitivity 
                     * less than TBD, and a resolution of less than 3 millirandians.
                     */
            }
        }
    }

    requirement 'Spacecraft Specification' {
        requirement functionalAndPerformance : 'Functional and Performance' {
            requirement 'Probability of Detection';
        }
    }
}