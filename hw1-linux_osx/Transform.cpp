// Transform.cpp: implementation of the Transform class.


#include "Transform.h"

//Please implement the following functions:

mat3 cpm(const vec3& u) {
    return mat3(0, u.z, -u.y,
                -u.z, 0, u.x,
                u.y, -u.x, 0);
}

mat3 tensor_product(const vec3& v1, const vec3& v2)
{
    mat3 m(0);
    for (int col = 0; col < 3; ++col)
        for (int row = 0; row < 3; ++row)
            m[col][row] = v1[row] * v2[col];
    return m;
}

mat3 operator* (float k, const mat3& m)
{
    mat3 r(m);
    for (int col = 0; col < 3; ++col)
        for (int row = 0; row < 3; ++row)
            r[col][row] *= k;

    return r;
}

// Helper rotation function.  
mat3 Transform::rotate(const float degrees, const vec3& axis) {
    auto theta = degrees * pi / 180.0f;
    auto u = normalize(axis);

    return mat3(cos(theta)) + sin(theta) * cpm(u) + (1 - cos(theta)) * (tensor_product(u, u));
}

// Transforms the camera left around the "crystal ball" interface
void Transform::left(float degrees, vec3& eye, vec3& up) {
    mat3 R = rotate(degrees, up);
    eye = R * eye;
}

// Transforms the camera up around the "crystal ball" interface
void Transform::up(float degrees, vec3& eye, vec3& up) {
    vec3 right = glm::cross(eye, up);
    mat3 R = rotate(degrees, right);
    eye = R * eye;
}

// Your implementation of the glm::lookAt matrix
mat4 Transform::lookAt(vec3 eye, vec3 up) {
	// YOUR CODE FOR HW1 HERE

	// You will change this return call
	return mat4();
}

Transform::Transform()
{

}

Transform::~Transform()
{

}
