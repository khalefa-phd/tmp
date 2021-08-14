; ModuleID = 'bc/2243.23702.bc'
source_filename = "pg"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MemoryContextData = type { i32, i8, i8, i64, %struct.MemoryContextMethods*, %struct.MemoryContextData*, %struct.MemoryContextData*, %struct.MemoryContextData*, %struct.MemoryContextData*, i8*, i8*, %struct.MemoryContextCallback* }
%struct.MemoryContextMethods = type { i8* (%struct.MemoryContextData*, i64)*, void (%struct.MemoryContextData*, i8*)*, i8* (%struct.MemoryContextData*, i8*, i64)*, void (%struct.MemoryContextData*)*, void (%struct.MemoryContextData*)*, i64 (%struct.MemoryContextData*, i8*)*, i1 (%struct.MemoryContextData*)*, void (%struct.MemoryContextData*, void (%struct.MemoryContextData*, i8*, i8*, i1)*, i8*, %struct.MemoryContextCounters*, i1)* }
%struct.MemoryContextCounters = type { i64, i64, i64, i64 }
%struct.MemoryContextCallback = type { void (i8*)*, i8*, %struct.MemoryContextCallback* }
%struct.ExprState = type { i32, i8, i8, i64, %struct.TupleTableSlot*, %struct.ExprEvalStep*, i64 (%struct.ExprState*, %struct.ExprContext*, i8*)*, %struct.Expr*, i8*, i32, i32, %struct.PlanState*, %struct.ParamListInfoData*, i64*, i8*, i64*, i8* }
%struct.TupleTableSlot = type { i32, i16, i16, %struct.TupleTableSlotOps*, %struct.TupleDescData*, i64*, i8*, %struct.MemoryContextData*, %struct.ItemPointerData, i32 }
%struct.TupleTableSlotOps = type { i64, void (%struct.TupleTableSlot*)*, void (%struct.TupleTableSlot*)*, void (%struct.TupleTableSlot*)*, void (%struct.TupleTableSlot*, i32)*, i64 (%struct.TupleTableSlot*, i32, i8*)*, void (%struct.TupleTableSlot*)*, void (%struct.TupleTableSlot*, %struct.TupleTableSlot*)*, %struct.HeapTupleData* (%struct.TupleTableSlot*)*, %struct.MinimalTupleData* (%struct.TupleTableSlot*)*, %struct.HeapTupleData* (%struct.TupleTableSlot*)*, %struct.MinimalTupleData* (%struct.TupleTableSlot*)* }
%struct.HeapTupleData = type { i32, %struct.ItemPointerData, i32, %struct.HeapTupleHeaderData* }
%struct.HeapTupleHeaderData = type { %union.anon, %struct.ItemPointerData, i16, i16, i8, [0 x i8] }
%union.anon = type { %struct.HeapTupleFields }
%struct.HeapTupleFields = type { i32, i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.MinimalTupleData = type { i32, [6 x i8], i16, i16, i8, [0 x i8] }
%struct.TupleDescData = type { i32, i32, i32, i32, %struct.TupleConstr*, [0 x %struct.FormData_pg_attribute] }
%struct.TupleConstr = type { %struct.AttrDefault*, %struct.ConstrCheck*, %struct.AttrMissing*, i16, i16, i8, i8 }
%struct.AttrDefault = type { i16, i8* }
%struct.ConstrCheck = type { i8*, i8*, i8, i8 }
%struct.AttrMissing = type { i8, i64 }
%struct.FormData_pg_attribute = type { i32, %struct.nameData, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.nameData = type { [64 x i8] }
%struct.ItemPointerData = type { %struct.BlockIdData, i16 }
%struct.BlockIdData = type { i16, i16 }
%struct.ExprEvalStep = type { i64, i64*, i8*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.32 }
%struct.anon.32 = type { i8, i8, %struct.ScalarArrayOpExprHashTable*, %struct.FmgrInfo*, %struct.FunctionCallInfoBaseData*, i64 (%struct.FunctionCallInfoBaseData*)*, %struct.FmgrInfo*, %struct.FunctionCallInfoBaseData*, i64 (%struct.FunctionCallInfoBaseData*)* }
%struct.ScalarArrayOpExprHashTable = type { %struct.saophash_hash*, %struct.ExprEvalStep.452* }
%struct.saophash_hash = type { i64, i32, i32, i32, %struct.ScalarArrayOpExprHashEntry*, %struct.MemoryContextData*, i8* }
%struct.ScalarArrayOpExprHashEntry = type { i64, i32, i32 }
%struct.ExprEvalStep.452 = type { i64, i64*, i8*, %union.anon.1.451 }
%union.anon.1.451 = type { %struct.anon.32.450 }
%struct.anon.32.450 = type { i8, i8, %struct.ScalarArrayOpExprHashTable*, %struct.FmgrInfo.449*, %struct.FunctionCallInfoBaseData.448*, i64 (%struct.FunctionCallInfoBaseData.448*)*, %struct.FmgrInfo.449*, %struct.FunctionCallInfoBaseData.448*, i64 (%struct.FunctionCallInfoBaseData.448*)* }
%struct.FmgrInfo.449 = type { i64 (%struct.FunctionCallInfoBaseData.448*)*, i32, i16, i8, i8, i8, i8*, %struct.MemoryContextData*, %struct.Node* }
%struct.Node = type { i32 }
%struct.FunctionCallInfoBaseData.448 = type { %struct.FmgrInfo.449*, %struct.Node*, %struct.Node*, i32, i8, i16, [0 x %struct.NullableDatum] }
%struct.NullableDatum = type { i64, i8 }
%struct.FmgrInfo = type { {}*, i32, i16, i8, i8, i8, i8*, %struct.MemoryContextData*, %struct.Node* }
%struct.FunctionCallInfoBaseData = type { %struct.FmgrInfo*, %struct.Node*, %struct.Node*, i32, i8, i16, [0 x %struct.NullableDatum] }
%struct.Expr = type { i32 }
%struct.PlanState = type { i32, %struct.Plan*, %struct.EState*, %struct.TupleTableSlot* (%struct.PlanState*)*, %struct.TupleTableSlot* (%struct.PlanState*)*, %struct.Instrumentation*, %struct.WorkerInstrumentation*, %struct.SharedJitInstrumentation*, %struct.ExprState*, %struct.PlanState*, %struct.PlanState*, %struct.List*, %struct.List*, %struct.Bitmapset*, %struct.TupleDescData*, %struct.TupleTableSlot*, %struct.ExprContext*, %struct.ProjectionInfo*, i8, %struct.TupleDescData*, %struct.TupleTableSlotOps*, %struct.TupleTableSlotOps*, %struct.TupleTableSlotOps*, %struct.TupleTableSlotOps*, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Plan = type { i32, double, double, double, i32, i8, i8, i8, i32, %struct.List*, %struct.List*, %struct.Plan*, %struct.Plan*, %struct.List*, %struct.Bitmapset*, %struct.Bitmapset* }
%struct.EState = type { i32, i32, %struct.SnapshotData*, %struct.SnapshotData*, %struct.List*, i32, %struct.RelationData**, %struct.ExecRowMark**, %struct.PlannedStmt*, i8*, %struct.JunkFilter*, i32, %struct.ResultRelInfo**, %struct.List*, %struct.PartitionDirectoryData*, %struct.List*, %struct.List*, %struct.ParamListInfoData*, %struct.ParamExecData*, %struct.QueryEnvironment*, %struct.MemoryContextData*, %struct.List*, i64, i32, i32, i8, %struct.List*, %struct.List*, %struct.List*, %struct.ExprContext*, %struct.EPQState*, i8, %struct.dsa_area*, i32, %struct.JitContext*, %struct.JitInstrumentation* }
%struct.SnapshotData = type { i32, i32, i32, i32*, i32, i32*, i32, i8, i8, i8, i32, i32, %struct.GlobalVisState*, i32, i32, %struct.pairingheap_node, i64, i64, i64 }
%struct.GlobalVisState = type opaque
%struct.pairingheap_node = type { %struct.pairingheap_node*, %struct.pairingheap_node*, %struct.pairingheap_node* }
%struct.RelationData = type { %struct.RelFileNode, %struct.SMgrRelationData*, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.FormData_pg_class*, %struct.TupleDescData*, i32, %struct.LockInfoData, %struct.RuleLock*, %struct.MemoryContextData*, %struct.TriggerDesc*, %struct.RowSecurityDesc*, %struct.List*, i8, %struct.PartitionKeyData*, %struct.MemoryContextData*, %struct.PartitionDescData*, %struct.MemoryContextData*, %struct.PartitionDescData*, %struct.MemoryContextData*, i32, %struct.List*, i8, %struct.MemoryContextData*, %struct.List*, i32, i32, %struct.List*, %struct.Bitmapset*, %struct.Bitmapset*, %struct.Bitmapset*, %struct.Bitmapset*, %struct.PublicationActions*, %struct.varlena.267*, i32, %struct.TableAmRoutine*, %struct.FormData_pg_index*, %struct.HeapTupleData*, %struct.MemoryContextData*, %struct.IndexAmRoutine*, i32*, i32*, i32*, %struct.FmgrInfo.309*, i16*, %struct.List*, %struct.List*, i32*, i32*, i16*, i32*, %struct.varlena.267**, i8*, %struct.FdwRoutine*, i32, %struct.PgStat_TableStatus* }
%struct.RelFileNode = type { i32, i32, i32 }
%struct.SMgrRelationData = type opaque
%struct.FormData_pg_class = type { i32, %struct.nameData, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.LockInfoData = type { %struct.LockRelId }
%struct.LockRelId = type { i32, i32 }
%struct.RuleLock = type { i32, %struct.RewriteRule** }
%struct.RewriteRule = type { i32, i32, %union.anon.0*, %struct.List*, i8, i8 }
%struct.TriggerDesc = type { %struct.Trigger*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Trigger = type { i32, i8*, i32, i16, i8, i8, i8, i32, i32, i32, i8, i8, i16, i16, i16*, i8**, i8*, i8*, i8* }
%struct.RowSecurityDesc = type opaque
%struct.PartitionKeyData = type opaque
%struct.PartitionDescData = type opaque
%struct.PublicationActions = type { i8, i8, i8, i8 }
%struct.varlena.267 = type { [4 x i8], [0 x i8] }
%struct.TableAmRoutine = type { i32, %struct.TupleTableSlotOps* (%struct.RelationData*)*, %struct.TableScanDescData* (%struct.RelationData*, %struct.SnapshotData*, i32, %struct.ScanKeyData*, %struct.ParallelTableScanDescData*, i32)*, void (%struct.TableScanDescData*)*, void (%struct.TableScanDescData*, %struct.ScanKeyData*, i1, i1, i1, i1)*, i1 (%struct.TableScanDescData*, i32, %struct.TupleTableSlot*)*, void (%struct.TableScanDescData*, %struct.ItemPointerData*, %struct.ItemPointerData*)*, i1 (%struct.TableScanDescData*, i32, %struct.TupleTableSlot*)*, i64 (%struct.RelationData*)*, i64 (%struct.RelationData*, %struct.ParallelTableScanDescData*)*, void (%struct.RelationData*, %struct.ParallelTableScanDescData*)*, %struct.IndexFetchTableData* (%struct.RelationData*)*, void (%struct.IndexFetchTableData*)*, void (%struct.IndexFetchTableData*)*, i1 (%struct.IndexFetchTableData*, %struct.ItemPointerData*, %struct.SnapshotData*, %struct.TupleTableSlot*, i8*, i8*)*, i1 (%struct.RelationData*, %struct.ItemPointerData*, %struct.SnapshotData*, %struct.TupleTableSlot*)*, i1 (%struct.TableScanDescData*, %struct.ItemPointerData*)*, void (%struct.TableScanDescData*, %struct.ItemPointerData*)*, i1 (%struct.RelationData*, %struct.TupleTableSlot*, %struct.SnapshotData*)*, i32 (%struct.RelationData*, %struct.TM_IndexDeleteOp*)*, void (%struct.RelationData*, %struct.TupleTableSlot*, i32, i32, %struct.BulkInsertStateData*)*, void (%struct.RelationData*, %struct.TupleTableSlot*, i32, i32, %struct.BulkInsertStateData*, i32)*, void (%struct.RelationData*, %struct.TupleTableSlot*, i32, i1)*, void (%struct.RelationData*, %struct.TupleTableSlot**, i32, i32, i32, %struct.BulkInsertStateData*)*, i32 (%struct.RelationData*, %struct.ItemPointerData*, i32, %struct.SnapshotData*, %struct.SnapshotData*, i1, %struct.TM_FailureData*, i1)*, i32 (%struct.RelationData*, %struct.ItemPointerData*, %struct.TupleTableSlot*, i32, %struct.SnapshotData*, %struct.SnapshotData*, i1, %struct.TM_FailureData*, i32*, i8*)*, i32 (%struct.RelationData*, %struct.ItemPointerData*, %struct.SnapshotData*, %struct.TupleTableSlot*, i32, i32, i32, i8, %struct.TM_FailureData*)*, void (%struct.RelationData*, i32)*, void (%struct.RelationData*, %struct.RelFileNode*, i8, i32*, i32*)*, void (%struct.RelationData*)*, void (%struct.RelationData*, %struct.RelFileNode*)*, void (%struct.RelationData*, %struct.RelationData*, %struct.RelationData*, i1, i32, i32*, i32*, double*, double*, double*)*, void (%struct.RelationData*, %struct.VacuumParams*, %struct.BufferAccessStrategyData*)*, i1 (%struct.TableScanDescData*, i32, %struct.BufferAccessStrategyData*)*, i1 (%struct.TableScanDescData*, i32, double*, double*, %struct.TupleTableSlot*)*, double (%struct.RelationData*, %struct.RelationData*, %struct.IndexInfo*, i1, i1, i1, i32, i32, void (%struct.RelationData*, %struct.ItemPointerData*, i64*, i8*, i1, i8*)*, i8*, %struct.TableScanDescData*)*, void (%struct.RelationData*, %struct.RelationData*, %struct.IndexInfo*, %struct.SnapshotData*, %struct.ValidateIndexState*)*, i64 (%struct.RelationData*, i32)*, i1 (%struct.RelationData*)*, i32 (%struct.RelationData*)*, void (%struct.RelationData*, i32, i32, i32, i32, %struct.varlena.267*)*, void (%struct.RelationData*, i32*, i32*, double*, double*)*, i1 (%struct.TableScanDescData*, %struct.TBMIterateResult*)*, i1 (%struct.TableScanDescData*, %struct.TBMIterateResult*, %struct.TupleTableSlot*)*, i1 (%struct.TableScanDescData*, %struct.SampleScanState*)*, i1 (%struct.TableScanDescData*, %struct.SampleScanState*, %struct.TupleTableSlot*)* }
%struct.TableScanDescData = type { %struct.RelationData*, %struct.SnapshotData*, i32, %struct.ScanKeyData*, %struct.ItemPointerData, %struct.ItemPointerData, i32, %struct.ParallelTableScanDescData* }
%struct.ScanKeyData = type opaque
%struct.ParallelTableScanDescData = type { i32, i8, i8, i64 }
%struct.IndexFetchTableData = type { %struct.RelationData* }
%struct.TM_IndexDeleteOp = type { i8, i32, i32, %struct.TM_IndexDelete*, %struct.TM_IndexStatus* }
%struct.TM_IndexDelete = type { %struct.ItemPointerData, i16 }
%struct.TM_IndexStatus = type { i16, i8, i8, i16 }
%struct.BulkInsertStateData = type opaque
%struct.TM_FailureData = type { %struct.ItemPointerData, i32, i32, i8 }
%struct.VacuumParams = type opaque
%struct.BufferAccessStrategyData = type opaque
%struct.IndexInfo = type { i32, i32, i32, [32 x i16], %struct.List*, %struct.List*, %struct.List*, %struct.ExprState*, i32*, i32*, i16*, i32*, i32*, i16*, i64*, i8, i8, i8, i8, i32, i32, i8*, %struct.MemoryContextData* }
%struct.ValidateIndexState = type opaque
%struct.TBMIterateResult = type opaque
%struct.SampleScanState = type opaque
%struct.FormData_pg_index = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.int2vector }
%struct.int2vector = type { i32, i32, i32, i32, i32, i32, [0 x i16] }
%struct.IndexAmRoutine = type opaque
%struct.FmgrInfo.309 = type { i64 (%struct.FunctionCallInfoBaseData.308*)*, i32, i16, i8, i8, i8, i8*, %struct.MemoryContextData*, %union.anon.0* }
%struct.FunctionCallInfoBaseData.308 = type { %struct.FmgrInfo.309*, %union.anon.0*, %union.anon.0*, i32, i8, i16, [0 x %struct.NullableDatum] }
%struct.FdwRoutine = type opaque
%struct.PgStat_TableStatus = type opaque
%struct.ExecRowMark = type { %struct.RelationData*, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ItemPointerData, i8* }
%struct.PlannedStmt = type { i32, i32, i64, i8, i8, i8, i8, i8, i8, i32, %struct.Plan*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.Bitmapset*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.Node*, i32, i32 }
%struct.JunkFilter = type { i32, %struct.List*, %struct.TupleDescData*, i16*, %struct.TupleTableSlot* }
%struct.ResultRelInfo = type { i32, i32, %struct.RelationData*, i32, %struct.RelationData**, %struct.IndexInfo**, i16, %struct.ProjectionInfo*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, i8, %struct.TriggerDesc*, %struct.FmgrInfo*, %struct.ExprState**, %struct.Instrumentation*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.FdwRoutine*, i8*, i8, i32, i32, i32, %struct.TupleTableSlot**, %struct.TupleTableSlot**, %struct.List*, %struct.List*, %struct.ExprState**, %struct.ExprState**, i32, %struct.List*, %struct.ProjectionInfo*, %struct.List*, %struct.OnConflictSetState*, %struct.ExprState*, %struct.ResultRelInfo*, %struct.TupleConversionMap*, %struct.TupleTableSlot*, %struct.TupleConversionMap*, i8, %struct.CopyMultiInsertBuffer* }
%struct.OnConflictSetState = type { i32, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.ProjectionInfo*, %struct.ExprState* }
%struct.TupleConversionMap = type { %struct.TupleDescData*, %struct.TupleDescData*, %struct.AttrMap*, i64*, i8*, i64*, i8* }
%struct.AttrMap = type { i16*, i32 }
%struct.CopyMultiInsertBuffer = type opaque
%struct.PartitionDirectoryData = type opaque
%struct.ParamExecData = type { i8*, i64, i8 }
%struct.QueryEnvironment = type opaque
%struct.EPQState = type { %struct.EState*, i32, %struct.List*, %struct.TupleTableSlot**, %struct.Plan*, %struct.List*, %struct.TupleTableSlot*, %struct.EState*, %struct.ExecAuxRowMark**, i8*, %struct.PlanState* }
%struct.ExecAuxRowMark = type { %struct.ExecRowMark*, i16, i16, i16 }
%struct.dsa_area = type opaque
%struct.JitContext = type opaque
%struct.JitInstrumentation = type opaque
%struct.Instrumentation = type { i8, i8, i8, i8, i8, %struct.timespec, %struct.timespec, double, double, %struct.BufferUsage, %struct.WalUsage, double, double, double, double, double, double, double, %struct.BufferUsage, %struct.WalUsage }
%struct.timespec = type { i64, i64 }
%struct.BufferUsage = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.timespec, %struct.timespec }
%struct.WalUsage = type { i64, i64, i64 }
%struct.WorkerInstrumentation = type { i32, [0 x %struct.Instrumentation] }
%struct.SharedJitInstrumentation = type opaque
%struct.List = type { i32, i32, i32, %union.ListCell*, [0 x %union.ListCell] }
%union.ListCell = type { i8* }
%struct.Bitmapset = type { i32, [0 x i64] }
%struct.ProjectionInfo = type { i32, %struct.ExprState, %struct.ExprContext* }
%struct.ParamListInfoData = type { %struct.ParamExternData* (%struct.ParamListInfoData*, i32, i1, %struct.ParamExternData*)*, i8*, void (%struct.ParamListInfoData*, %struct.Param*, %struct.ExprState*, i64*, i8*)*, i8*, void (%struct.ParseState*, i8*)*, i8*, i8*, i32, [0 x %struct.ParamExternData] }
%struct.ParamExternData = type { i64, i8, i16, i32 }
%struct.Param = type { %struct.Expr, i32, i32, i32, i32, i32, i32 }
%struct.ParseState = type { %struct.ParseState*, i8*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, i8, %struct.List*, %struct.List*, %struct.CommonTableExpr*, %struct.RelationData*, %struct.ParseNamespaceItem*, i8, %struct.List*, i32, i32, %struct.List*, %struct.List*, i8, i8, %struct.QueryEnvironment*, i8, i8, i8, i8, i8, %struct.Node*, %struct.Node* (%struct.ParseState*, %struct.ColumnRef*)*, %struct.Node* (%struct.ParseState*, %struct.ColumnRef*, %struct.Node*)*, %struct.Node* (%struct.ParseState*, %struct.RelFileNode*)*, %struct.Node* (%struct.ParseState*, %struct.Param*, i32, i32, i32)*, i8* }
%struct.CommonTableExpr = type { i32, i8*, %struct.List*, i32, %struct.Node*, %struct.CTESearchClause*, %struct.CTECycleClause*, i32, i8, i32, %struct.List*, %struct.List*, %struct.List*, %struct.List* }
%struct.CTESearchClause = type { i32, %struct.List*, i8, i8*, i32 }
%struct.CTECycleClause = type { i32, %struct.List*, i8*, %struct.Node*, %struct.Node*, i8*, i32, i32, i32, i32, i32 }
%struct.ParseNamespaceItem = type { %struct.Alias*, %struct.RangeTblEntry*, i32, %struct.ParseNamespaceColumn*, i8, i8, i8, i8 }
%struct.Alias = type { i32, i8*, %struct.List* }
%struct.RangeTblEntry = type { i32, i32, i32, i8, i32, %struct.TableSampleClause*, %struct.Query*, i8, i32, i32, %struct.List*, %struct.List*, %struct.List*, %struct.Alias*, %struct.List*, i8, %struct.TableFunc*, %struct.List*, i8*, i32, i8, %struct.List*, %struct.List*, %struct.List*, i8*, double, %struct.Alias*, %struct.Alias*, i8, i8, i8, i32, i32, %struct.Bitmapset*, %struct.Bitmapset*, %struct.Bitmapset*, %struct.Bitmapset*, %struct.List* }
%struct.TableSampleClause = type { i32, i32, %struct.List*, %struct.Expr* }
%struct.Query = type { i32, i32, i32, i64, i8, %struct.Node*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.List*, %struct.List*, %struct.FromExpr*, %struct.List*, i32, %struct.OnConflictExpr*, %struct.List*, %struct.List*, i8, %struct.List*, %struct.Node*, %struct.List*, %struct.List*, %struct.List*, %struct.Node*, %struct.Node*, i32, %struct.List*, %struct.Node*, %struct.List*, %struct.List*, i32, i32 }
%struct.FromExpr = type { i32, %struct.List*, %struct.Node* }
%struct.OnConflictExpr = type { i32, i32, %struct.List*, %struct.Node*, i32, %struct.List*, %struct.Node*, i32, %struct.List* }
%struct.TableFunc = type { i32, %struct.List*, %struct.List*, %struct.Node*, %struct.Node*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.Bitmapset*, i32, i32 }
%struct.ParseNamespaceColumn = type { i32, i16, i32, i32, i32, i32, i16, i8 }
%struct.ColumnRef = type { i32, %struct.List*, i32 }
%struct.ExprContext = type { i32, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.MemoryContextData*, %struct.MemoryContextData*, %struct.ParamExecData*, %struct.ParamListInfoData*, i64*, i8*, i64, i8, i64, i8, %struct.EState*, %struct.ExprContext_CB* }
%struct.ExprContext_CB = type { %struct.ExprContext_CB*, void (i64)*, i64 }
%struct.HeapTupleTableSlot = type { %struct.TupleTableSlot, %struct.HeapTupleData*, i32, %struct.HeapTupleData }
%struct.MinimalTupleTableSlot = type { %struct.TupleTableSlot, %struct.HeapTupleData*, %struct.MinimalTupleData*, %struct.HeapTupleData, i32 }
%struct.AggState = type { %struct.ScanState, %struct.List*, i32, i32, i32, i32, %struct.AggStatePerPhaseData*, i32, i32, %struct.AggStatePerAggData*, %struct.AggStatePerTransData*, %struct.ExprContext*, %struct.ExprContext**, %struct.ExprContext*, %struct.ExprContext*, %struct.AggStatePerAggData*, %struct.AggStatePerTransData*, i8, i8, i32, i32, %struct.Bitmapset*, %struct.List*, %struct.Bitmapset*, i32, i8, i32, %struct.AggStatePerPhaseData*, %struct.Tuplesortstate*, %struct.Tuplesortstate*, %struct.TupleTableSlot*, %struct.AggStatePerGroupData**, %struct.HeapTupleData*, i8, i32, %struct.MemoryContextData*, %struct.HashTapeInfo*, %struct.HashAggSpill*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.List*, i8, i8, i64, i64, i32, double, i64, i64, i64, i32, %struct.AggStatePerHashData*, %struct.AggStatePerGroupData**, %struct.AggStatePerGroupData**, %struct.ProjectionInfo*, %struct.SharedAggInfo* }
%struct.ScanState = type { %struct.PlanState, %struct.RelationData*, %struct.TableScanDescData*, %struct.TupleTableSlot* }
%struct.AggStatePerAggData = type { %struct.Aggref*, i32, i32, %struct.FmgrInfo, i32, %struct.List*, i16, i8, i8 }
%struct.Aggref = type { %struct.Expr, i32, i32, i32, i32, i32, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.Expr*, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.AggStatePerTransData = type { %struct.Aggref*, i8, i32, i32, i32, i32, i32, i32, %struct.FmgrInfo, %struct.FmgrInfo, %struct.FmgrInfo, i32, i32, i32, i16*, i32*, i32*, i8*, %struct.FmgrInfo, %struct.ExprState*, i64, i8, i16, i16, i8, i8, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.TupleDescData*, %struct.Tuplesortstate**, %struct.FunctionCallInfoBaseData*, %struct.FunctionCallInfoBaseData*, %struct.FunctionCallInfoBaseData* }
%struct.AggStatePerPhaseData = type { i32, i32, i32*, %struct.Bitmapset**, %struct.ExprState**, %struct.Agg*, %struct.Sort*, %struct.ExprState*, [2 x [2 x %struct.ExprState*]] }
%struct.Agg = type { %struct.Plan, i32, i32, i32, i16*, i32*, i32*, i64, i64, %struct.Bitmapset*, %struct.List*, %struct.List* }
%struct.Sort = type { %struct.Plan, i32, i16*, i32*, i32*, i8* }
%struct.Tuplesortstate = type opaque
%struct.HashTapeInfo = type opaque
%struct.HashAggSpill = type opaque
%struct.AggStatePerHashData = type { %struct.TupleHashTableData*, %struct.tuplehash_iterator, %struct.TupleTableSlot*, %struct.FmgrInfo*, i32*, i32, i32, i32, i16*, i16*, %struct.Agg* }
%struct.TupleHashTableData = type { %struct.tuplehash_hash*, i32, i16*, %struct.FmgrInfo*, %struct.ExprState*, i32*, %struct.MemoryContextData*, %struct.MemoryContextData*, i64, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.FmgrInfo*, %struct.ExprState*, i32, %struct.ExprContext* }
%struct.tuplehash_hash = type { i64, i32, i32, i32, %struct.TupleHashEntryData*, %struct.MemoryContextData*, i8* }
%struct.TupleHashEntryData = type { %struct.MinimalTupleData*, i8*, i32, i32 }
%struct.tuplehash_iterator = type { i32, i32, i8 }
%struct.AggStatePerGroupData = type { i64, i8, i8 }
%struct.SharedAggInfo = type { i32, [0 x %struct.AggregateInstrumentation] }
%struct.AggregateInstrumentation = type { i64, i64, i32 }
%struct.ExpandedObjectHeader.10433683 = type { i32, %struct.ExpandedObjectMethods.10433678*, %struct.MemoryContextData*, [10 x i8], [10 x i8] }
%struct.ExpandedObjectMethods.10433678 = type { i64 (%struct.ExpandedObjectHeader.10433683*)*, void (%struct.ExpandedObjectHeader.10433683*, i8*, i64)* }
%struct.varattrib_1b_e.10433684 = type { i8, i8, [0 x i8] }
%struct.varattrib_1b.10433685 = type { i8, [0 x i8] }
%union.varattrib_4b.10433676 = type { %struct.anon.0.10433675 }
%struct.anon.0.10433675 = type { i32, i32, [0 x i8] }
%struct.anon.10433677 = type { i32, [0 x i8] }
%struct.TupleTableSlot.10433727 = type { i32, i16, i16, %struct.TupleTableSlotOps.10433715*, %struct.TupleDescData*, i64*, i8*, %struct.MemoryContextData*, %struct.ItemPointerData, i32 }
%struct.TupleTableSlotOps.10433715 = type { i64, {}*, {}*, {}*, void (%struct.TupleTableSlot.10433727*, i32)*, i64 (%struct.TupleTableSlot.10433727*, i32, i8*)*, {}*, void (%struct.TupleTableSlot.10433727*, %struct.TupleTableSlot.10433727*)*, %struct.HeapTupleData* (%struct.TupleTableSlot.10433727*)*, %struct.MinimalTupleData* (%struct.TupleTableSlot.10433727*)*, %struct.HeapTupleData* (%struct.TupleTableSlot.10433727*)*, %struct.MinimalTupleData* (%struct.TupleTableSlot.10433727*)* }

@CurrentMemoryContext = external global %struct.MemoryContextData*

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_23702_0(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
entry:
  %v.state.resvalue = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 3
  %v.state.resnull = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 11
  %v.state.parent = load %struct.PlanState*, %struct.PlanState** %3, align 8
  %4 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 1
  %v_scanslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %4, align 8
  %5 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 2
  %v_innerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %5, align 8
  %6 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 3
  %v_outerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %6, align 8
  %7 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 4
  %v_resultslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %7, align 8
  %8 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 5
  %v_scanvalues = load i64*, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 6
  %v_scannulls = load i8*, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 5
  %v_innervalues = load i64*, i64** %10, align 8
  %11 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 6
  %v_innernulls = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 5
  %v_outervalues = load i64*, i64** %12, align 8
  %13 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 6
  %v_outernulls = load i8*, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 5
  %v_resultvalues = load i64*, i64** %14, align 8
  %15 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 6
  %v_resultnulls = load i8*, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 8
  %v.econtext.aggvalues = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 9
  %v.econtext.aggnulls = load i8*, i8** %17, align 8
  br label %b.op.0.start

b.op.0.start:                                     ; preds = %entry
  %18 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = icmp uge i16 %19, 2
  br i1 %20, label %b.op.1.start, label %op.0.fetch

op.0.fetch:                                       ; preds = %b.op.0.start
  call void @deform_23702_1(%struct.TupleTableSlot* %v_scanslot)
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %op.0.fetch, %b.op.0.start
  %21 = getelementptr i64, i64* %v_scanvalues, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr i8, i8* %v_scannulls, i32 1
  %24 = load i8, i8* %23, align 1
  %25 = getelementptr i64, i64* %v_resultvalues, i32 0
  %26 = getelementptr i8, i8* %v_resultnulls, i32 0
  store i64 %22, i64* %25, align 8
  store i8 %24, i8* %26, align 1
  br label %b.op.2.start

b.op.2.start:                                     ; preds = %b.op.1.start
  %27 = load i64, i64* %v.state.resvalue, align 8
  %28 = load i8, i8* %v.state.resnull, align 1
  store i8 %28, i8* %2, align 1
  ret i64 %27
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define internal void @deform_23702_1(%struct.TupleTableSlot* nocapture align 8 %0) #0 {
entry:
  %v_offp = alloca i64, align 8
  %1 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 5
  %tts_values = load i64*, i64** %1, align 8
  %2 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 6
  %tts_ISNULL = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 2
  %heapslot = bitcast %struct.TupleTableSlot* %0 to %struct.HeapTupleTableSlot*
  %5 = getelementptr inbounds %struct.HeapTupleTableSlot, %struct.HeapTupleTableSlot* %heapslot, i32 0, i32 2
  %6 = getelementptr inbounds %struct.HeapTupleTableSlot, %struct.HeapTupleTableSlot* %heapslot, i32 0, i32 1
  %tupleheader = load %struct.HeapTupleData*, %struct.HeapTupleData** %6, align 8
  %7 = getelementptr inbounds %struct.HeapTupleData, %struct.HeapTupleData* %tupleheader, i32 0, i32 3
  %tuple = load %struct.HeapTupleHeaderData*, %struct.HeapTupleHeaderData** %7, align 8
  %8 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 5
  %t_bits = bitcast [0 x i8]* %8 to i8*
  %9 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 3
  %infomask1 = load i16, i16* %9, align 2
  %10 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 2
  %infomask2 = load i16, i16* %10, align 2
  %11 = and i16 1, %infomask1
  %hasnulls = icmp ne i16 %11, 0
  %maxatt = and i16 2047, %infomask2
  %12 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %t_hoff = zext i8 %13 to i32
  %14 = bitcast %struct.HeapTupleHeaderData* %tuple to i8*
  %v_tupdata_base = getelementptr i8, i8* %14, i32 %t_hoff
  %v_slot_off = load i32, i32* %5, align 4
  %15 = zext i32 %v_slot_off to i64
  store i64 %15, i64* %v_offp, align 8
  %16 = icmp ult i16 %maxatt, 2
  br i1 %16, label %adjust_unavail_cols, label %find_startblock

adjust_unavail_cols:                              ; preds = %entry
  %17 = zext i16 %maxatt to i32
  call void bitcast (void (%struct.TupleTableSlot.10433727*, i32, i32)* @slot_getmissingattrs to void (%struct.TupleTableSlot*, i32, i32)*)(%struct.TupleTableSlot* %0, i32 %17, i32 2)
  br label %find_startblock

find_startblock:                                  ; preds = %adjust_unavail_cols, %entry
  %18 = load i16, i16* %4, align 2
  switch i16 %18, label %deadblock [
    i16 0, label %block.attr.0.attcheckattno
    i16 1, label %block.attr.1.attcheckattno
  ]

outblock:                                         ; preds = %block.attr.1.store, %block.attr.1.attisnull, %block.attr.1.attcheckattno, %block.attr.0.attcheckattno
  %19 = load i64, i64* %v_offp, align 8
  store i16 2, i16* %4, align 2
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %tts_flags = load i16, i16* %3, align 2
  %21 = or i16 %tts_flags, 8
  store i16 %21, i16* %3, align 2
  ret void

deadblock:                                        ; preds = %find_startblock
  unreachable

block.attr.0.attcheckattno:                       ; preds = %find_startblock
  store i64 0, i64* %v_offp, align 8
  %heap_natts = icmp uge i16 0, %maxatt
  br i1 %heap_natts, label %outblock, label %block.attr.0.start

block.attr.0.start:                               ; preds = %block.attr.0.attcheckattno
  %22 = getelementptr i8, i8* %t_bits, i32 0
  %attnullbyte = load i8, i8* %22, align 1
  %23 = and i8 %attnullbyte, 1
  %attisnull = icmp eq i8 %23, 0
  %24 = and i1 %hasnulls, %attisnull
  br i1 %24, label %block.attr.0.attisnull, label %block.attr.0.attcheckalign

block.attr.0.attisnull:                           ; preds = %block.attr.0.start
  %25 = getelementptr i8, i8* %tts_ISNULL, i16 0
  store i8 1, i8* %25, align 1
  %26 = getelementptr i64, i64* %tts_values, i16 0
  store i64 0, i64* %26, align 8
  br label %block.attr.1.attcheckattno

block.attr.0.attcheckalign:                       ; preds = %block.attr.0.start
  br label %block.attr.0.align

block.attr.0.align:                               ; preds = %block.attr.0.attcheckalign
  br label %block.attr.0.store

block.attr.0.store:                               ; preds = %block.attr.0.align
  %27 = load i64, i64* %v_offp, align 8
  %28 = getelementptr i8, i8* %v_tupdata_base, i64 %27
  %29 = getelementptr i64, i64* %tts_values, i16 0
  %30 = getelementptr i8, i8* %tts_ISNULL, i16 0
  store i8 0, i8* %30, align 1
  %31 = bitcast i8* %28 to i32*
  %attr_byval = load i32, i32* %31, align 4
  %32 = zext i32 %attr_byval to i64
  store i64 %32, i64* %29, align 8
  %33 = load i64, i64* %v_offp, align 8
  %increment_offset = add i64 %33, 4
  store i64 %increment_offset, i64* %v_offp, align 8
  br label %block.attr.1.attcheckattno

block.attr.1.attcheckattno:                       ; preds = %block.attr.0.store, %block.attr.0.attisnull, %find_startblock
  %heap_natts1 = icmp uge i16 1, %maxatt
  br i1 %heap_natts1, label %outblock, label %block.attr.1.start

block.attr.1.start:                               ; preds = %block.attr.1.attcheckattno
  %34 = getelementptr i8, i8* %t_bits, i32 0
  %attnullbyte2 = load i8, i8* %34, align 1
  %35 = and i8 %attnullbyte2, 2
  %attisnull3 = icmp eq i8 %35, 0
  %36 = and i1 %hasnulls, %attisnull3
  br i1 %36, label %block.attr.1.attisnull, label %block.attr.1.attcheckalign

block.attr.1.attisnull:                           ; preds = %block.attr.1.start
  %37 = getelementptr i8, i8* %tts_ISNULL, i16 1
  store i8 1, i8* %37, align 1
  %38 = getelementptr i64, i64* %tts_values, i16 1
  store i64 0, i64* %38, align 8
  br label %outblock

block.attr.1.attcheckalign:                       ; preds = %block.attr.1.start
  %39 = load i64, i64* %v_offp, align 8
  %40 = getelementptr i8, i8* %v_tupdata_base, i64 %39
  %padbyte = load i8, i8* %40, align 1
  %ispadbyte = icmp eq i8 %padbyte, 0
  br i1 %ispadbyte, label %block.attr.1.align, label %block.attr.1.store

block.attr.1.align:                               ; preds = %block.attr.1.attcheckalign
  %41 = load i64, i64* %v_offp, align 8
  %42 = add i64 %41, 3
  %aligned_offset = and i64 %42, -4
  store i64 %aligned_offset, i64* %v_offp, align 8
  br label %block.attr.1.store

block.attr.1.store:                               ; preds = %block.attr.1.align, %block.attr.1.attcheckalign
  %43 = load i64, i64* %v_offp, align 8
  %44 = getelementptr i8, i8* %v_tupdata_base, i64 %43
  %45 = getelementptr i64, i64* %tts_values, i16 1
  %46 = getelementptr i8, i8* %tts_ISNULL, i16 1
  store i8 0, i8* %46, align 1
  %attr_ptr = ptrtoint i8* %44 to i64
  store i64 %attr_ptr, i64* %45, align 8
  %varsize_any = call i64 @varsize_any(i8* %44) #8
  %47 = load i64, i64* %v_offp, align 8
  %increment_offset4 = add i64 %47, %varsize_any
  store i64 %increment_offset4, i64* %v_offp, align 8
  br label %outblock
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_23702_2(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
entry:
  %v.state.resvalue = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 3
  %v.state.resnull = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 11
  %v.state.parent = load %struct.PlanState*, %struct.PlanState** %3, align 8
  %4 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 1
  %v_scanslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %4, align 8
  %5 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 2
  %v_innerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %5, align 8
  %6 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 3
  %v_outerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %6, align 8
  %7 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 4
  %v_resultslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %7, align 8
  %8 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 5
  %v_scanvalues = load i64*, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 6
  %v_scannulls = load i8*, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 5
  %v_innervalues = load i64*, i64** %10, align 8
  %11 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 6
  %v_innernulls = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 5
  %v_outervalues = load i64*, i64** %12, align 8
  %13 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 6
  %v_outernulls = load i8*, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 5
  %v_resultvalues = load i64*, i64** %14, align 8
  %15 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 6
  %v_resultnulls = load i8*, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 8
  %v.econtext.aggvalues = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 9
  %v.econtext.aggnulls = load i8*, i8** %17, align 8
  br label %b.op.0.start

b.op.0.start:                                     ; preds = %entry
  %18 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  %20 = icmp uge i16 %19, 1
  br i1 %20, label %b.op.1.start, label %op.0.fetch

op.0.fetch:                                       ; preds = %b.op.0.start
  call void @deform_23702_3(%struct.TupleTableSlot* %v_innerslot)
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %op.0.fetch, %b.op.0.start
  %21 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = icmp uge i16 %22, 2
  br i1 %23, label %b.op.2.start, label %op.1.fetch

op.1.fetch:                                       ; preds = %b.op.1.start
  call void @deform_23702_4(%struct.TupleTableSlot* %v_outerslot)
  br label %b.op.2.start

b.op.2.start:                                     ; preds = %op.1.fetch, %b.op.1.start
  store i64 0, i64* inttoptr (i64 93867754834624 to i64*), align 8
  store i8 1, i8* inttoptr (i64 93867754834621 to i8*), align 1
  br label %b.op.3.start

b.op.3.start:                                     ; preds = %b.op.2.start
  %24 = load i64, i64* %v.state.resvalue, align 8
  %25 = load i8, i8* %v.state.resnull, align 1
  %26 = getelementptr i64, i64* %v_resultvalues, i32 0
  %27 = getelementptr i8, i8* %v_resultnulls, i32 0
  store i8 %25, i8* %27, align 1
  %28 = icmp eq i8 %25, 0
  br i1 %28, label %op.3.assign_tmp.notnull, label %b.op.4.start

op.3.assign_tmp.notnull:                          ; preds = %b.op.3.start
  %29 = call i64 @MakeExpandedObjectReadOnlyInternal(i64 %24)
  store i64 %29, i64* %26, align 8
  br label %b.op.4.start

b.op.4.start:                                     ; preds = %op.3.assign_tmp.notnull, %b.op.3.start
  store i64 0, i64* inttoptr (i64 93867754834624 to i64*), align 8
  store i8 1, i8* inttoptr (i64 93867754834621 to i8*), align 1
  br label %b.op.5.start

b.op.5.start:                                     ; preds = %b.op.4.start
  %30 = load i64, i64* %v.state.resvalue, align 8
  %31 = load i8, i8* %v.state.resnull, align 1
  %32 = getelementptr i64, i64* %v_resultvalues, i32 1
  %33 = getelementptr i8, i8* %v_resultnulls, i32 1
  store i8 %31, i8* %33, align 1
  %34 = icmp eq i8 %31, 0
  br i1 %34, label %op.5.assign_tmp.notnull, label %b.op.6.start

op.5.assign_tmp.notnull:                          ; preds = %b.op.5.start
  %35 = call i64 @MakeExpandedObjectReadOnlyInternal(i64 %30)
  store i64 %35, i64* %32, align 8
  br label %b.op.6.start

b.op.6.start:                                     ; preds = %op.5.assign_tmp.notnull, %b.op.5.start
  %36 = getelementptr i64, i64* %v_outervalues, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr i8, i8* %v_outernulls, i32 1
  %39 = load i8, i8* %38, align 1
  store i64 %37, i64* inttoptr (i64 93867754836848 to i64*), align 8
  store i8 %39, i8* inttoptr (i64 93867754836856 to i8*), align 1
  br label %b.op.7.start

b.op.7.start:                                     ; preds = %b.op.6.start
  %40 = getelementptr i64, i64* %v_innervalues, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr i8, i8* %v_innernulls, i32 0
  %43 = load i8, i8* %42, align 1
  store i64 %41, i64* inttoptr (i64 93867754836864 to i64*), align 8
  store i8 %43, i8* inttoptr (i64 93867754836872 to i8*), align 1
  br label %b.op.8.start

b.op.8.start:                                     ; preds = %b.op.7.start
  %44 = getelementptr i64, i64* %v_outervalues, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr i8, i8* %v_outernulls, i32 1
  %47 = load i8, i8* %46, align 1
  store i64 %45, i64* inttoptr (i64 93867754837072 to i64*), align 8
  store i8 %47, i8* inttoptr (i64 93867754837080 to i8*), align 1
  br label %b.op.9.start

b.op.9.start:                                     ; preds = %b.op.8.start
  store i8 1, i8* inttoptr (i64 93867754836920 to i8*), align 1
  br label %b.9.isnull.0

b.9.isnull.0:                                     ; preds = %b.op.9.start
  %48 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837040 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %b.op.10.start, label %b.9.no-null-args

b.9.no-null-args:                                 ; preds = %b.9.isnull.0
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837040 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall = call i64 @textlen(%struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837040 to %struct.FunctionCallInfoBaseData*))
  %50 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837040 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* inttoptr (i64 93867754837072 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93867754837068 to i8*))
  store i64 %funccall, i64* inttoptr (i64 93867754836912 to i64*), align 8
  store i8 %50, i8* inttoptr (i64 93867754836920 to i8*), align 1
  br label %b.op.10.start

b.op.10.start:                                    ; preds = %b.9.no-null-args, %b.9.isnull.0
  %51 = getelementptr i64, i64* %v_innervalues, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr i8, i8* %v_innernulls, i32 0
  %54 = load i8, i8* %53, align 1
  store i64 %52, i64* inttoptr (i64 93867754837232 to i64*), align 8
  store i8 %54, i8* inttoptr (i64 93867754837240 to i8*), align 1
  br label %b.op.11.start

b.op.11.start:                                    ; preds = %b.op.10.start
  store i8 1, i8* inttoptr (i64 93867754836936 to i8*), align 1
  br label %b.11.isnull.0

b.11.isnull.0:                                    ; preds = %b.op.11.start
  %55 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837200 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %b.op.12.start, label %b.11.no-null-args

b.11.no-null-args:                                ; preds = %b.11.isnull.0
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837200 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall1 = call i64 @textlen(%struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837200 to %struct.FunctionCallInfoBaseData*))
  %57 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754837200 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* inttoptr (i64 93867754837232 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93867754837228 to i8*))
  store i64 %funccall1, i64* inttoptr (i64 93867754836928 to i64*), align 8
  store i8 %57, i8* inttoptr (i64 93867754836936 to i8*), align 1
  br label %b.op.12.start

b.op.12.start:                                    ; preds = %b.11.no-null-args, %b.11.isnull.0
  store i8 1, i8* inttoptr (i64 93867754834621 to i8*), align 1
  br label %b.12.isnull.0

b.12.isnull.0:                                    ; preds = %b.op.12.start
  %58 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  %59 = icmp eq i8 %58, 1
  br i1 %59, label %b.op.13.start, label %b.12.isnull.1

b.12.isnull.1:                                    ; preds = %b.12.isnull.0
  %60 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 1, i32 1), align 1
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %b.op.13.start, label %b.12.isnull.2

b.12.isnull.2:                                    ; preds = %b.12.isnull.1
  %62 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 2, i32 1), align 1
  %63 = icmp eq i8 %62, 1
  br i1 %63, label %b.op.13.start, label %b.12.isnull.3

