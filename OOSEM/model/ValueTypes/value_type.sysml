package ValueTypes {
    import ScalarValues::Real;
    attribute def Dollar :> Real {
        /*
         * Dollar may be defined as a subtype of Price to enable currency exchange.
         * Defined as Real for simplicity.
         */
    }
}