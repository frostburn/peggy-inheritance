Expression = AdditiveExpression

AdditiveExpression
  = left: Primary right: ("+" @Primary)? {
    if (right) {
      return {
        type: "AdditiveExpression",
        left,
        right,
      };
    }
    return left;
  }