b.12.isnull.3:                                    ; preds = %b.12.isnull.2
  %64 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 3, i32 1), align 1
  %65 = icmp eq i8 %64, 1
  br i1 %65, label %b.op.13.start, label %b.12.isnull.4

b.12.isnull.4:                                    ; preds = %b.12.isnull.3
  %66 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 4, i32 1), align 1
  %67 = icmp eq i8 %66, 1
  br i1 %67, label %b.op.13.start, label %b.12.isnull.5

b.12.isnull.5:                                    ; preds = %b.12.isnull.4
  %68 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 5, i32 1), align 1
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %b.op.13.start, label %b.12.no-null-args

b.12.no-null-args:                                ; preds = %b.12.isnull.5
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall2 = call i64 @fmgr_sql(%struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*))
  %70 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93867754836816 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 96, i8* inttoptr (i64 93867754836848 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93867754836844 to i8*))
  store i64 %funccall2, i64* inttoptr (i64 93867754834624 to i64*), align 8
  store i8 %70, i8* inttoptr (i64 93867754834621 to i8*), align 1
  br label %b.op.13.start

b.op.13.start:                                    ; preds = %b.12.no-null-args, %b.12.isnull.5, %b.12.isnull.4, %b.12.isnull.3, %b.12.isnull.2, %b.12.isnull.1, %b.12.isnull.0
  %71 = load i64, i64* %v.state.resvalue, align 8
  %72 = load i8, i8* %v.state.resnull, align 1
  %73 = getelementptr i64, i64* %v_resultvalues, i32 2
  %74 = getelementptr i8, i8* %v_resultnulls, i32 2
  store i8 %72, i8* %74, align 1
  store i64 %71, i64* %73, align 8
  br label %b.op.14.start

