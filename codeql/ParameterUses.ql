/**
 * @name Variable-Uses
 * @description Find definitions of variables. Does not find definitions of parameters
 * @id py/variable-uses
 * @kind problem
 * @tags maintainability
 *       useless-code
 *       external/cwe/cwe-563
 * @problem.severity recommendation
 * @sub-severity high
 * @precision very-high
 * @id py/unused-local-variable
 */

import python

// from Definition def, LocalVariable v
from ParameterDefinition def, Name name, LocalVariable v // I think Name will capture every use of the variable, unlike LocalVariable v
where 
    (name.uses(v) or name.defines(v)) and def.getParameter().getVariable() = v
select name, "::BEGIN_LINE_INFORMATION:: VARIABLE_NAME:" + v + "; EXPR_LINE:" + name.getLocation() + "; DEF_LINE:" + def.getLocation() + ";::END_LINE_INFORMATION::" + "OTHER_INFO: Name: " + name + "; DEF: " + def  + "; END_OTHER_INFO"