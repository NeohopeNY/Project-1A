SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1};
Point(2) = {1, 0, 0, 0.1};
Point(3) = {-1, 0, 0, 0.1};
Point(4) = {20, 0, 0, 1};
Point(5) = {-20, 0, 0, 1}:
//+
Circle(1) = {3, 1, 2};
Circle(2) = {2, 1, 3};
Circle(3) = {5, 1, 4};
Circle(4) = {4, 1, 5};
//+
Curve Loop(1) = {3, 4};
Curve Loop(2) = {1, 2};
Plane Surface(1) = {1, 2};
//+
Curve Loop(3) = {3, 4};
Curve Loop(4) = {1, 2};
Plane Surface(2) = {3, 4};
//+
Physical Curve("inner", 5) = {1, 2};
Physical Curve("outer", 6) = {3, 4};
Physical Surface("rock", 7) = {1};