b.op.14.start:                                    ; preds = %b.op.13.start
  %75 = load i64, i64* %v.state.resvalue, align 8
  %76 = load i8, i8* %v.state.resnull, align 1
  store i8 %76, i8* %2, align 1
  ret i64 %75
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define internal void @deform_23702_3(%struct.TupleTableSlot* nocapture align 8 %0) #0 {
entry:
  %v_offp = alloca i64, align 8
  %1 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 5
  %tts_values = load i64*, i64** %1, align 8
  %2 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 6
  %tts_ISNULL = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 2
  %minimalslot = bitcast %struct.TupleTableSlot* %0 to %struct.MinimalTupleTableSlot*
  %5 = getelementptr inbounds %struct.MinimalTupleTableSlot, %struct.MinimalTupleTableSlot* %minimalslot, i32 0, i32 4
  %6 = getelementptr inbounds %struct.MinimalTupleTableSlot, %struct.MinimalTupleTableSlot* %minimalslot, i32 0, i32 1
  %tupleheader = load %struct.HeapTupleData*, %struct.HeapTupleData** %6, align 8
  %7 = getelementptr inbounds %struct.HeapTupleData, %struct.HeapTupleData* %tupleheader, i32 0, i32 3
  %tuple = load %struct.HeapTupleHeaderData*, %struct.HeapTupleHeaderData** %7, align 8
  %8 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 5
  %t_bits = bitcast [0 x i8]* %8 to i8*
  %9 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 3
  %infomask1 = load i16, i16* %9, align 2
  %10 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 2
  %infomask2 = load i16, i16* %10, align 2
  %11 = and i16 1, %infomask1
  %hasnulls = icmp ne i16 %11, 0
  %maxatt = and i16 2047, %infomask2
  %12 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %t_hoff = zext i8 %13 to i32
  %14 = bitcast %struct.HeapTupleHeaderData* %tuple to i8*
  %v_tupdata_base = getelementptr i8, i8* %14, i32 %t_hoff
  %v_slot_off = load i32, i32* %5, align 4
  %15 = zext i32 %v_slot_off to i64
  store i64 %15, i64* %v_offp, align 8
  %16 = icmp ult i16 %maxatt, 1
  br i1 %16, label %adjust_unavail_cols, label %find_startblock

