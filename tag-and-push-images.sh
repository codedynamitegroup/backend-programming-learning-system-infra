gcloud auth login

docker tag com.backend.programming.learning.system/auth.service:1.0-SNAPSHOT asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/auth.service:1.0-SNAPSHOT
docker tag com.backend.programming.learning.system/core.service:1.0-SNAPSHOT asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/core.service:1.0-SNAPSHOT
docker tag com.backend.programming.learning.system/course.service:1.0-SNAPSHOT asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/course.service:1.0-SNAPSHOT
docker tag com.backend.programming.learning.system/code.assessment.service:1.0-SNAPSHOT asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/code.assessment.service:1.0-SNAPSHOT

docker push asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/auth.service:1.0-SNAPSHOT
docker push asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/core.service:1.0-SNAPSHOT
docker push asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/course.service:1.0-SNAPSHOT
docker push asia-southeast1-docker.pkg.dev/programming-learning-system/backend-programming-learning-system-repository/code.assessment.service:1.0-SNAPSHOT

