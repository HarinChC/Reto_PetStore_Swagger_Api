package petstore.pets;

import com.intuit.karate.junit5.Karate;

public class PostPetRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:petstore/pets/postPet.feature");
    }
}