adjust_unavail_cols:                              ; preds = %entry
  %17 = zext i16 %maxatt to i32
  call void bitcast (void (%struct.TupleTableSlot.10433727*, i32, i32)* @slot_getmissingattrs to void (%struct.TupleTableSlot*, i32, i32)*)(%struct.TupleTableSlot* %0, i32 %17, i32 1)
  br label %find_startblock

find_startblock:                                  ; preds = %adjust_unavail_cols, %entry
  %18 = load i16, i16* %4, align 2
  switch i16 %18, label %deadblock [
    i16 0, label %block.attr.0.attcheckattno
  ]

outblock:                                         ; preds = %block.attr.0.store, %block.attr.0.attisnull, %block.attr.0.attcheckattno
  %19 = load i64, i64* %v_offp, align 8
  store i16 1, i16* %4, align 2
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %tts_flags = load i16, i16* %3, align 2
  %21 = or i16 %tts_flags, 8
  store i16 %21, i16* %3, align 2
  ret void

deadblock:                                        ; preds = %find_startblock
  unreachable

block.attr.0.attcheckattno:                       ; preds = %find_startblock
  store i64 0, i64* %v_offp, align 8
  %heap_natts = icmp uge i16 0, %maxatt
  br i1 %heap_natts, label %outblock, label %block.attr.0.start

