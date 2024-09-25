package petstore.pets;

import com.intuit.karate.junit5.Karate;

public class PutPetRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:petstore/pets/PutPet.feature");
    }
}
