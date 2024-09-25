package petstore.pets;

import com.intuit.karate.junit5.Karate;

public class GetPet_ConsultRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:petstore/pets/get_Pet_Consult.feature");
    }
}
