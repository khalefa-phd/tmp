; ModuleID = '2605.0.bc'
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
%struct.AttrMissing = type opaque
%struct.FormData_pg_attribute = type { i32, %struct.nameData, i32, i32, i16, i16, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.nameData = type { [64 x i8] }
%struct.ItemPointerData = type { %struct.BlockIdData, i16 }
%struct.BlockIdData = type { i16, i16 }
%struct.ExprEvalStep = type { i64, i64*, i8*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.32 }
%struct.anon.32 = type { i8, i8, %struct.ScalarArrayOpExprHashTable*, %struct.FmgrInfo*, %struct.FunctionCallInfoBaseData*, i64 (%struct.FunctionCallInfoBaseData*)*, %struct.FmgrInfo*, %struct.FunctionCallInfoBaseData*, i64 (%struct.FunctionCallInfoBaseData*)* }
%struct.ScalarArrayOpExprHashTable = type opaque
%struct.FmgrInfo = type { {}*, i32, i16, i8, i8, i8, i8*, %struct.MemoryContextData*, %struct.Node* }
%struct.Node = type { i32 }
%struct.FunctionCallInfoBaseData = type { %struct.FmgrInfo*, %struct.Node*, %struct.Node*, i32, i8, i16, [0 x %struct.NullableDatum] }
%struct.NullableDatum = type { i64, i8 }
%struct.Expr = type { i32 }
%struct.PlanState = type { i32, %struct.Plan*, %struct.EState*, %struct.TupleTableSlot* (%struct.PlanState*)*, %struct.TupleTableSlot* (%struct.PlanState*)*, %struct.Instrumentation*, %struct.WorkerInstrumentation*, %struct.SharedJitInstrumentation*, %struct.ExprState*, %struct.PlanState*, %struct.PlanState*, %struct.List*, %struct.List*, %struct.Bitmapset*, %struct.TupleDescData*, %struct.TupleTableSlot*, %struct.ExprContext*, %struct.ProjectionInfo*, i8, %struct.TupleDescData*, %struct.TupleTableSlotOps*, %struct.TupleTableSlotOps*, %struct.TupleTableSlotOps*, %struct.TupleTableSlotOps*, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Plan = type { i32, double, double, double, i32, i8, i8, i8, i32, %struct.List*, %struct.List*, %struct.Plan*, %struct.Plan*, %struct.List*, %struct.Bitmapset*, %struct.Bitmapset* }
%struct.EState = type { i32, i32, %struct.SnapshotData*, %struct.SnapshotData*, %struct.List*, i32, %struct.RelationData**, %struct.ExecRowMark**, %struct.PlannedStmt*, i8*, %struct.JunkFilter*, i32, %struct.ResultRelInfo**, %struct.List*, %struct.PartitionDirectoryData*, %struct.List*, %struct.List*, %struct.ParamListInfoData*, %struct.ParamExecData*, %struct.QueryEnvironment*, %struct.MemoryContextData*, %struct.List*, i64, i32, i32, i8, %struct.List*, %struct.List*, %struct.List*, %struct.ExprContext*, %struct.EPQState*, i8, %struct.dsa_area*, i32, %struct.JitContext*, %struct.JitInstrumentation* }
%struct.SnapshotData = type { i32, i32, i32, i32*, i32, i32*, i32, i8, i8, i8, i32, i32, %struct.GlobalVisState*, i32, i32, %struct.pairingheap_node, i64, i64, i64 }
%struct.GlobalVisState = type opaque
%struct.pairingheap_node = type { %struct.pairingheap_node*, %struct.pairingheap_node*, %struct.pairingheap_node* }
%struct.RelationData = type opaque
%struct.ExecRowMark = type { %struct.RelationData*, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ItemPointerData, i8* }
%struct.PlannedStmt = type { i32, i32, i64, i8, i8, i8, i8, i8, i8, i32, %struct.Plan*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.Bitmapset*, %struct.List*, %struct.List*, %struct.List*, %struct.List*, %struct.Node*, i32, i32 }
%struct.JunkFilter = type { i32, %struct.List*, %struct.TupleDescData*, i16*, %struct.TupleTableSlot* }
%struct.ResultRelInfo = type { i32, i32, %struct.RelationData*, i32, %struct.RelationData**, %struct.IndexInfo**, i16, %struct.ProjectionInfo*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, i8, %struct.TriggerDesc*, %struct.FmgrInfo*, %struct.ExprState**, %struct.Instrumentation*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.FdwRoutine*, i8*, i8, i32, i32, i32, %struct.TupleTableSlot**, %struct.TupleTableSlot**, %struct.List*, %struct.List*, %struct.ExprState**, %struct.ExprState**, i32, %struct.List*, %struct.ProjectionInfo*, %struct.List*, %struct.OnConflictSetState*, %struct.ExprState*, %struct.ResultRelInfo*, %struct.TupleConversionMap*, %struct.TupleTableSlot*, %struct.TupleConversionMap*, i8, %struct.CopyMultiInsertBuffer* }
%struct.IndexInfo = type { i32, i32, i32, [32 x i16], %struct.List*, %struct.List*, %struct.List*, %struct.ExprState*, i32*, i32*, i16*, i32*, i32*, i16*, i64*, i8, i8, i8, i8, i32, i32, i8*, %struct.MemoryContextData* }
%struct.TriggerDesc = type { %struct.Trigger*, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Trigger = type { i32, i8*, i32, i16, i8, i8, i8, i32, i32, i32, i8, i8, i16, i16, i16*, i8**, i8*, i8*, i8* }
%struct.FdwRoutine = type opaque
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
%struct.ParseState = type opaque
%struct.ExprContext = type { i32, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.MemoryContextData*, %struct.MemoryContextData*, %struct.ParamExecData*, %struct.ParamListInfoData*, i64*, i8*, i64, i8, i64, i8, %struct.EState*, %struct.ExprContext_CB* }
%struct.ExprContext_CB = type { %struct.ExprContext_CB*, void (i64)*, i64 }
%struct.HeapTupleTableSlot = type { %struct.TupleTableSlot, %struct.HeapTupleData*, i32, %struct.HeapTupleData }
%struct.MinimalTupleTableSlot = type { %struct.TupleTableSlot, %struct.HeapTupleData*, %struct.MinimalTupleData*, %struct.HeapTupleData, i32 }
%struct.AggState = type { %struct.ScanState, %struct.List*, i32, i32, i32, i32, %struct.AggStatePerPhaseData*, i32, i32, %struct.AggStatePerAggData*, %struct.AggStatePerTransData*, %struct.ExprContext*, %struct.ExprContext**, %struct.ExprContext*, %struct.ExprContext*, %struct.AggStatePerAggData*, %struct.AggStatePerTransData*, i8, i8, i32, i32, %struct.Bitmapset*, %struct.List*, %struct.Bitmapset*, i32, i8, i32, %struct.AggStatePerPhaseData*, %struct.Tuplesortstate*, %struct.Tuplesortstate*, %struct.TupleTableSlot*, %struct.AggStatePerGroupData**, %struct.HeapTupleData*, i8, i32, %struct.MemoryContextData*, %struct.HashTapeInfo*, %struct.HashAggSpill*, %struct.TupleTableSlot*, %struct.TupleTableSlot*, %struct.List*, i8, i8, i64, i64, i32, double, i64, i64, i64, i32, %struct.AggStatePerHashData*, %struct.AggStatePerGroupData**, %struct.AggStatePerGroupData**, %struct.ProjectionInfo*, %struct.SharedAggInfo* }
%struct.ScanState = type { %struct.PlanState, %struct.RelationData*, %struct.TableScanDescData*, %struct.TupleTableSlot* }
%struct.TableScanDescData = type opaque
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

@CurrentMemoryContext = external global %struct.MemoryContextData*

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_0_0(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
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
  call void @deform_0_1(%struct.TupleTableSlot* %v_scanslot)
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
define internal void @deform_0_1(%struct.TupleTableSlot* nocapture align 8 %0) #0 {
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
  call void @slot_getmissingattrs(%struct.TupleTableSlot* %0, i32 %17, i32 2)
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
  %varsize_any = call i64 @varsize_any(i8* %44) #3
  %47 = load i64, i64* %v_offp, align 8
  %increment_offset4 = add i64 %47, %varsize_any
  store i64 %increment_offset4, i64* %v_offp, align 8
  br label %outblock
}

declare void @slot_getmissingattrs(%struct.TupleTableSlot*, i32, i32) #1

declare i64 @varsize_any(i8*) #1

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_0_2(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
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
  call void @deform_0_3(%struct.TupleTableSlot* %v_innerslot)
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %op.0.fetch, %b.op.0.start
  %21 = getelementptr inbounds %struct.TupleTableSlot, %struct.TupleTableSlot* %v_outerslot, i32 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = icmp uge i16 %22, 2
  br i1 %23, label %b.op.2.start, label %op.1.fetch

op.1.fetch:                                       ; preds = %b.op.1.start
  call void @deform_0_4(%struct.TupleTableSlot* %v_outerslot)
  br label %b.op.2.start

b.op.2.start:                                     ; preds = %op.1.fetch, %b.op.1.start
  %24 = getelementptr i64, i64* %v_outervalues, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr i8, i8* %v_outernulls, i32 1
  %27 = load i8, i8* %26, align 1
  %28 = getelementptr i64, i64* %v_resultvalues, i32 0
  %29 = getelementptr i8, i8* %v_resultnulls, i32 0
  store i64 %25, i64* %28, align 8
  store i8 %27, i8* %29, align 1
  br label %b.op.3.start

b.op.3.start:                                     ; preds = %b.op.2.start
  %30 = getelementptr i64, i64* %v_innervalues, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr i8, i8* %v_innernulls, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr i64, i64* %v_resultvalues, i32 1
  %35 = getelementptr i8, i8* %v_resultnulls, i32 1
  store i64 %31, i64* %34, align 8
  store i8 %33, i8* %35, align 1
  br label %b.op.4.start

b.op.4.start:                                     ; preds = %b.op.3.start
  %36 = load i64, i64* %v.state.resvalue, align 8
  %37 = load i8, i8* %v.state.resnull, align 1
  store i8 %37, i8* %2, align 1
  ret i64 %36
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define internal void @deform_0_3(%struct.TupleTableSlot* nocapture align 8 %0) #0 {
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
  call void @slot_getmissingattrs(%struct.TupleTableSlot* %0, i32 %17, i32 1)
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
  %varsize_any = call i64 @varsize_any(i8* %28) #3
  %31 = load i64, i64* %v_offp, align 8
  %increment_offset = add i64 %31, %varsize_any
  store i64 %increment_offset, i64* %v_offp, align 8
  br label %outblock
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define internal void @deform_0_4(%struct.TupleTableSlot* nocapture align 8 %0) #0 {
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
  call void @slot_getmissingattrs(%struct.TupleTableSlot* %0, i32 %17, i32 2)
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
  %varsize_any = call i64 @varsize_any(i8* %44) #3
  %47 = load i64, i64* %v_offp, align 8
  %increment_offset4 = add i64 %47, %varsize_any
  store i64 %increment_offset4, i64* %v_offp, align 8
  br label %outblock
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn writeonly
define i64 @evalexpr_0_5(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
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
  store i64 %aggvalue, i64* inttoptr (i64 93869037475056 to i64*), align 8
  store i8 %aggnull, i8* inttoptr (i64 93869037475053 to i8*), align 1
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
define i64 @evalexpr_0_6(%struct.ExprState* nocapture %0, %struct.ExprContext* %1, i8* %2) #0 {
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
  %18 = getelementptr i64, i64* %v_outervalues, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr i8, i8* %v_outernulls, i32 0
  %21 = load i8, i8* %20, align 1
  store i64 %19, i64* inttoptr (i64 93869037617216 to i64*), align 8
  store i8 %21, i8* inttoptr (i64 93869037617224 to i8*), align 1
  br label %b.op.1.start

b.op.1.start:                                     ; preds = %b.op.0.start
  %22 = getelementptr i64, i64* %v_outervalues, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr i8, i8* %v_outernulls, i32 1
  %25 = load i8, i8* %24, align 1
  store i64 %23, i64* inttoptr (i64 93869037617232 to i64*), align 8
  store i8 %25, i8* inttoptr (i64 93869037617240 to i8*), align 1
  br label %b.op.2.start

b.op.2.start:                                     ; preds = %b.op.1.start
  %26 = getelementptr i64, i64* %v_outervalues, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr i8, i8* %v_outernulls, i32 0
  %29 = load i8, i8* %28, align 1
  store i64 %27, i64* inttoptr (i64 93869037619504 to i64*), align 8
  store i8 %29, i8* inttoptr (i64 93869037619512 to i8*), align 1
  br label %b.op.3.start

b.op.3.start:                                     ; preds = %b.op.2.start
  store i8 1, i8* inttoptr (i64 93869037617288 to i8*), align 1
  br label %b.3.isnull.0

b.3.isnull.0:                                     ; preds = %b.op.3.start
  %30 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619472 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  %31 = icmp eq i8 %30, 1
  br i1 %31, label %b.op.4.start, label %b.3.no-null-args

b.3.no-null-args:                                 ; preds = %b.3.isnull.0
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619472 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall = call i64 @textlen(%struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619472 to %struct.FunctionCallInfoBaseData*))
  %32 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619472 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* inttoptr (i64 93869037619504 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93869037619500 to i8*))
  store i64 %funccall, i64* inttoptr (i64 93869037617280 to i64*), align 8
  store i8 %32, i8* inttoptr (i64 93869037617288 to i8*), align 1
  br label %b.op.4.start

b.op.4.start:                                     ; preds = %b.3.no-null-args, %b.3.isnull.0
  %33 = getelementptr i64, i64* %v_outervalues, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr i8, i8* %v_outernulls, i32 1
  %36 = load i8, i8* %35, align 1
  store i64 %34, i64* inttoptr (i64 93869037619664 to i64*), align 8
  store i8 %36, i8* inttoptr (i64 93869037619672 to i8*), align 1
  br label %b.op.5.start

b.op.5.start:                                     ; preds = %b.op.4.start
  store i8 1, i8* inttoptr (i64 93869037617304 to i8*), align 1
  br label %b.5.isnull.0

b.5.isnull.0:                                     ; preds = %b.op.5.start
  %37 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619632 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %b.op.6.start, label %b.5.no-null-args

b.5.no-null-args:                                 ; preds = %b.5.isnull.0
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619632 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall1 = call i64 @textlen(%struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619632 to %struct.FunctionCallInfoBaseData*))
  %39 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037619632 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 16, i8* inttoptr (i64 93869037619664 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93869037619660 to i8*))
  store i64 %funccall1, i64* inttoptr (i64 93869037617296 to i64*), align 8
  store i8 %39, i8* inttoptr (i64 93869037617304 to i8*), align 1
  br label %b.op.6.start

b.op.6.start:                                     ; preds = %b.5.no-null-args, %b.5.isnull.0
  store i8 1, i8* inttoptr (i64 93869037616912 to i8*), align 1
  br label %b.6.isnull.0

b.6.isnull.0:                                     ; preds = %b.op.6.start
  %40 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  %41 = icmp eq i8 %40, 1
  br i1 %41, label %b.op.7.start, label %b.6.isnull.1

b.6.isnull.1:                                     ; preds = %b.6.isnull.0
  %42 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 1, i32 1), align 1
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %b.op.7.start, label %b.6.isnull.2

