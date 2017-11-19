module SMR.Prim.Op where
import SMR.Prim.Op.Base
import SMR.Prim.Op.Bool
import SMR.Prim.Op.Nat
import SMR.Prim.Op.Sym
import SMR.Prim.Op.Nom
import SMR.Prim.Op.List
import SMR.Prim.Op.Match
import Data.Text                (Text)
import Data.Set                 (Set)
import qualified Data.Set       as Set


primEvals :: [PrimEval Text Prim w]
primEvals
 = concat
        [ primOpsBool
        , primOpsNat
        , primOpsList
        , primOpsSym
        , primOpsNom
        , primOpsMatch ]


primOpTextNames :: Set Text
primOpTextNames
 = Set.fromList [ n | PrimOp n <- map primEvalName $ primEvals ]