block.attr.0.start:                               ; preds = %block.attr.0.attcheckattno
  %22 = getelementptr i8, i8* %t_bits, i32 0
  %attnullbyte = load i8, i8* %22, align 1
  %23 = and i8 %attnullbyte, 1
  %attisnull = icmp eq i8 %23, 0
  %24 = and i1 %hasnulls, %attisnull
  br i1 %24, label %block.attr.0.attisnull, label %block.attr.0.attcheckalign

block.attr.0.attisnull:                           ; preds = %block.attr.0.start
  %25 = getelementptr i8, i8* %tts_ISNULL, i16 0
  store i8 1, i8* %25, align 1
  %26 = getelementptr i64, i64* %tts_values, i16 0
  store i64 0, i64* %26, align 8
  br label %outblock

block.attr.0.attcheckalign:                       ; preds = %block.attr.0.start
  br label %block.attr.0.align

block.attr.0.align:                               ; preds = %block.attr.0.attcheckalign
  br label %block.attr.0.store

block.attr.0.store:                               ; preds = %block.attr.0.align
  %27 = load i64, i64* %v_offp, align 8
  %28 = getelementptr i8, i8* %v_tupdata_base, i64 %27
  %29 = getelementptr i64, i64* %tts_values, i16 0
  %30 = getelementptr i8, i8* %tts_ISNULL, i16 0
  store i8 0, i8* %30, align 1
  %attr_ptr = ptrtoint i8* %28 to i64
  store i64 %attr_ptr, i64* %29, align 8
  %varsize_any = call i64 @varsize_any(i8* %28) #8
  %31 = load i64, i64* %v_offp, align 8
  %increment_offset = add i64 %31, %varsize_any
  store i64 %increment_offset, i64* %v_offp, align 8
  br label %outblock
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define internal void @deform_23702_4(%struct.TupleTableSlot* nocapture align 8 %0) #0 {
entry:
  %v_offp = alloca i64, align 8
  %1 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 5
  %tts_values = load i64*, i64** %1, align 8
  %2 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 6
  %tts_ISNULL = load i8*, i8** %2, align 8
  %3 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %0, i32 0, i32 2
  %heapslot = bitcast %struct.TupleTableSlot* %0 to %struct.HeapTupleTableSlot*
  %5 = getelementptr inbounds %struct.HeapTupleTableSlot, %struct.HeapTupleTableSlot* %heapslot, i32 0, i32 2
  %6 = getelementptr inbounds %struct.HeapTupleTableSlot, %struct.HeapTupleTableSlot* %heapslot, i32 0, i32 1
  %tupleheader = load %struct.HeapTupleData*, %struct.HeapTupleData** %6, align 8
  %7 = getelementptr inbounds %struct.HeapTupleData, %struct.HeapTupleData* %tupleheader, i32 0, i32 3
  %tuple = load %struct.HeapTupleHeaderData*, %struct.HeapTupleHeaderData** %7, align 8
  %8 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 5
  %t_bits = bitcast [0 x i8]* %8 to i8*
  %9 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 3
  %infomask1 = load i16, i16* %9, align 2
  %10 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 2
  %infomask2 = load i16, i16* %10, align 2
  %11 = and i16 1, %infomask1
  %hasnulls = icmp ne i16 %11, 0
  %maxatt = and i16 2047, %infomask2
  %12 = getelementptr inbounds %struct.HeapTupleHeaderData, %struct.HeapTupleHeaderData* %tuple, i32 0, i32 4
  %13 = load i8, i8* %12, align 1
  %t_hoff = zext i8 %13 to i32
  %14 = bitcast %struct.HeapTupleHeaderData* %tuple to i8*
  %v_tupdata_base = getelementptr i8, i8* %14, i32 %t_hoff
  %v_slot_off = load i32, i32* %5, align 4
  %15 = zext i32 %v_slot_off to i64
  store i64 %15, i64* %v_offp, align 8
  %16 = icmp ult i16 %maxatt, 2
  br i1 %16, label %adjust_unavail_cols, label %find_startblock