b.6.isnull.2:                                     ; preds = %b.6.isnull.1
  %44 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 2, i32 1), align 1
  %45 = icmp eq i8 %44, 1
  br i1 %45, label %b.op.7.start, label %b.6.isnull.3

b.6.isnull.3:                                     ; preds = %b.6.isnull.2
  %46 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 3, i32 1), align 1
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %b.op.7.start, label %b.6.isnull.4

b.6.isnull.4:                                     ; preds = %b.6.isnull.3
  %48 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 4, i32 1), align 1
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %b.op.7.start, label %b.6.isnull.5

b.6.isnull.5:                                     ; preds = %b.6.isnull.4
  %50 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 5, i32 1), align 1
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %b.op.7.start, label %b.6.no-null-args

b.6.no-null-args:                                 ; preds = %b.6.isnull.5
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall2 = call i64 @fmgr_sql(%struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*))
  %52 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037617184 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 96, i8* inttoptr (i64 93869037617216 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93869037617212 to i8*))
  store i64 %funccall2, i64* inttoptr (i64 93869037616904 to i64*), align 8
  store i8 %52, i8* inttoptr (i64 93869037616912 to i8*), align 1
  br label %b.op.7.start

b.op.7.start:                                     ; preds = %b.6.no-null-args, %b.6.isnull.5, %b.6.isnull.4, %b.6.isnull.3, %b.6.isnull.2, %b.6.isnull.1, %b.6.isnull.0
  %53 = bitcast %struct.PlanState* %v.state.parent to %struct.AggState*
  %54 = getelementptr inbounds %struct.AggState, %struct.AggState* %53, i32 0, i32 53
  %aggstate.all_pergroups = load %struct.AggStatePerGroupData**, %struct.AggStatePerGroupData*** %54, align 8
  %55 = getelementptr %struct.AggStatePerGroupData*, %struct.AggStatePerGroupData** %aggstate.all_pergroups, i32 0
  %56 = load %struct.AggStatePerGroupData*, %struct.AggStatePerGroupData** %55, align 8
  %57 = getelementptr %struct.AggStatePerGroupData, %struct.AggStatePerGroupData* %56, i32 0
  %aggstate.current_set = getelementptr inbounds %struct.AggState, %struct.AggState* %53, i32 0, i32 20
  %aggstate.curaggcontext = getelementptr inbounds %struct.AggState, %struct.AggState* %53, i32 0, i32 14
  %aggstate.curpertrans = getelementptr inbounds %struct.AggState, %struct.AggState* %53, i32 0, i32 16
  store %struct.ExprContext* inttoptr (i64 93869036851696 to %struct.ExprContext*), %struct.ExprContext** %aggstate.curaggcontext, align 8
  store i32 0, i32* %aggstate.current_set, align 4
  store %struct.AggStatePerTransData* inttoptr (i64 93869037616016 to %struct.AggStatePerTransData*), %struct.AggStatePerTransData** %aggstate.curpertrans, align 8
  %CurrentMemoryContext = load %struct.MemoryContextData*, %struct.MemoryContextData** @CurrentMemoryContext, align 8
  store %struct.MemoryContextData* inttoptr (i64 93869036876944 to %struct.MemoryContextData*), %struct.MemoryContextData** @CurrentMemoryContext, align 8
  %transvalue = getelementptr inbounds %struct.AggStatePerGroupData, %struct.AggStatePerGroupData* %57, i32 0, i32 0
  %transnullp = getelementptr inbounds %struct.AggStatePerGroupData, %struct.AggStatePerGroupData* %57, i32 0, i32 1
  %transvalue3 = load i64, i64* %transvalue, align 8
  store i64 %transvalue3, i64* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037616856 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 0), align 8
  %transnull = load i8, i8* %transnullp, align 1
  store i8 %transnull, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037616856 to %struct.FunctionCallInfoBaseData*), i32 0, i32 6, i32 0, i32 1), align 1
  store i8 0, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037616856 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  %funccall4 = call i64 @int4_sum(%struct.FunctionCallInfoBaseData* inttoptr (i64 93869037616856 to %struct.FunctionCallInfoBaseData*))
  %58 = load i8, i8* getelementptr inbounds (%struct.FunctionCallInfoBaseData, %struct.FunctionCallInfoBaseData* inttoptr (i64 93869037616856 to %struct.FunctionCallInfoBaseData*), i32 0, i32 4), align 1
  call void @llvm.lifetime.end.p0i8(i64 32, i8* inttoptr (i64 93869037616888 to i8*))
  call void @llvm.lifetime.end.p0i8(i64 1, i8* inttoptr (i64 93869037616884 to i8*))
  store i64 %funccall4, i64* %transvalue, align 8
  store i8 %58, i8* %transnullp, align 1
  %CurrentMemoryContext5 = load %struct.MemoryContextData*, %struct.MemoryContextData** @CurrentMemoryContext, align 8
  store %struct.MemoryContextData* %CurrentMemoryContext, %struct.MemoryContextData** @CurrentMemoryContext, align 8
  br label %b.op.8.start

b.op.8.start:                                     ; preds = %b.op.7.start
  %59 = load i64, i64* %v.state.resvalue, align 8
  %60 = load i8, i8* %v.state.resnull, align 1
  store i8 %60, i8* %2, align 1
  ret i64 %59
}

declare i64 @textlen(%struct.FunctionCallInfoBaseData*)

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare i64 @fmgr_sql(%struct.FunctionCallInfoBaseData*)

declare i64 @int4_sum(%struct.FunctionCallInfoBaseData*)

attributes #0 = { nofree norecurse nounwind uwtable willreturn writeonly "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { alwaysinline "readonly" }
