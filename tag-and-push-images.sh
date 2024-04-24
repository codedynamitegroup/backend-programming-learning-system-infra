gcloud auth login

docker tag com.backend.programming.learning.system/auth.service:1.0-SNAPSHOT backendprogramminglearningsystemrepository.azurecr.io/auth.service:1.0-SNAPSHOT
docker tag com.backend.programming.learning.system/core.service:1.0-SNAPSHOT backendprogramminglearningsystemrepository.azurecr.io/core.service:1.0-SNAPSHOT
docker tag com.backend.programming.learning.system/course.service:1.0-SNAPSHOT backendprogramminglearningsystemrepository.azurecr.io/course.service:1.0-SNAPSHOT
docker tag com.backend.programming.learning.system/code.assessment.service:1.0-SNAPSHOT backendprogramminglearningsystemrepository.azurecr.io/code.assessment.service:1.0-SNAPSHOT

docker push backendprogramminglearningsystemrepository.azurecr.io/auth.service:1.0-SNAPSHOT
docker push backendprogramminglearningsystemrepository.azurecr.io/core.service:1.0-SNAPSHOT
docker push backendprogramminglearningsystemrepository.azurecr.io/course.service:1.0-SNAPSHOT
docker push backendprogramminglearningsystemrepository.azurecr.io/code.assessment.service:1.0-SNAPSHOT