adjust_unavail_cols:                              ; preds = %entry
  %17 = zext i16 %maxatt to i32
  call void bitcast (void (%struct.TupleTableSlot.10433727*, i32, i32)* @slot_getmissingattrs to void (%struct.TupleTableSlot*, i32, i32)*)(%struct.TupleTableSlot* %0, i32 %17, i32 2)
  br label %find_startblock

find_startblock:                                  ; preds = %adjust_unavail_cols, %entry
  %18 = load i16, i16* %4, align 2
  switch i16 %18, label %deadblock [
    i16 0, label %block.attr.0.attcheckattno
    i16 1, label %block.attr.1.attcheckattno
  ]

outblock:                                         ; preds = %block.attr.1.store, %block.attr.1.attisnull, %block.attr.1.attcheckattno, %block.attr.0.attcheckattno
  %19 = load i64, i64* %v_offp, align 8
  store i16 2, i16* %4, align 2
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %tts_flags = load i16, i16* %3, align 2
  %21 = or i16 %tts_flags, 8
  store i16 %21, i16* %3, align 2
  ret void

deadblock:                                        ; preds = %find_startblock
  unreachable

block.attr.0.attcheckattno:                       ; preds = %find_startblock
  store i64 0, i64* %v_offp, align 8
  %heap_natts = icmp uge i16 0, %maxatt
  br i1 %heap_natts, label %outblock, label %block.attr.0.start

block.attr.0.start:                               ; preds = %block.attr.0.attcheckattno
  %22 = getelementptr i8, i8* %t_bits, i32 0
  %attnullbyte = load i8, i8* %22, align 1
  %23 = and i8 %attnullbyte, 1
  %attisnull = icmp eq i8 %23, 0
  %24 = and i1 %hasnulls, %attisnull
  br i1 %24, label %block.attr.0.attisnull, label %block.attr.0.attcheckalign

block.attr.0.attisnull:                           ; preds = %block.attr.0.start
  %25 = getelementptr i8, i8* %tts_ISNULL, i16 0
  store i8 1, i8* %25, align 1
  %26 = getelementptr i64, i64* %tts_values, i16 0
  store i64 0, i64* %26, align 8
  br label %block.attr.1.attcheckattno

block.attr.0.attcheckalign:                       ; preds = %block.attr.0.start
  br label %block.attr.0.align

block.attr.0.align:                               ; preds = %block.attr.0.attcheckalign
  br label %block.attr.0.store

block.attr.0.store:                               ; preds = %block.attr.0.align
  %27 = load i64, i64* %v_offp, align 8
  %28 = getelementptr i8, i8* %v_tupdata_base, i64 %27
  %29 = getelementptr i64, i64* %tts_values, i16 0
  %30 = getelementptr i8, i8* %tts_ISNULL, i16 0
  store i8 0, i8* %30, align 1
  %31 = bitcast i8* %28 to i32*
  %attr_byval = load i32, i32* %31, align 4
  %32 = zext i32 %attr_byval to i64
  store i64 %32, i64* %29, align 8
  %33 = load i64, i64* %v_offp, align 8
  %increment_offset = add i64 %33, 4
  store i64 %increment_offset, i64* %v_offp, align 8
  br label %block.attr.1.attcheckattno

block.attr.1.attcheckattno:                       ; preds = %block.attr.0.store, %block.attr.0.attisnull, %find_startblock
  %heap_natts1 = icmp uge i16 1, %maxatt
  br i1 %heap_natts1, label %outblock, label %block.attr.1.start

block.attr.1.start:                               ; preds = %block.attr.1.attcheckattno
  %34 = getelementptr i8, i8* %t_bits, i32 0
  %attnullbyte2 = load i8, i8* %34, align 1
  %35 = and i8 %attnullbyte2, 2
  %attisnull3 = icmp eq i8 %35, 0
  %36 = and i1 %hasnulls, %attisnull3
  br i1 %36, label %block.attr.1.attisnull, label %block.attr.1.attcheckalign

block.attr.1.attisnull:                           ; preds = %block.attr.1.start
  %37 = getelementptr i8, i8* %tts_ISNULL, i16 1
  store i8 1, i8* %37, align 1
  %38 = getelementptr i64, i64* %tts_values, i16 1
  store i64 0, i64* %38, align 8
  br label %outblock

block.attr.1.attcheckalign:                       ; preds = %block.attr.1.start
  %39 = load i64, i64* %v_offp, align 8
  %40 = getelementptr i8, i8* %v_tupdata_base, i64 %39
  %padbyte = load i8, i8* %40, align 1
  %ispadbyte = icmp eq i8 %padbyte, 0
  br i1 %ispadbyte, label %block.attr.1.align, label %block.attr.1.store

block.attr.1.align:                               ; preds = %block.attr.1.attcheckalign
  %41 = load i64, i64* %v_offp, align 8
  %42 = add i64 %41, 3
  %aligned_offset = and i64 %42, -4
  store i64 %aligned_offset, i64* %v_offp, align 8
  br label %block.attr.1.store

