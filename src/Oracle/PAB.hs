{-# LANGUAGE DeriveAnyClass     #-}
{-# LANGUAGE DeriveGeneric      #-}

module Oracle.PAB
    ( OracleContracts (..)
    ) where

import           Data.Aeson                (FromJSON, ToJSON)
import           Data.Text.Prettyprint.Doc (Pretty (..), viaShow)
import           GHC.Generics              (Generic)
import           Ledger

import qualified Oracle.Core        as Oracle

data OracleContracts = Init | Oracle CurrencySymbol
    deriving (Eq, Ord, Show, Generic, FromJSON, ToJSON)
-- | Swap Oracle.Oracle

instance Pretty OracleContracts where
    pretty = viaShow