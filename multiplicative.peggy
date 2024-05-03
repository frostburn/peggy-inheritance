Expression = AdditiveExpression

AdditiveExpression
  = left: MultiplicativeExpression right: ("+" @MultiplicativeExpression)? {
    if (right) {
      return {
        type: "AdditiveExpression",
        left,
        right,
      };
    }
    return left;
  }

MultiplicativeExpression
  = left: Primary right: ("*" @Primary)? {
    if (right) {
      return {
        type: "MultiplicativeExpression",
        left,
        right,
      };
    }
    return left;
  }