block.attr.1.store:                               ; preds = %block.attr.1.align, %block.attr.1.attcheckalign
  %43 = load i64, i64* %v_offp, align 8
  %44 = getelementptr i8, i8* %v_tupdata_base, i64 %43
  %45 = getelementptr i64, i64* %tts_values, i16 1
  %46 = getelementptr i8, i8* %tts_ISNULL, i16 1
  store i8 0, i8* %46, align 1
  %attr_ptr = ptrtoint i8* %44 to i64
  store i64 %attr_ptr, i64* %45, align 8
  %varsize_any = call i64 @varsize_any(i8* %44) #8
  %47 = load i64, i64* %v_offp, align 8
  %increment_offset4 = add i64 %47, %varsize_any
  store i64 %increment_offset4, i64* %v_offp, align 8
  br label %outblock
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare i64 @fmgr_sql(%struct.FunctionCallInfoBaseData*)

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_23702_5(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
entry:
  %v.state.resvalue = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 3
  %v.state.resnull = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 11
  %v.state.parent = load %struct.PlanState*, %struct.PlanState** %3, align 8
  %4 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 1
  %v_scanslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %4, align 8
  %5 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 2
  %v_innerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %5, align 8
  %6 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 3
  %v_outerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %6, align 8
  %7 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 4
  %v_resultslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %7, align 8
  %8 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 5
  %v_scanvalues = load i64*, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 6
  %v_scannulls = load i8*, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 5
  %v_innervalues = load i64*, i64** %10, align 8
  %11 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 6
  %v_innernulls = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 5
  %v_outervalues = load i64*, i64** %12, align 8
  %13 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 6
  %v_outernulls = load i8*, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 5
  %v_resultvalues = load i64*, i64** %14, align 8
  %15 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 6
  %v_resultnulls = load i8*, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 8
  %v.econtext.aggvalues = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 9
  %v.econtext.aggnulls = load i8*, i8** %17, align 8
  br label %b.op.0.start

b.op.0.start:                                     ; preds = %entry
  store i64 1, i64* inttoptr (i64 93866364528776 to i64*), align 8
  store i8 0, i8* inttoptr (i64 93866364528773 to i8*), align 1
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %b.op.0.start
  %18 = load i64, i64* %v.state.resvalue, align 8
  %19 = load i8, i8* %v.state.resnull, align 1
  store i8 %19, i8* %2, align 1
  ret i64 %18
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_23702_6(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
entry:
  %v.state.resvalue = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 3
  %v.state.resnull = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 11
  %v.state.parent = load %struct.PlanState*, %struct.PlanState** %3, align 8
  %4 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 1
  %v_scanslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %4, align 8
  %5 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 2
  %v_innerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %5, align 8
  %6 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 3
  %v_outerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %6, align 8
  %7 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 4
  %v_resultslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %7, align 8
  %8 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 5
  %v_scanvalues = load i64*, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 6
  %v_scannulls = load i8*, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 5
  %v_innervalues = load i64*, i64** %10, align 8
  %11 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 6
  %v_innernulls = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 5
  %v_outervalues = load i64*, i64** %12, align 8
  %13 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 6
  %v_outernulls = load i8*, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 5
  %v_resultvalues = load i64*, i64** %14, align 8
  %15 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 6
  %v_resultnulls = load i8*, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 8
  %v.econtext.aggvalues = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 9
  %v.econtext.aggnulls = load i8*, i8** %17, align 8
  br label %b.op.0.start

b.op.0.start:                                     ; preds = %entry
  %18 = getelementptr i64, i64* %v.econtext.aggvalues, i32 0
  %aggvalue = load i64, i64* %18, align 8
  %19 = getelementptr i8, i8* %v.econtext.aggnulls, i32 0
  %aggnull = load i8, i8* %19, align 1
  store i64 %aggvalue, i64* inttoptr (i64 93866364532568 to i64*), align 8
  store i8 %aggnull, i8* inttoptr (i64 93866364532565 to i8*), align 1
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %b.op.0.start
  %20 = load i64, i64* %v.state.resvalue, align 8
  %21 = load i8, i8* %v.state.resnull, align 1
  %22 = getelementptr i64, i64* %v_resultvalues, i32 0
  %23 = getelementptr i8, i8* %v_resultnulls, i32 0
  store i8 %21, i8* %23, align 1
  store i64 %20, i64* %22, align 8
  br label %b.op.2.start

b.op.2.start:                                     ; preds = %b.op.1.start
  %24 = load i64, i64* %v.state.resvalue, align 8
  %25 = load i8, i8* %v.state.resnull, align 1
  store i8 %25, i8* %2, align 1
  ret i64 %24
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_23702_7(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
entry:
  %v.state.resvalue = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 3
  %v.state.resnull = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 11
  %v.state.parent = load %struct.PlanState*, %struct.PlanState** %3, align 8
  %4 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 1
  %v_scanslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %4, align 8
  %5 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 2
  %v_innerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %5, align 8
  %6 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 3
  %v_outerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %6, align 8
  %7 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 4
  %v_resultslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %7, align 8
  %8 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 5
  %v_scanvalues = load i64*, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 6
  %v_scannulls = load i8*, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 5
  %v_innervalues = load i64*, i64** %10, align 8
  %11 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 6
  %v_innernulls = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 5
  %v_outervalues = load i64*, i64** %12, align 8
  %13 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 6
  %v_outernulls = load i8*, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 5
  %v_resultvalues = load i64*, i64** %14, align 8
  %15 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 6
  %v_resultnulls = load i8*, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 8
  %v.econtext.aggvalues = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 9
  %v.econtext.aggnulls = load i8*, i8** %17, align 8
  br label %b.op.0.start

b.op.0.start:                                     ; preds = %entry
  %18 = getelementptr i64, i64* %v_outervalues, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr i8, i8* %v_outernulls, i32 2
  %21 = load i8, i8* %20, align 1
  store i64 %19, i64* inttoptr (i64 93866364536392 to i64*), align 8
  store i8 %21, i8* inttoptr (i64 93866364536400 to i8*), align 1
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %b.op.0.start
  %22 = bitcast %struct.PlanState* %v.state.parent to %struct.AggState*
  %23 = getelementptr inbounds %struct.AggState, %struct.AggState* %22, i32 0, i32 53
  %aggstate.all_pergroups = load %struct.AggStatePerGroupData**, %struct.AggStatePerGroupData*** %23, align 8
  %24 = getelementptr %struct.AggStatePerGroupData*, %struct.AggStatePerGroupData** %aggstate.all_pergroups, i32 0
  %25 = load %struct.AggStatePerGroupData*, %struct.AggStatePerGroupData** %24, align 8
  %26 = getelementptr %struct.AggStatePerGroupData, %struct.AggStatePerGroupData* %25, i32 0
  %aggstate.current_set = getelementptr inbounds %struct.AggState, %struct.AggState* %22, i32 0, i32 20
  %aggstate.curaggcontext = getelementptr inbounds %struct.AggState, %struct.AggState* %22, i32 0, i32 14
  %aggstate.curpertrans = getelementptr inbounds %struct.AggState, %struct.AggState* %22, i32 0, i32 16
  store %struct.ExprContext* inttoptr (i64 93866351644912 to %struct.ExprContext*), %struct.ExprContext** %aggstate.curaggcontext, align 8
  store i32 0, i32* %aggstate.current_set, align 4
  store %struct.AggStatePerTransData* inttoptr (i64 93866364535504 to %struct.AggStatePerTransData*), %struct.AggStatePerTransData** %aggstate.curpertrans, align 8
  %CurrentMemoryContext = load %struct.MemoryContextData*, %struct.MemoryContextData** @CurrentMemoryContext, align 8
  store %struct.MemoryContextData* inttoptr (i64 93866351685904 to %struct.MemoryContextData*), %struct.MemoryContextData** @CurrentMemoryContext, align 8
  %transvalue = getelementptr inbounds %struct.AggStatePerGroupData, %struct.AggStatePerGroupData* %26, i32 0, i32 0
  %transnullp = getelementptr inbounds %struct.AggStatePerGroupData, %struct.AggStatePerGroupData* %26, i32 0, i32 1
  %transvalue1 = load i64, i64* %transvalue, align 8
  store i64 %transvalue1, i64* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93866364536344 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 0), align 8
  %transnull = load i8, i8* %transnullp, align 1
  store i8 %transnull, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93866364536344 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93866364536344 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall = call i64 @int4_sum(%struct.FunctionCallInfoBaseData* inttoptr (i64 93866364536344 to %struct.FunctionCallInfoBaseData*))
  %27 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93866364536344 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* inttoptr (i64 93866364536376 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93866364536372 to i8*))
  store i64 %funccall, i64* %transvalue, align 8
  store i8 %27, i8* %transnullp, align 1
  %CurrentMemoryContext2 = load %struct.MemoryContextData*, %struct.MemoryContextData** @CurrentMemoryContext, align 8
  store %struct.MemoryContextData* %CurrentMemoryContext, %struct.MemoryContextData** @CurrentMemoryContext, align 8
  br label %b.op.2.start

b.op.2.start:                                     ; preds = %b.op.1.start
  %28 = load i64, i64* %v.state.resvalue, align 8
  %29 = load i8, i8* %v.state.resnull, align 1
  store i8 %29, i8* %2, align 1
  ret i64 %28
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_23702_8(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
entry:
  %v.state.resvalue = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 3
  %v.state.resnull = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 11
  %v.state.parent = load %struct.PlanState*, %struct.PlanState** %3, align 8
  %4 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 1
  %v_scanslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %4, align 8
  %5 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 2
  %v_innerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %5, align 8
  %6 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 3
  %v_outerslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %6, align 8
  %7 = getelementptr inbounds %struct.ExprState, %struct.ExprState* %0, i32 0, i32 4
  %v_resultslot = load %struct.TupleTableSlot*, %struct.TupleTableSlot** %7, align 8
  %8 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 5
  %v_scanvalues = load i64*, i64** %8, align 8
  %9 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_scanslot, i32 0, i32 6
  %v_scannulls = load i8*, i8** %9, align 8
  %10 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 5
  %v_innervalues = load i64*, i64** %10, align 8
  %11 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_innerslot, i32 0, i32 6
  %v_innernulls = load i8*, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 5
  %v_outervalues = load i64*, i64** %12, align 8
  %13 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 6
  %v_outernulls = load i8*, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 5
  %v_resultvalues = load i64*, i64** %14, align 8
  %15 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_resultslot, i32 0, i32 6
  %v_resultnulls = load i8*, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 8
  %v.econtext.aggvalues = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %struct.ExprContext, %struct.ExprContext* %1, i32 0, i32 9
  %v.econtext.aggnulls = load i8*, i8** %17, align 8
  br label %b.op.0.start

b.op.0.start:                                     ; preds = %entry
  store i64 1, i64* inttoptr (i64 93866364539888 to i64*), align 8
  store i8 0, i8* inttoptr (i64 93866364539885 to i8*), align 1
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %b.op.0.start
  %18 = load i64, i64* %v.state.resvalue, align 8
  %19 = load i8, i8* %v.state.resnull, align 1
  store i8 %19, i8* %2, align 1
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define available_externally dso_local %struct.varlena.267* @pg_detoast_datum_packed(%struct.varlena.267* %0) local_unnamed_addr #2 {
  %2 = getelementptr %struct.varlena.267, %struct.varlena.267* %0, i64 0, i32 0, i64 0
  %3 = load i8, i8* %2, align 1
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 2
  %6 = icmp eq i8 %3, 1
  %7 = or i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call %struct.varlena.267* @detoast_attr(%struct.varlena.267* nonnull %0) #9
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi %struct.varlena.267* [ %9, %8 ], [ %0, %1 ]
  ret %struct.varlena.267* %11
}

declare dso_local %struct.varlena.267* @detoast_attr(%struct.varlena.267*) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind uwtable willreturn
define available_externally dso_local i64 @int4_sum(%struct.FunctionCallInfoBaseData* nocapture %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 0, i32 1
  %3 = load i8, i8* %2, align 8, !range !3
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 1, i32 1
  %7 = load i8, i8* %6, align 8, !range !3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 4
  store i8 1, i8* %10, align 4
  br label %28

11:                                               ; preds = %5
  %12 = getelementptr %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 1, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = shl i64 %13, 32
  %15 = ashr exact i64 %14, 32
  br label %28

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 1, i32 1
  %20 = load i8, i8* %19, align 8, !range !3
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 1, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 %24, 32
  %26 = ashr exact i64 %25, 32
  %27 = add i64 %26, %18
  br label %28

28:                                               ; preds = %22, %16, %11, %9
  %29 = phi i64 [ 0, %9 ], [ %15, %11 ], [ %27, %22 ], [ %18, %16 ]
  ret i64 %29
}

; Function Attrs: norecurse nounwind readonly uwtable willreturn
define available_externally dso_local %struct.ExpandedObjectHeader.10433683* @DatumGetEOHP(i64 %0) local_unnamed_addr #5 {
  %2 = inttoptr i64 %0 to %struct.varattrib_1b_e.10433684*
  %3 = getelementptr inbounds %struct.varattrib_1b_e.10433684, %struct.varattrib_1b_e.10433684* %2, i64 1
  %4 = bitcast %struct.varattrib_1b_e.10433684* %3 to %struct.ExpandedObjectHeader.10433683**
  %5 = load %struct.ExpandedObjectHeader.10433683*, %struct.ExpandedObjectHeader.10433683** %4, align 1
  ret %struct.ExpandedObjectHeader.10433683* %5
}

; Function Attrs: norecurse nounwind readonly uwtable willreturn
define available_externally dso_local i64 @MakeExpandedObjectReadOnlyInternal(i64 %0) local_unnamed_addr #5 {
  %2 = inttoptr i64 %0 to %struct.varattrib_1b.10433685*
  %3 = getelementptr inbounds %struct.varattrib_1b.10433685, %struct.varattrib_1b.10433685* %2, i64 0, i32 0
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = inttoptr i64 %0 to %struct.varattrib_1b_e.10433684*
  %8 = getelementptr inbounds %struct.varattrib_1b_e.10433684, %struct.varattrib_1b_e.10433684* %7, i64 0, i32 1
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.varattrib_1b_e.10433684, %struct.varattrib_1b_e.10433684* %7, i64 1
  %13 = bitcast %struct.varattrib_1b_e.10433684* %12 to %struct.ExpandedObjectHeader.10433683**
  %14 = load %struct.ExpandedObjectHeader.10433683*, %struct.ExpandedObjectHeader.10433683** %13, align 1
  %15 = getelementptr inbounds %struct.ExpandedObjectHeader.10433683, %struct.ExpandedObjectHeader.10433683* %14, i64 0, i32 4, i64 0
  %16 = ptrtoint i8* %15 to i64
  br label %17

