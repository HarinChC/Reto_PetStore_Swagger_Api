package petstore.pets;

import com.intuit.karate.junit5.Karate;

public class DeletePetRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:petstore/pets/DeletePet.feature");
    }
}
