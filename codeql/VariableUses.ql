/**
 * @name Variable-Uses
 * @description Find definitions of non-parameter variables
 * @id py/variable-uses
 * @kind problem
 * @tags maintainability
 *       useless-code
 *       external/cwe/cwe-563
 * @problem.severity recommendation
 * @sub-severity high
 * @precision medium
 * @id py/variable-uses
 */

import python
import Definition

// from Definition def, LocalVariable v
from Definition def, Name name, LocalVariable v // I think Name will capture every use of the variable, unlike LocalVariable v
where 
    (name.uses(v) or name.defines(v)) and def.defines(v)
select name, "::BEGIN_LINE_INFORMATION:: VARIABLE_NAME:" + v + "; EXPR_LINE:" + name.getLocation() + "; DEF_LINE:" + def.getLocation() + ";::END_LINE_INFORMATION::" + "OTHER_INFO: Name: " + name + "; DEF: " + def  + "; END_OTHER_INFO"