17:                                               ; preds = %11, %6, %1
  %18 = phi i64 [ %16, %11 ], [ %0, %6 ], [ %0, %1 ]
  ret i64 %18
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @EOH_get_flat_size(%struct.ExpandedObjectHeader.10433683* %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ExpandedObjectHeader.10433683, %struct.ExpandedObjectHeader.10433683* %0, i64 0, i32 1
  %3 = load %struct.ExpandedObjectMethods.10433678*, %struct.ExpandedObjectMethods.10433678** %2, align 8
  %4 = getelementptr inbounds %struct.ExpandedObjectMethods.10433678, %struct.ExpandedObjectMethods.10433678* %3, i64 0, i32 0
  %5 = load i64 (%struct.ExpandedObjectHeader.10433683*)*, i64 (%struct.ExpandedObjectHeader.10433683*)** %4, align 8
  %6 = tail call i64 %5(%struct.ExpandedObjectHeader.10433683* %0) #9
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @toast_raw_datum_size(i64 %0) local_unnamed_addr #2 {
  %2 = inttoptr i64 %0 to %struct.varattrib_1b.10433685*
  %3 = getelementptr inbounds %struct.varattrib_1b.10433685, %struct.varattrib_1b.10433685* %2, i64 0, i32 0
  %4 = load i8, i8* %3, align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %33

6:                                                ; preds = %17, %1
  %7 = phi i64 [ %21, %17 ], [ %0, %1 ]
  %8 = inttoptr i64 %7 to %struct.varattrib_1b_e.10433684*
  %9 = getelementptr inbounds %struct.varattrib_1b_e.10433684, %struct.varattrib_1b_e.10433684* %8, i64 0, i32 1
  %10 = load i8, i8* %9, align 1
  switch i8 %10, label %25 [
    i8 18, label %11
    i8 1, label %17
  ]

11:                                               ; preds = %6
  %12 = inttoptr i64 %7 to %struct.varattrib_1b_e.10433684*
  %13 = getelementptr inbounds %struct.varattrib_1b_e.10433684, %struct.varattrib_1b_e.10433684* %12, i64 1
  %14 = bitcast %struct.varattrib_1b_e.10433684* %13 to i32*
  %15 = load i32, i32* %14, align 1
  %16 = sext i32 %15 to i64
  br label %60

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.varattrib_1b_e.10433684, %struct.varattrib_1b_e.10433684* %8, i64 1
  %19 = bitcast %struct.varattrib_1b_e.10433684* %18 to %struct.varlena.267**
  %20 = load %struct.varlena.267*, %struct.varlena.267** %19, align 1
  %21 = ptrtoint %struct.varlena.267* %20 to i64
  %22 = getelementptr %struct.varlena.267, %struct.varlena.267* %20, i64 0, i32 0, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %6, label %31

25:                                               ; preds = %6
  %26 = and i8 %10, -2
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = tail call %struct.ExpandedObjectHeader.10433683* @DatumGetEOHP(i64 %7) #9
  %30 = tail call i64 @EOH_get_flat_size(%struct.ExpandedObjectHeader.10433683* %29) #9
  br label %60

31:                                               ; preds = %17
  %32 = ptrtoint %struct.varlena.267* %20 to i64
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi i64 [ %0, %1 ], [ %32, %31 ]
  %35 = phi i8 [ %4, %1 ], [ %23, %31 ]
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 3
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = inttoptr i64 %34 to %union.varattrib_4b.10433676*
  %41 = getelementptr inbounds %union.varattrib_4b.10433676, %union.varattrib_4b.10433676* %40, i64 0, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1073741823
  %44 = add nuw nsw i32 %43, 4
  %45 = zext i32 %44 to i64
  br label %60

46:                                               ; preds = %33
  %47 = and i32 %36, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46, %25
  %50 = phi i32 [ %36, %46 ], [ 1, %25 ]
  %51 = lshr i32 %50, 1
  %52 = add nuw nsw i32 %51, 3
  %53 = zext i32 %52 to i64
  br label %60

54:                                               ; preds = %46
  %55 = inttoptr i64 %34 to %struct.anon.10433677*
  %56 = getelementptr inbounds %struct.anon.10433677, %struct.anon.10433677* %55, i64 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = lshr i32 %57, 2
  %59 = zext i32 %58 to i64
  br label %60

60:                                               ; preds = %54, %49, %39, %28, %11
  %61 = phi i64 [ %16, %11 ], [ %30, %28 ], [ %45, %39 ], [ %53, %49 ], [ %59, %54 ]
  ret i64 %61
}

; Function Attrs: nofree nounwind uwtable
define available_externally dso_local void @slot_getmissingattrs(%struct.TupleTableSlot.10433727* nocapture readonly %0, i32 %1, i32 %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.TupleTableSlot.10433727, %struct.TupleTableSlot.10433727* %0, i64 0, i32 4
  %5 = load %struct.TupleDescData*, %struct.TupleDescData** %4, align 8
  %6 = getelementptr inbounds %struct.TupleDescData, %struct.TupleDescData* %5, i64 0, i32 4
  %7 = load %struct.TupleConstr*, %struct.TupleConstr** %6, align 8
  %8 = icmp eq %struct.TupleConstr* %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.TupleConstr, %struct.TupleConstr* %7, i64 0, i32 2
  %11 = load %struct.AttrMissing*, %struct.AttrMissing** %10, align 8
  %12 = icmp eq %struct.AttrMissing* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = icmp sgt i32 %2, %1
  br i1 %14, label %15, label %45

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.TupleTableSlot.10433727, %struct.TupleTableSlot.10433727* %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.TupleTableSlot.10433727, %struct.TupleTableSlot.10433727* %0, i64 0, i32 6
  %18 = sext i32 %1 to i64
  %19 = sext i32 %2 to i64
  br label %32

20:                                               ; preds = %9, %3
  %21 = getelementptr inbounds %struct.TupleTableSlot.10433727, %struct.TupleTableSlot.10433727* %0, i64 0, i32 5
  %22 = load i64*, i64** %21, align 8
  %23 = sext i32 %1 to i64
  %24 = getelementptr i64, i64* %22, i64 %23
  %25 = bitcast i64* %24 to i8*
  %26 = sub i32 %2, %1
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 %28, i1 false)
  %29 = getelementptr inbounds %struct.TupleTableSlot.10433727, %struct.TupleTableSlot.10433727* %0, i64 0, i32 6
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr i8, i8* %30, i64 %23
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 1, i64 %27, i1 false)
  br label %45

32:                                               ; preds = %32, %15
  %33 = phi i64 [ %18, %15 ], [ %43, %32 ]
  %34 = getelementptr %struct.AttrMissing, %struct.AttrMissing* %11, i64 %33, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %16, align 8
  %37 = getelementptr i64, i64* %36, i64 %33
  store i64 %35, i64* %37, align 8
  %38 = getelementptr %struct.AttrMissing, %struct.AttrMissing* %11, i64 %33, i32 0
  %39 = load i8, i8* %38, align 8, !range !3
  %40 = load i8*, i8** %17, align 8
  %41 = getelementptr i8, i8* %40, i64 %33
  %42 = xor i8 %39, 1
  store i8 %42, i8* %41, align 1
  %43 = add nsw i64 %33, 1
  %44 = icmp eq i64 %43, %19
  br i1 %44, label %45, label %32, !llvm.loop !4

45:                                               ; preds = %32, %20, %13
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define available_externally dso_local i64 @textlen(%struct.FunctionCallInfoBaseData* nocapture readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* %0, i64 0, i32 6, i64 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = tail call i32 @pg_database_encoding_max_length() #9
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i64 @toast_raw_datum_size(i64 %3) #9
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, -4
  br label %43

10:                                               ; preds = %1
  %11 = inttoptr i64 %3 to %struct.varlena.267*
  %12 = tail call %struct.varlena.267* @pg_detoast_datum_packed(%struct.varlena.267* %11) #9
  %13 = getelementptr %struct.varlena.267, %struct.varlena.267* %12, i64 0, i32 0, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.varlena.267, %struct.varlena.267* %12, i64 0, i32 0, i64 1
  %19 = getelementptr inbounds %struct.varlena.267, %struct.varlena.267* %12, i64 1, i32 0, i64 0
  %20 = select i1 %17, i8* %19, i8* %18
  %21 = icmp eq i8 %14, 1
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = load i8, i8* %18, align 1
  %24 = icmp eq i8 %23, 1
  %25 = and i8 %23, -2
  %26 = icmp eq i8 %25, 2
  %27 = or i1 %24, %26
  %28 = icmp eq i8 %23, 18
  %29 = select i1 %28, i32 16, i32 1
  %30 = select i1 %27, i32 8, i32 %29
  br label %40

31:                                               ; preds = %10
  br i1 %17, label %35, label %32

32:                                               ; preds = %31
  %33 = lshr i32 %15, 1
  %34 = add nsw i32 %33, -1
  br label %40

35:                                               ; preds = %31
  %36 = bitcast %struct.varlena.267* %12 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = lshr i32 %37, 2
  %39 = add nsw i32 %38, -4
  br label %40

40:                                               ; preds = %35, %32, %22
  %41 = phi i32 [ %34, %32 ], [ %39, %35 ], [ %30, %22 ]
  %42 = tail call i32 @pg_mbstrlen_with_len(i8* nonnull %20, i32 %41) #9
  br label %43

43:                                               ; preds = %40, %6
  %44 = phi i32 [ %9, %6 ], [ %42, %40 ]
  %45 = sext i32 %44 to i64
  ret i64 %45
}

declare dso_local i32 @pg_database_encoding_max_length() local_unnamed_addr #3

declare dso_local i32 @pg_mbstrlen_with_len(i8*, i32) local_unnamed_addr #3

; Function Attrs: norecurse nounwind readonly uwtable willreturn
define available_externally dso_local i64 @varsize_any(i8* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = load i8, i8* %0, align 1
  %3 = zext i8 %2 to i32
  %4 = icmp eq i8 %2, 1
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 1
  %9 = and i8 %7, -2
  %10 = icmp eq i8 %9, 2
  %11 = or i1 %8, %10
  %12 = icmp eq i8 %7, 18
  %13 = select i1 %12, i64 18, i64 3
  %14 = select i1 %11, i64 10, i64 %13
  br label %27

15:                                               ; preds = %1
  %16 = and i32 %3, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = lshr i32 %3, 1
  br label %24

20:                                               ; preds = %15
  %21 = bitcast i8* %0 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = lshr i32 %22, 2
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi i64 [ %26, %24 ], [ %14, %5 ]
  ret i64 %28
}

attributes #0 = { nofree norecurse nounwind uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree norecurse nounwind uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readonly uwtable willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nofree nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { alwaysinline "readonly" }
attributes #9 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"Ubuntu clang version 12.0.0-3ubuntu1~20.04.3"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 1, !"EnableSplitLTOUnit", i32 0}
!3 = !{i8 0, i8 2}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
