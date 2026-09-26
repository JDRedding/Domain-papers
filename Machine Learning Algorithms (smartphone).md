# Machine Learning Algorithms
## Nine Foundations

These core methods power everyday smartphone features such as predictive text, app suggestions, and personalized recommendations.

**Linear Regression**  

$$\hat{y} = \beta_0 + \beta_1 x$$

**Logistic Regression** 

$$P(y=1 \mid x) = \frac{1}{1 + e^{-z}}$$

**Decision Tree**

$$x_j \leq t$$

**SVM**  

$$\min_{w,\xi} \frac{1}{2}\|w\|^2 + C \sum_i \xi_i$$

**KNN**  

$$\hat{y} = \mathrm{majority}(y_{(1)}, \ldots, y_{(k)})$$

**Dimensionality Reduction**  

$$z = Wx$$

**Random Forest**  

$$\hat{y} = \frac{1}{N} \sum_{i=1}^{N} h_i(x)$$

**K-means**  

$$\min \sum_{i=1}^{n} \|x_i - \mu_{c_i}\|^2$$

**Naive Bayes**  

$$P(y \mid x) \propto P(x \mid y)\, P(y)$$

## Notes:
- inline \(...\) formulas
- the SVM objective slightly more standard by showing the variables being minimized.
- KNN explicit: prediction, majority label among the k nearest neighbors.
- K-means: the sum is over the $n$ points, not over the $k$ clusters.
