	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1026 0                        ; ragged.py:1026:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 1045 21 prologue_end          ; ragged.py:1045:21
	s_abs_i32 s8, s2
	.loc	1 1050 36                       ; ragged.py:1050:36
	v_and_b32_e32 v19, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1042:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:1043:21 ]
	s_add_i32 s4, s35, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1042:21 ]
	s_ashr_i32 s5, s3, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1043:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1042:21 ]
	s_lshr_b32 s5, s5, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1043:21 ]
	s_lshr_b32 s6, s6, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1042:21 ]
	s_add_i32 s3, s3, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1043:21 ]
	s_add_i32 s4, s4, s6
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1042:21 ]
	s_ashr_i32 s3, s3, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:1043:21 ]
	s_ashr_i32 s6, s4, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 1044 28 is_stmt 1             ; ragged.py:1044:28
	s_mul_i32 s3, s6, s3
	.loc	1 1045 21                       ; ragged.py:1045:21
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s7, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s5
	s_mul_hi_u32 s7, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s7
	s_xor_b32 s7, s2, s3
	s_mul_hi_u32 s5, s8, s5
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s5, s4
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s8, s4
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s8, s4
	s_cselect_b32 s4, s9, s5
	.loc	1 1047 17                       ; ragged.py:1047:17
	s_abs_i32 s5, s6
	.loc	1 1045 21                       ; ragged.py:1045:21
	s_xor_b32 s4, s4, s7
	.loc	1 1047 17                       ; ragged.py:1047:17
	s_cvt_f32_u32 s8, s5
	.loc	1 1045 21                       ; ragged.py:1045:21
	s_sub_i32 s26, s4, s7
	.loc	1 1047 17                       ; ragged.py:1047:17
	s_sub_i32 s4, 0, s5
	.loc	1 1046 22                       ; ragged.py:1046:22
	s_mul_i32 s3, s26, s3
	.loc	1 1047 17                       ; ragged.py:1047:17
	v_rcp_iflag_f32_e32 v1, s8
	.loc	1 1046 16                       ; ragged.py:1046:16
	s_sub_i32 s7, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1047 17                       ; ragged.py:1047:17
	s_xor_b32 s9, s7, s6
	s_ashr_i32 s9, s9, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s8, v1
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_lshrrev_b32_e32 v1, 1, v0
	.loc	1 1047 17                       ; ragged.py:1047:17
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_cvt_u32_f32 s8, s8
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s8
	s_mul_hi_u32 s2, s8, s4
	s_abs_i32 s4, s7
	s_add_i32 s8, s8, s2
	s_load_b64 s[2:3], s[0:1], 0x20
	s_mul_hi_u32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s8, s5
	s_sub_i32 s4, s4, s10
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s4, s11, s4
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s4, s10, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_xor_b32 s5, s4, s9
	.loc	1 1056 49                       ; ragged.py:1056:49
	s_lshl_b32 s4, s26, 1
	.loc	1 1047 17                       ; ragged.py:1047:17
	s_sub_i32 s9, s5, s9
	.loc	1 1056 20                       ; ragged.py:1056:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1048 24                       ; ragged.py:1048:24
	s_mul_i32 s6, s9, s6
	.loc	1 1056 20                       ; ragged.py:1056:20
	s_lshl_b64 s[4:5], s[4:5], 2
	.loc	1 1048 17                       ; ragged.py:1048:17
	s_sub_i32 s8, s7, s6
	.loc	1 1050 18                       ; ragged.py:1050:18
	s_lshl_b32 s27, s9, 6
	.loc	1 1056 20                       ; ragged.py:1056:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1050 18                       ; ragged.py:1050:18
	v_or_b32_e32 v107, s27, v19
	.loc	1 1056 20                       ; ragged.py:1056:20
	s_load_b64 s[6:7], s[2:3], 0x0
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1050 18                       ; ragged.py:1050:18
	v_or_b32_e32 v142, 16, v107
	v_or_b32_e32 v28, 32, v107
	v_or_b32_e32 v29, 48, v107
	.loc	1 1052 20                       ; ragged.py:1052:20
	v_cmp_gt_i32_e64 s5, s34, v107
	v_cmp_gt_i32_e64 s4, s34, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s3, s34, v28
	v_cmp_gt_i32_e64 s2, s34, v29
	.loc	1 1060 15                       ; ragged.py:1060:15
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s6, s7
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1089 18                       ; ragged.py:1089:18
	s_lshl_b32 s33, s35, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; ragged.py:0:18
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr33
.LBB0_3:                                ; %Flow320
	s_load_b64 s[24:25], s[0:1], 0x28
	v_dual_mov_b32 v45, 0 :: v_dual_and_b32 v12, 48, v1
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v100, 0
	v_mov_b32_e32 v105, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s40, s8, 7
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1061 53 is_stmt 1             ; ragged.py:1061:53
	v_lshrrev_b32_e32 v2, 6, v0
	s_clause 0x1
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s1, s[0:1], 0x38
	.loc	1 1050 18                       ; ragged.py:1050:18
	v_or_b32_e32 v3, s27, v1
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v9, s40, v0
	.loc	1 1061 53                       ; ragged.py:1061:53
	v_or_b32_e32 v4, 30, v2
	v_or_b32_e32 v5, 14, v2
	v_dual_mov_b32 v103, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	.loc	1 1052 20                       ; ragged.py:1052:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1060 15                       ; ragged.py:1060:15
	v_mad_u64_u32 v[2:3], null, s34, v2, v[1:2]
	v_or_b32_e32 v7, 0xb80, v0
	v_or_b32_e32 v8, 0xf80, v0
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v113, 0, v0
	scratch_store_b64 off, v[2:3], off      ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, s34, v5, v[1:2]
	v_or_b32_e32 v5, 0x7f0, v0
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v6, 32, v6
	v_mov_b32_e32 v105, 0
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v11, 28, v11
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[2:3], off offset:8
	scratch_store_b32 off, v12, off offset:192
	v_mad_u64_u32 v[1:2], null, s34, v4, v[1:2]
	v_or_b32_e32 v3, 0x3f0, v0
	v_dual_mov_b32 v101, 0 :: v_dual_and_b32 v4, 0x70, v0
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v111, 0, v19
	s_mov_b32 s16, 0
	scratch_store_b64 off, v[1:2], off offset:16 ; 8-byte Folded Spill
	v_mad_u64_u32 v[1:2], null, s35, 3, v[9:10]
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v10, 2, v4
	v_dual_mov_b32 v95, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	v_mov_b32_e32 v89, 0
	s_mov_b32 s17, s16
	scratch_store_b64 off, v[1:2], off offset:24 ; 8-byte Folded Spill
	v_or_b32_e32 v1, 0x380, v0
	v_or_b32_e32 v2, 0x780, v0
	v_add_nc_u32_e32 v0, 0, v3
	v_add3_u32 v6, 0, v10, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v114, 0, v1
	v_mov_b32_e32 v93, 0
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v0, 0, v5
	v_mad_u64_u32 v[31:32], null, s35, 24, v[9:10]
	v_mov_b32_e32 v83, 0
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	v_mad_u64_u32 v[32:33], null, s35, 25, v[9:10]
	v_mad_u64_u32 v[33:34], null, s35, 26, v[9:10]
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	v_mad_u64_u32 v[34:35], null, s35, 27, v[9:10]
	v_mad_u64_u32 v[35:36], null, s35, 28, v[9:10]
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, v6, v11
	v_mad_u64_u32 v[36:37], null, s35, 29, v[9:10]
	v_mad_u64_u32 v[37:38], null, s35, 30, v[9:10]
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 5, v[9:10]
	v_mad_u64_u32 v[38:39], null, s35, 31, v[9:10]
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	scratch_store_b64 off, v[0:1], off offset:52 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 6, v[9:10]
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v115, 0, v2
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v121, 0, v4
	scratch_store_b64 off, v[0:1], off offset:60 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 7, v[9:10]
	v_mov_b32_e32 v46, 0
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v112, v111, v12
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v79, 0
	scratch_store_b64 off, v[0:1], off offset:68 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 9, v[9:10]
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	scratch_store_b64 off, v[0:1], off offset:76 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 10, v[9:10]
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	scratch_store_b64 off, v[0:1], off offset:84 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 11, v[9:10]
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v61, 0
	scratch_store_b64 off, v[0:1], off offset:92 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 12, v[9:10]
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v55, 0
	scratch_store_b64 off, v[0:1], off offset:100 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 13, v[9:10]
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v49, 0
	scratch_store_b64 off, v[0:1], off offset:108 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 14, v[9:10]
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v43, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	scratch_store_b64 off, v[0:1], off offset:116 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 15, v[9:10]
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v42, 0
	v_mov_b32_e32 v44, 0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	scratch_store_b64 off, v[0:1], off offset:124 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 17, v[9:10]
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s41, s34, 1
	s_lshl_b32 s42, s34, 2
	scratch_store_b64 off, v[0:1], off offset:132 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 18, v[9:10]
	s_mul_i32 s43, s34, 6
	s_lshl_b32 s44, s34, 3
	s_mul_i32 s45, s34, 10
	s_mul_i32 s46, s34, 12
	s_lshl_b32 s47, s34, 4
	s_mul_i32 s48, s34, 18
	scratch_store_b64 off, v[0:1], off offset:140 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 19, v[9:10]
	s_mul_i32 s49, s34, 20
	s_mul_i32 s50, s34, 22
	s_mul_i32 s51, s34, 24
	s_mul_i32 s52, s34, 26
	s_mul_i32 s53, s34, 28
	s_lshl_b32 s33, s35, 4
	scratch_store_b64 off, v[0:1], off offset:148 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 20, v[9:10]
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s30
	s_mov_b32 s11, s31
	scratch_store_b64 off, v[0:1], off offset:156 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 21, v[9:10]
	s_mov_b32 s36, s12
	s_mov_b32 s37, s13
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	scratch_store_b64 off, v[0:1], off offset:164 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 22, v[9:10]
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v9
	scratch_store_b64 off, v[0:1], off offset:172 ; 8-byte Folded Spill
	v_mad_u64_u32 v[0:1], null, s35, 23, v[9:10]
	scratch_store_b64 off, v[0:1], off offset:180 ; 8-byte Folded Spill
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_mov_b32_e32 v7, s22
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_mov_b32_e32 v8, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[13:14], off, off offset:24
	scratch_load_b64 v[14:15], off, off offset:52
	.loc	1 1061 27                       ; ragged.py:1061:27
	s_mul_i32 s17, s6, s1
	v_dual_mov_b32 v30, v29 :: v_dual_add_nc_u32 v11, s35, v9
	s_mul_i32 s16, s17, s34
	.loc	1 1062 27                       ; ragged.py:1062:27
	s_mul_i32 s17, s17, s35
	.loc	1 1063 34                       ; ragged.py:1063:34
	s_add_i32 s16, s16, s27
	v_lshl_add_u32 v12, s35, 1, v9
	v_lshl_add_u32 v39, s35, 2, v9
	v_dual_mov_b32 v29, v28 :: v_dual_add_nc_u32 v10, s17, v9
	v_lshl_add_u32 v122, s35, 3, v9
	v_add_nc_u32_e32 v130, s33, v9
	v_dual_mov_b32 v28, v142 :: v_dual_add_nc_u32 v11, s17, v11
	.loc	1 1064 34                       ; ragged.py:1064:34
	v_add_nc_u32_e32 v12, s17, v12
	v_add_nc_u32_e32 v39, s17, v39
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1064 26 is_stmt 0             ; ragged.py:1064:26
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	.loc	1 1064 34                       ; ragged.py:1064:34
	v_add_nc_u32_e32 v122, s17, v122
	v_add_nc_u32_e32 v130, s17, v130
	v_add_nc_u32_e32 v138, s17, v31
	v_add_nc_u32_e32 v139, s17, v32
	v_add_nc_u32_e32 v140, s17, v33
	v_add_nc_u32_e32 v141, s17, v34
	v_add_nc_u32_e32 v142, s17, v35
	v_add_nc_u32_e32 v143, s17, v36
	v_add_nc_u32_e32 v144, s17, v37
	v_add_nc_u32_e32 v145, s17, v38
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v138, 0x80000000, v138 :: v_dual_cndmask_b32 v139, 0x80000000, v139
	v_dual_cndmask_b32 v140, 0x80000000, v140 :: v_dual_cndmask_b32 v141, 0x80000000, v141
	v_dual_cndmask_b32 v142, 0x80000000, v142 :: v_dual_cndmask_b32 v143, 0x80000000, v143
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v144, 0x80000000, v144 :: v_dual_cndmask_b32 v145, 0x80000000, v145
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, s17, v13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v40, s17, v14
	scratch_load_b64 v[14:15], off, off offset:60 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_dual_cndmask_b32 v13, 0x80000000, v13 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v108, s17, v14
	scratch_load_b64 v[14:15], off, off offset:68 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v109, s17, v14
	scratch_load_b64 v[14:15], off, off offset:76 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v108, 0x80000000, v108 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v123, s17, v14
	scratch_load_b64 v[14:15], off, off offset:84 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v122, 0x80000000, v122 :: v_dual_cndmask_b32 v123, 0x80000000, v123
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v124, s17, v14
	scratch_load_b64 v[14:15], off, off offset:92 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v125, s17, v14
	scratch_load_b64 v[14:15], off, off offset:100 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v124, 0x80000000, v124 :: v_dual_cndmask_b32 v125, 0x80000000, v125
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v126, s17, v14
	scratch_load_b64 v[14:15], off, off offset:108 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v127, s17, v14
	scratch_load_b64 v[14:15], off, off offset:116 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v126, 0x80000000, v126 :: v_dual_cndmask_b32 v127, 0x80000000, v127
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v128, s17, v14
	scratch_load_b64 v[14:15], off, off offset:124 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v129, s17, v14
	scratch_load_b64 v[14:15], off, off offset:132 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v128, 0x80000000, v128 :: v_dual_cndmask_b32 v129, 0x80000000, v129
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s17, v14
	scratch_load_b64 v[14:15], off, off offset:140 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v130, 0x80000000, v130 :: v_dual_cndmask_b32 v131, 0x80000000, v131
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, s17, v14
	scratch_load_b64 v[14:15], off, off offset:148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, s17, v14
	scratch_load_b64 v[14:15], off, off offset:156 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v132, 0x80000000, v132 :: v_dual_cndmask_b32 v133, 0x80000000, v133
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v134, s17, v14
	scratch_load_b64 v[14:15], off, off offset:164 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v135, s17, v14
	scratch_load_b64 v[14:15], off, off offset:172 ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_dual_cndmask_b32 v134, 0x80000000, v134 :: v_dual_cndmask_b32 v135, 0x80000000, v135
	.loc	1 1064 34                       ; ragged.py:1064:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v136, s17, v14
	scratch_load_b64 v[14:15], off, off offset:180 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v137, s17, v14
	scratch_load_b64 v[14:15], off, off     ; 8-byte Folded Reload
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_cndmask_b32_e32 v136, 0x80000000, v136, vcc_lo
	.loc	1 1081 29 is_stmt 1             ; ragged.py:1081:29
	s_mul_i32 s17, s6, s35
	.loc	1 1064 26                       ; ragged.py:1064:26
	v_cndmask_b32_e32 v137, 0x80000000, v137, vcc_lo
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s16, v14
	scratch_load_b64 v[14:15], off, off offset:8 ; 8-byte Folded Reload
	v_add_nc_u32_e32 v147, s41, v146
	v_add_nc_u32_e32 v148, s42, v146
	v_add_nc_u32_e32 v149, s43, v146
	v_add_nc_u32_e32 v150, s44, v146
	v_add_nc_u32_e32 v151, s45, v146
	v_add_nc_u32_e32 v152, s46, v146
	v_add_nc_u32_e32 v153, s47, v146
	v_add_nc_u32_e32 v154, s48, v146
	v_add_nc_u32_e32 v155, s49, v146
	v_add_nc_u32_e32 v156, s50, v146
	v_add_nc_u32_e32 v157, s51, v146
	v_add_nc_u32_e32 v158, s52, v146
	v_add_nc_u32_e32 v159, s53, v146
	.loc	1 1063 26                       ; ragged.py:1063:26
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v160, s16, v14
	scratch_load_b64 v[14:15], off, off offset:16 ; 8-byte Folded Reload
	v_cndmask_b32_e64 v160, 0x80000000, v160, s0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v161, s16, v14
	.loc	1 1064 26                       ; ragged.py:1064:26
	s_clause 0x1f
	buffer_load_u8 v10, v10, s[8:11], 0 offen
	buffer_load_u8 v11, v11, s[8:11], 0 offen
	buffer_load_u8 v12, v12, s[8:11], 0 offen
	buffer_load_u8 v13, v13, s[8:11], 0 offen
	buffer_load_u8 v220, v39, s[8:11], 0 offen
	buffer_load_u8 v221, v40, s[8:11], 0 offen
	buffer_load_u8 v108, v108, s[8:11], 0 offen
	buffer_load_u8 v218, v109, s[8:11], 0 offen
	buffer_load_u8 v109, v122, s[8:11], 0 offen
	buffer_load_u8 v246, v123, s[8:11], 0 offen
	buffer_load_u8 v247, v124, s[8:11], 0 offen
	buffer_load_u8 v248, v125, s[8:11], 0 offen
	buffer_load_u8 v249, v126, s[8:11], 0 offen
	buffer_load_u8 v250, v127, s[8:11], 0 offen
	buffer_load_u8 v251, v128, s[8:11], 0 offen
	buffer_load_u8 v219, v129, s[8:11], 0 offen
	buffer_load_u8 v252, v130, s[8:11], 0 offen
	buffer_load_u8 v253, v131, s[8:11], 0 offen
	buffer_load_u8 v254, v132, s[8:11], 0 offen
	buffer_load_u8 v255, v133, s[8:11], 0 offen
	buffer_load_u8 v98, v134, s[8:11], 0 offen
	buffer_load_u8 v66, v135, s[8:11], 0 offen
	buffer_load_u8 v110, v136, s[8:11], 0 offen
	buffer_load_u8 v116, v137, s[8:11], 0 offen
	buffer_load_u8 v0, v138, s[8:11], 0 offen
	buffer_load_u8 v117, v139, s[8:11], 0 offen
	buffer_load_u8 v118, v140, s[8:11], 0 offen
	buffer_load_u8 v119, v141, s[8:11], 0 offen
	buffer_load_u8 v120, v142, s[8:11], 0 offen
	buffer_load_u8 v14, v143, s[8:11], 0 offen
	buffer_load_u8 v15, v144, s[8:11], 0 offen
	buffer_load_u8 v16, v145, s[8:11], 0 offen
	.loc	1 1063 26                       ; ragged.py:1063:26
	v_cndmask_b32_e64 v39, 0x80000000, v147, s0
	v_cndmask_b32_e64 v40, 0x80000000, v148, s0
	v_cndmask_b32_e64 v122, 0x80000000, v149, s0
	v_cndmask_b32_e64 v161, 0x80000000, v161, s0
	v_cndmask_b32_e64 v123, 0x80000000, v150, s0
	v_cndmask_b32_e64 v124, 0x80000000, v151, s0
	v_cndmask_b32_e64 v125, 0x80000000, v152, s0
	v_cndmask_b32_e64 v126, 0x80000000, v153, s0
	v_cndmask_b32_e64 v127, 0x80000000, v154, s0
	v_cndmask_b32_e64 v128, 0x80000000, v155, s0
	v_cndmask_b32_e64 v129, 0x80000000, v156, s0
	v_cndmask_b32_e64 v130, 0x80000000, v157, s0
	v_cndmask_b32_e64 v131, 0x80000000, v158, s0
	v_cndmask_b32_e64 v132, 0x80000000, v159, s0
	s_clause 0xf
	buffer_load_u8 v133, v161, s[28:31], 0 offen
	buffer_load_u8 v134, v146, s[28:31], 0 offen
	buffer_load_u8 v135, v160, s[28:31], 0 offen
	buffer_load_u8 v39, v39, s[28:31], 0 offen
	buffer_load_u8 v40, v40, s[28:31], 0 offen
	buffer_load_u8 v122, v122, s[28:31], 0 offen
	buffer_load_u8 v123, v123, s[28:31], 0 offen
	buffer_load_u8 v124, v124, s[28:31], 0 offen
	buffer_load_u8 v125, v125, s[28:31], 0 offen
	buffer_load_u8 v126, v126, s[28:31], 0 offen
	buffer_load_u8 v127, v127, s[28:31], 0 offen
	buffer_load_u8 v128, v128, s[28:31], 0 offen
	buffer_load_u8 v129, v129, s[28:31], 0 offen
	buffer_load_u8 v130, v130, s[28:31], 0 offen
	buffer_load_u8 v131, v131, s[28:31], 0 offen
	buffer_load_u8 v132, v132, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1076 29                       ; ragged.py:1076:29
	s_mul_i32 s16, s6, s34
	.loc	1 1086 13                       ; ragged.py:1086:13
	s_add_i32 s6, s6, 1
	.loc	1 1063 26                       ; ragged.py:1063:26
	s_waitcnt vmcnt(14)
	ds_store_b8 v113, v134
	s_waitcnt vmcnt(12)
	ds_store_b8 v113, v39 offset:128
	s_waitcnt vmcnt(11)
	ds_store_b8 v113, v40 offset:256
	s_waitcnt vmcnt(10)
	ds_store_b8 v113, v122 offset:384
	s_waitcnt vmcnt(9)
	ds_store_b8 v113, v123 offset:512
	s_waitcnt vmcnt(8)
	ds_store_b8 v113, v124 offset:640
	s_waitcnt vmcnt(7)
	ds_store_b8 v113, v125 offset:768
	s_waitcnt vmcnt(6)
	ds_store_b8 v113, v126 offset:1024
	s_waitcnt vmcnt(5)
	ds_store_b8 v113, v127 offset:1152
	s_waitcnt vmcnt(4)
	ds_store_b8 v113, v128 offset:1280
	s_waitcnt vmcnt(3)
	ds_store_b8 v113, v129 offset:1408
	s_waitcnt vmcnt(2)
	ds_store_b8 v113, v130 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v113, v131 offset:1664
	ds_store_b8 v114, v135
	ds_store_b8 v115, v133
	s_waitcnt vmcnt(0)
	ds_store_b8 v113, v132 offset:1792
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1065 24                       ; ragged.py:1065:24
	scratch_load_b32 v17, off, off offset:32 ; 4-byte Folded Reload
	ds_load_u8 v39, v111 offset:320
	ds_load_u8 v40, v111 offset:256
	ds_load_u8 v174, v111 offset:336
	ds_load_u8 v175, v111 offset:272
	ds_load_u8 v141, v111 offset:352
	ds_load_u8 v142, v111 offset:288
	ds_load_u8 v122, v111 offset:368
	ds_load_u8 v123, v111 offset:304
	.loc	1 1060 15                       ; ragged.py:1060:15
	s_cmp_lt_i32 s6, s7
	.loc	1 1065 24                       ; ragged.py:1065:24
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v111 offset:448
	ds_load_u8 v126, v111 offset:384
	ds_load_u8 v178, v111 offset:464
	ds_load_u8 v179, v111 offset:400
	ds_load_u8 v145, v111 offset:480
	ds_load_u8 v146, v111 offset:416
	ds_load_u8 v124, v111 offset:496
	ds_load_u8 v125, v111 offset:432
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v40, v126, v40, 0xc0c0004
	ds_load_u8 v128, v111 offset:64
	ds_load_u8 v129, v111
	ds_load_u8 v184, v111 offset:80
	ds_load_u8 v151, v111 offset:96
	ds_load_u8 v126, v111 offset:112
	ds_load_u8 v185, v111 offset:16
	ds_load_u8 v152, v111 offset:32
	ds_load_u8 v127, v111 offset:48
	v_lshl_or_b32 v40, v40, 16, v39
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v123, v125, v124, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v129, v128, 0xc0c0004
	ds_load_u8 v131, v111 offset:192
	ds_load_u8 v132, v111 offset:128
	ds_load_u8 v188, v111 offset:208
	ds_load_u8 v190, v111 offset:144
	ds_load_u8 v156, v111 offset:224
	ds_load_u8 v157, v111 offset:160
	ds_load_u8 v128, v111 offset:240
	ds_load_u8 v129, v111 offset:176
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v124, v127, v126, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v131, 16, v130
	ds_load_u8 v231, v111 offset:960
	ds_load_u8 v233, v111 offset:896
	ds_load_u8 v222, v111 offset:1024
	ds_load_u8 v194, v111 offset:976
	ds_load_u8 v195, v111 offset:912
	ds_load_u8 v160, v111 offset:992
	ds_load_u8 v162, v111 offset:928
	ds_load_u8 v130, v111 offset:944
	ds_load_u8 v237, v111 offset:832
	ds_load_u8 v238, v111 offset:768
	ds_load_u8 v196, v111 offset:848
	ds_load_u8 v197, v111 offset:784
	ds_load_u8 v164, v111 offset:864
	ds_load_u8 v165, v111 offset:800
	ds_load_u8 v131, v111 offset:880
	ds_load_u8 v132, v111 offset:816
	ds_load_u8 v242, v111 offset:704
	ds_load_u8 v243, v111 offset:640
	ds_load_u8 v198, v111 offset:720
	ds_load_u8 v199, v111 offset:656
	ds_load_u8 v166, v111 offset:736
	ds_load_u8 v167, v111 offset:672
	ds_load_u8 v133, v111 offset:752
	ds_load_u8 v134, v111 offset:688
	ds_load_u8 v244, v111 offset:576
	ds_load_u8 v245, v111 offset:512
	ds_load_u8 v200, v111 offset:592
	ds_load_u8 v201, v111 offset:528
	ds_load_u8 v168, v111 offset:608
	ds_load_u8 v169, v111 offset:544
	ds_load_u8 v136, v111 offset:624
	ds_load_u8 v138, v111 offset:560
	ds_load_u8 v224, v111 offset:1216
	ds_load_u8 v225, v111 offset:1280
	ds_load_u8 v202, v111 offset:1232
	ds_load_u8 v203, v111 offset:1168
	ds_load_u8 v170, v111 offset:1248
	ds_load_u8 v171, v111 offset:1184
	ds_load_u8 v135, v111 offset:1264
	ds_load_u8 v137, v111 offset:1200
	ds_load_u8 v227, v111 offset:1152
	ds_load_u8 v228, v111 offset:1088
	ds_load_u8 v204, v111 offset:1104
	ds_load_u8 v205, v111 offset:1040
	ds_load_u8 v172, v111 offset:1120
	ds_load_u8 v173, v111 offset:1056
	ds_load_u8 v139, v111 offset:1136
	ds_load_u8 v140, v111 offset:1072
	ds_load_u8 v232, v111 offset:1472
	ds_load_u8 v223, v111 offset:1536
	ds_load_u8 v206, v111 offset:1488
	ds_load_u8 v207, v111 offset:1424
	ds_load_u8 v176, v111 offset:1504
	ds_load_u8 v177, v111 offset:1440
	ds_load_u8 v143, v111 offset:1520
	ds_load_u8 v144, v111 offset:1456
	ds_load_u8 v236, v111 offset:1408
	ds_load_u8 v239, v111 offset:1344
	ds_load_u8 v208, v111 offset:1360
	ds_load_u8 v210, v111 offset:1296
	ds_load_u8 v180, v111 offset:1376
	ds_load_u8 v182, v111 offset:1312
	ds_load_u8 v148, v111 offset:1392
	ds_load_u8 v150, v111 offset:1328
	ds_load_u8 v226, v111 offset:1984
	ds_load_u8 v209, v111 offset:2000
	ds_load_u8 v211, v111 offset:1936
	ds_load_u8 v181, v111 offset:2016
	ds_load_u8 v183, v111 offset:1952
	s_waitcnt lgkmcnt(62)
	v_perm_b32 v125, v129, v128, 0xc0c0004
	s_waitcnt vmcnt(0)
	ds_load_u8 v155, v17
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v147, v17
	ds_load_u8 v149, v111 offset:1968
	ds_load_u8 v229, v111 offset:1920
	ds_load_u8 v230, v111 offset:1856
	ds_load_u8 v212, v111 offset:1872
	ds_load_u8 v213, v111 offset:1808
	ds_load_u8 v186, v111 offset:1888
	ds_load_u8 v187, v111 offset:1824
	ds_load_u8 v153, v111 offset:1904
	ds_load_u8 v154, v111 offset:1840
	ds_load_u8 v234, v111 offset:1728
	ds_load_u8 v235, v111 offset:1792
	ds_load_u8 v214, v111 offset:1744
	ds_load_u8 v215, v111 offset:1680
	ds_load_u8 v189, v111 offset:1760
	ds_load_u8 v191, v111 offset:1696
	ds_load_u8 v158, v111 offset:1776
	ds_load_u8 v159, v111 offset:1712
	ds_load_u8 v240, v111 offset:1664
	ds_load_u8 v241, v111 offset:1600
	ds_load_u8 v216, v111 offset:1616
	ds_load_u8 v217, v111 offset:1552
	ds_load_u8 v192, v111 offset:1632
	ds_load_u8 v193, v111 offset:1568
	ds_load_u8 v161, v111 offset:1648
	ds_load_u8 v163, v111 offset:1584
	.loc	1 1064 26                       ; ragged.py:1064:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v113, v10
	ds_store_b8 v113, v11 offset:128
	ds_store_b8 v113, v12 offset:256
	ds_store_b8 v113, v13 offset:384
	ds_store_b8 v113, v220 offset:512
	ds_store_b8 v113, v221 offset:640
	ds_store_b8 v113, v108 offset:768
	ds_store_b8 v113, v109 offset:1024
	ds_store_b8 v113, v246 offset:1152
	ds_store_b8 v113, v247 offset:1280
	ds_store_b8 v113, v248 offset:1408
	ds_store_b8 v113, v249 offset:1536
	ds_store_b8 v113, v250 offset:1664
	ds_store_b8 v113, v251 offset:1792
	ds_store_b8 v113, v252 offset:2048
	ds_store_b8 v113, v253 offset:2176
	ds_store_b8 v113, v254 offset:2304
	ds_store_b8 v113, v255 offset:2432
	ds_store_b8 v113, v98 offset:2560
	ds_store_b8 v113, v66 offset:2688
	ds_store_b8 v113, v110 offset:2816
	ds_store_b8 v113, v0 offset:3072
	ds_store_b8 v113, v117 offset:3200
	ds_store_b8 v113, v118 offset:3328
	ds_store_b8 v113, v119 offset:3456
	ds_store_b8 v113, v120 offset:3584
	ds_store_b8 v113, v14 offset:3712
	ds_store_b8 v114, v218
	ds_store_b8 v115, v219
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v116
	ds_store_b8 v113, v15 offset:3840
	scratch_load_b32 v0, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1065 24                       ; ragged.py:1065:24
	ds_load_u8 v0, v112 offset:640
	ds_load_u8 v10, v112 offset:512
	ds_load_u8 v218, v112 offset:960
	ds_load_u8 v219, v112 offset:832
	ds_load_u8 v220, v112 offset:704
	ds_load_u8 v221, v112 offset:576
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v10, v0, 0xc0c0004
	ds_load_u8 v10, v112 offset:896
	ds_load_u8 v11, v112 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	ds_load_u8 v11, v112 offset:128
	ds_load_u8 v12, v112
	ds_load_u8 v13, v112 offset:448
	ds_load_u8 v14, v112 offset:320
	ds_load_u8 v15, v112 offset:192
	ds_load_u8 v16, v112 offset:64
	v_lshl_or_b32 v247, v10, 16, v0
	v_perm_b32 v0, v238, v237, 0xc0c0004
	v_perm_b32 v10, v233, v231, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v112 offset:384
	ds_load_u8 v66, v112 offset:256
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v15, v16, v15, 0xc0c0004
	v_perm_b32 v16, v190, v188, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v254, v13, 16, v15
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v12, v66, v12, 0xc0c0004
	v_lshl_or_b32 v246, v12, 16, v11
	v_perm_b32 v11, v245, v244, 0xc0c0004
	v_perm_b32 v12, v243, v242, 0xc0c0004
	v_lshl_or_b32 v243, v10, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v242, v12, 16, v11
	ds_load_u8 v0, v112 offset:1664
	ds_load_u8 v10, v112 offset:1536
	ds_load_u8 v11, v112 offset:1984
	ds_load_u8 v12, v112 offset:1856
	ds_load_u8 v66, v112 offset:1728
	ds_load_u8 v98, v112 offset:1600
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v10, v0, 0xc0c0004
	ds_load_u8 v10, v112 offset:1920
	ds_load_u8 v108, v112 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v108, v10, 0xc0c0004
	ds_load_u8 v108, v112 offset:1152
	ds_load_u8 v109, v112 offset:1024
	ds_load_u8 v110, v112 offset:1472
	ds_load_u8 v116, v112 offset:1344
	ds_load_u8 v117, v112 offset:1216
	ds_load_u8 v118, v112 offset:1088
	v_lshl_or_b32 v245, v10, 16, v0
	v_perm_b32 v0, v225, v239, 0xc0c0004
	v_perm_b32 v10, v236, v232, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v249, v10, 16, v0
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v112 offset:1408
	ds_load_u8 v119, v112 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v119, v109, 0xc0c0004
	ds_load_u8 v0, v112 offset:2688
	ds_load_u8 v10, v112 offset:2560
	ds_load_u8 v119, v112 offset:3008
	ds_load_u8 v120, v112 offset:2880
	ds_load_u8 v237, v112 offset:2752
	ds_load_u8 v238, v112 offset:2624
	v_lshl_or_b32 v244, v109, 16, v108
	v_perm_b32 v108, v222, v228, 0xc0c0004
	v_perm_b32 v109, v227, v224, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v248, v109, 16, v108
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v10, v0, 0xc0c0004
	ds_load_u8 v10, v112 offset:2944
	ds_load_u8 v108, v112 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v108, v10, 0xc0c0004
	ds_load_u8 v108, v112 offset:2176
	ds_load_u8 v109, v112 offset:2048
	ds_load_u8 v17, v112 offset:2496
	ds_load_u8 v18, v112 offset:2368
	ds_load_u8 v19, v112 offset:2240
	ds_load_u8 v20, v112 offset:2112
	v_lshl_or_b32 v251, v10, 16, v0
	v_perm_b32 v0, v235, v230, 0xc0c0004
	v_perm_b32 v10, v229, v226, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v112 offset:2432
	ds_load_u8 v222, v112 offset:2304
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v13, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v222, v109, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v250, v109, 16, v108
	v_perm_b32 v108, v223, v241, 0xc0c0004
	v_perm_b32 v109, v240, v234, 0xc0c0004
	v_lshl_or_b32 v240, v10, 16, v0
	ds_load_u8 v0, v112 offset:3712
	ds_load_u8 v10, v112 offset:3584
	ds_load_u8 v241, v112 offset:4032
	ds_load_u8 v21, v112 offset:3904
	ds_load_u8 v22, v112 offset:3776
	ds_load_u8 v23, v112 offset:3648
	v_wmma_i32_16x16x16_iu4 v[229:236], v[246:247], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v239, v109, 16, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[229:236], v[244:245], v[242:243], v[229:236] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[229:236], v[250:251], v[248:249], v[229:236] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v10, v0, 0xc0c0004
	ds_load_u8 v10, v112 offset:3968
	ds_load_u8 v108, v112 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v108, v10, 0xc0c0004
	ds_load_u8 v108, v112 offset:3200
	ds_load_u8 v109, v112 offset:3072
	ds_load_u8 v24, v112 offset:3520
	ds_load_u8 v25, v112 offset:3392
	ds_load_u8 v26, v112 offset:3264
	ds_load_u8 v27, v112 offset:3136
	v_lshl_or_b32 v253, v10, 16, v0
	v_perm_b32 v0, v221, v220, 0xc0c0004
	v_perm_b32 v10, v219, v218, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v255, v10, 16, v0
	v_perm_b32 v0, v98, v66, 0xc0c0004
	v_perm_b32 v10, v12, v11, 0xc0c0004
	v_perm_b32 v11, v118, v117, 0xc0c0004
	v_perm_b32 v12, v116, v110, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	ds_load_u8 v109, v112 offset:3456
	ds_load_u8 v222, v112 offset:3328
	v_perm_b32 v98, v142, v141, 0xc0c0004
	v_perm_b32 v110, v146, v145, 0xc0c0004
	v_perm_b32 v116, v152, v151, 0xc0c0004
	v_perm_b32 v117, v157, v156, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v14, v27, v26, 0xc0c0004
	v_perm_b32 v15, v25, v24, 0xc0c0004
	v_lshl_or_b32 v142, v110, 16, v98
	v_perm_b32 v98, v165, v164, 0xc0c0004
	v_lshl_or_b32 v141, v117, 16, v116
	v_perm_b32 v110, v162, v160, 0xc0c0004
	v_perm_b32 v116, v169, v168, 0xc0c0004
	v_perm_b32 v117, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v146, v110, 16, v98
	v_perm_b32 v98, v182, v180, 0xc0c0004
	v_lshl_or_b32 v145, v117, 16, v116
	v_perm_b32 v110, v177, v176, 0xc0c0004
	v_perm_b32 v116, v173, v172, 0xc0c0004
	v_perm_b32 v117, v171, v170, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[246:247], v[141:142], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v222, v109, 0xc0c0004
	v_lshl_or_b32 v152, v110, 16, v98
	v_lshl_or_b32 v151, v117, 16, v116
	v_perm_b32 v98, v187, v186, 0xc0c0004
	v_perm_b32 v110, v183, v181, 0xc0c0004
	v_perm_b32 v116, v193, v192, 0xc0c0004
	v_perm_b32 v117, v191, v189, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[244:245], v[145:146], v[164:171] neg_lo:[1,1,0]
	v_lshl_or_b32 v252, v109, 16, v108
	v_lshl_or_b32 v157, v110, 16, v98
	v_lshl_or_b32 v109, v10, 16, v0
	v_lshl_or_b32 v156, v117, 16, v116
	v_wmma_i32_16x16x16_iu4 v[164:171], v[250:251], v[151:152], v[164:171] neg_lo:[1,1,0]
	v_lshl_or_b32 v108, v12, 16, v11
	v_perm_b32 v0, v238, v237, 0xc0c0004
	v_perm_b32 v10, v120, v119, 0xc0c0004
	v_perm_b32 v12, v20, v19, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[164:171], v[252:253], v[156:157], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[229:236], v[252:253], v[239:240], v[229:236] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v11, v10, 16, v0
	v_lshl_or_b32 v10, v13, 16, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v98, v164
	v_cvt_f32_i32_e32 v110, v165
	v_cvt_f32_i32_e32 v116, v166
	v_cvt_f32_i32_e32 v117, v167
	v_cvt_f32_i32_e32 v118, v168
	v_cvt_f32_i32_e32 v119, v169
	v_cvt_f32_i32_e32 v120, v170
	v_cvt_f32_i32_e32 v160, v171
	v_wmma_i32_16x16x16_iu4 v[164:171], v[254:255], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v142, v123, 16, v122
	v_lshl_or_b32 v141, v125, 16, v124
	v_perm_b32 v122, v138, v136, 0xc0c0004
	v_perm_b32 v123, v134, v133, 0xc0c0004
	v_perm_b32 v124, v132, v131, 0xc0c0004
	v_perm_b32 v125, v130, v155, 0xc0c0004
	v_perm_b32 v0, v23, v22, 0xc0c0004
	v_perm_b32 v12, v21, v241, 0xc0c0004
	v_lshl_or_b32 v130, v123, 16, v122
	v_perm_b32 v122, v150, v148, 0xc0c0004
	v_lshl_or_b32 v131, v125, 16, v124
	v_perm_b32 v123, v144, v143, 0xc0c0004
	v_perm_b32 v124, v140, v139, 0xc0c0004
	v_perm_b32 v125, v137, v135, 0xc0c0004
	v_lshl_or_b32 v13, v12, 16, v0
	v_lshl_or_b32 v12, v15, 16, v14
	v_perm_b32 v0, v175, v174, 0xc0c0004
	v_perm_b32 v14, v179, v178, 0xc0c0004
	v_perm_b32 v15, v185, v184, 0xc0c0004
	v_lshl_or_b32 v133, v123, 16, v122
	v_lshl_or_b32 v132, v125, 16, v124
	v_perm_b32 v122, v163, v161, 0xc0c0004
	v_perm_b32 v123, v159, v158, 0xc0c0004
	v_perm_b32 v124, v154, v153, 0xc0c0004
	v_perm_b32 v125, v149, v147, 0xc0c0004
	v_lshl_or_b32 v175, v14, 16, v0
	v_lshl_or_b32 v174, v16, 16, v15
	v_perm_b32 v0, v197, v196, 0xc0c0004
	v_perm_b32 v14, v195, v194, 0xc0c0004
	v_perm_b32 v15, v201, v200, 0xc0c0004
	v_perm_b32 v16, v199, v198, 0xc0c0004
	v_lshl_or_b32 v134, v123, 16, v122
	v_lshl_or_b32 v135, v125, 16, v124
	v_wmma_i32_16x16x16_iu4 v[122:129], v[246:247], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v179, v14, 16, v0
	v_lshl_or_b32 v178, v16, 16, v15
	v_perm_b32 v0, v210, v208, 0xc0c0004
	v_perm_b32 v14, v207, v206, 0xc0c0004
	v_perm_b32 v15, v205, v204, 0xc0c0004
	v_perm_b32 v16, v203, v202, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[194:201], v[246:247], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[244:245], v[130:131], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v185, v14, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v184, v16, 16, v15
	v_perm_b32 v0, v213, v212, 0xc0c0004
	v_perm_b32 v14, v211, v209, 0xc0c0004
	v_perm_b32 v15, v217, v216, 0xc0c0004
	v_perm_b32 v16, v215, v214, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[194:201], v[244:245], v[178:179], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[250:251], v[132:133], v[122:129] neg_lo:[1,1,0]
	v_lshl_or_b32 v203, v14, 16, v0
	v_cvt_f32_i32_e32 v227, v231
	v_lshl_or_b32 v202, v16, 16, v15
	v_wmma_i32_16x16x16_iu4 v[194:201], v[250:251], v[184:185], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[252:253], v[134:135], v[122:129] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v226, v232
	v_cvt_f32_i32_e32 v225, v233
	v_cvt_f32_i32_e32 v224, v234
	v_wmma_i32_16x16x16_iu4 v[194:201], v[252:253], v[202:203], v[194:201] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v136, v122
	v_cvt_f32_i32_e32 v137, v123
	v_cvt_f32_i32_e32 v138, v124
	v_cvt_f32_i32_e32 v139, v125
	v_cvt_f32_i32_e32 v140, v126
	v_cvt_f32_i32_e32 v143, v127
	v_cvt_f32_i32_e32 v144, v128
	v_cvt_f32_i32_e32 v147, v129
	v_wmma_i32_16x16x16_iu4 v[122:129], v[254:255], v[141:142], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v223, v235
	v_cvt_f32_i32_e32 v222, v236
	v_wmma_i32_16x16x16_iu4 v[231:238], v[254:255], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v0, v194
	v_cvt_f32_i32_e32 v14, v195
	v_cvt_f32_i32_e32 v15, v196
	v_cvt_f32_i32_e32 v16, v197
	v_cvt_f32_i32_e32 v17, v198
	v_cvt_f32_i32_e32 v18, v199
	v_cvt_f32_i32_e32 v19, v200
	v_cvt_f32_i32_e32 v20, v201
	v_wmma_i32_16x16x16_iu4 v[194:201], v[254:255], v[174:175], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[122:129], v[108:109], v[130:131], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[108:109], v[242:243], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[108:109], v[145:146], v[164:171] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[194:201], v[108:109], v[178:179], v[194:201] neg_lo:[1,1,0]
	v_mov_b32_e32 v142, v28
	v_wmma_i32_16x16x16_iu4 v[122:129], v[10:11], v[132:133], v[122:129] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[231:238], v[10:11], v[248:249], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[10:11], v[151:152], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[194:201], v[10:11], v[184:185], v[194:201] neg_lo:[1,1,0]
	v_mov_b32_e32 v28, v29
	v_wmma_i32_16x16x16_iu4 v[122:129], v[12:13], v[134:135], v[122:129] neg_lo:[1,1,0]
	v_mov_b32_e32 v29, v30
	v_wmma_i32_16x16x16_iu4 v[231:238], v[12:13], v[239:240], v[231:238] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[194:201], v[12:13], v[202:203], v[194:201] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[12:13], v[156:157], v[164:171] neg_lo:[1,1,0]
	v_cvt_f32_i32_e32 v13, v125
	.loc	1 1080 32                       ; ragged.py:1080:32
	v_add_lshl_u32 v125, v9, s17, 1
	.loc	1 1065 24                       ; ragged.py:1065:24
	v_cvt_f32_i32_e32 v10, v122
	.loc	1 1075 32                       ; ragged.py:1075:32
	v_add_lshl_u32 v122, v107, s16, 1
	.loc	1 1065 24                       ; ragged.py:1065:24
	v_cvt_f32_i32_e32 v11, v123
	.loc	1 1075 32                       ; ragged.py:1075:32
	v_add_lshl_u32 v123, v142, s16, 1
	.loc	1 1065 24                       ; ragged.py:1065:24
	v_cvt_f32_i32_e32 v12, v124
	.loc	1 1075 32                       ; ragged.py:1075:32
	v_add_lshl_u32 v124, v28, s16, 1
	.loc	1 1065 24                       ; ragged.py:1065:24
	v_cvt_f32_i32_e32 v108, v126
	.loc	1 1075 32                       ; ragged.py:1075:32
	v_add_lshl_u32 v126, v29, s16, 1
	.loc	1 1080 32                       ; ragged.py:1080:32
	v_cndmask_b32_e32 v125, 0x80000000, v125, vcc_lo
	.loc	1 1075 32                       ; ragged.py:1075:32
	v_cndmask_b32_e64 v122, 0x80000000, v122, s5
	v_cndmask_b32_e64 v123, 0x80000000, v123, s4
	v_cndmask_b32_e64 v124, 0x80000000, v124, s3
	v_cndmask_b32_e64 v126, 0x80000000, v126, s2
	.loc	1 1080 32                       ; ragged.py:1080:32
	buffer_load_u16 v125, v125, s[12:15], 0 offen
	.loc	1 1075 32                       ; ragged.py:1075:32
	s_clause 0x3
	buffer_load_u16 v122, v122, s[36:39], 0 offen
	buffer_load_u16 v132, v123, s[36:39], 0 offen
	buffer_load_u16 v133, v124, s[36:39], 0 offen
	buffer_load_u16 v134, v126, s[36:39], 0 offen
	.loc	1 1085 20                       ; ragged.py:1085:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v30, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 1065 24                       ; ragged.py:1065:24
	v_cvt_f32_i32_e32 v109, v127
	v_cvt_f32_i32_e32 v130, v128
	v_cvt_f32_i32_e32 v131, v129
	v_cvt_f32_i32_e32 v218, v237
	v_cvt_f32_i32_e32 v26, v199
	v_cvt_f32_i32_e32 v229, v229
	v_cvt_f32_i32_e32 v39, v235
	v_cvt_f32_i32_e32 v228, v230
	v_cvt_f32_i32_e32 v66, v201
	v_cvt_f32_i32_e32 v157, v169
	v_cvt_f32_i32_e32 v230, v232
	v_cvt_f32_i32_e32 v145, v164
	v_cvt_f32_i32_e32 v164, v171
	v_cvt_f32_i32_e32 v231, v231
	v_cvt_f32_i32_e32 v221, v233
	v_cvt_f32_i32_e32 v220, v234
	v_cvt_f32_i32_e32 v156, v168
	v_cvt_f32_i32_e32 v21, v194
	v_cvt_f32_i32_e32 v22, v195
	v_cvt_f32_i32_e32 v162, v170
	v_cvt_f32_i32_e32 v23, v196
	v_cvt_f32_i32_e32 v24, v197
	v_cvt_f32_i32_e32 v146, v165
	v_cvt_f32_i32_e32 v151, v166
	v_cvt_f32_i32_e32 v152, v167
	v_cvt_f32_i32_e32 v40, v236
	v_cvt_f32_i32_e32 v219, v238
	v_cvt_f32_i32_e32 v25, v198
	v_cvt_f32_i32_e32 v27, v200
	.loc	1 1080 32                       ; ragged.py:1080:32
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v123, 16, v125
	.loc	1 1075 32                       ; ragged.py:1075:32
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v135, 16, v122
	.loc	1 1085 20                       ; ragged.py:1085:20
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v141, v229, v135 :: v_dual_lshlrev_b32 v132, 16, v132
	s_waitcnt vmcnt(0)
	ds_store_b32 v30, v123
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[122:125], v121
	ds_load_b128 v[126:129], v121 offset:16
	v_mul_f32_e32 v0, v0, v132
	.loc	1 1085 13 is_stmt 0             ; ragged.py:1085:13
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v89, v0, v122 :: v_dual_mul_f32 v0, v14, v132
	v_dual_fmac_f32 v100, v141, v122 :: v_dual_mul_f32 v141, v228, v135
	v_fmac_f32_e32 v88, v0, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v0, v15, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v106, v141, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v141, v227, v135
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v87, v0, v124
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v0, v16, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v105, v141, v124
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v141, v226, v135
	v_mul_f32_e32 v16, v26, v132
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v86, v0, v125
	.loc	1 1075 32 is_stmt 1             ; ragged.py:1075:32
	v_lshlrev_b32_e32 v0, 16, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v104, v141, v125
	.loc	1 1085 20 is_stmt 0             ; ragged.py:1085:20
	v_mul_f32_e32 v14, v98, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v73, v14, v122
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v14, v110, v0
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v72, v14, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v14, v116, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v71, v14, v124
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v14, v117, v0
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v70, v14, v125
	.loc	1 1075 32 is_stmt 1             ; ragged.py:1075:32
	v_lshlrev_b32_e32 v14, 16, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v136, v14
	.loc	1 1085 13 is_stmt 0             ; ragged.py:1085:13
	v_fmac_f32_e32 v56, v15, v122
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v137, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v55, v15, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v138, v14
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v54, v15, v124
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v139, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v53, v15, v125
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v225, v135
	.loc	1 1085 13                       ; ragged.py:1085:13
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v103, v15, v126
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v224, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v102, v15, v127
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v223, v135
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v101, v15, v128
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v222, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v99, v15, v129
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v17, v132
	v_mul_f32_e32 v17, v27, v132
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v85, v15, v126
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v18, v132
	v_mul_f32_e32 v18, v66, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v84, v15, v127
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v19, v132
	v_mul_f32_e32 v19, v156, v0
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v83, v15, v128
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_dual_mul_f32 v15, v20, v132 :: v_dual_mul_f32 v10, v10, v14
	v_mul_f32_e32 v20, v157, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_dual_fmac_f32 v82, v15, v129 :: v_dual_mul_f32 v15, v118, v0
	v_fmac_f32_e32 v69, v15, v126
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v119, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_dual_fmac_f32 v68, v15, v127 :: v_dual_mul_f32 v15, v120, v0
	v_fmac_f32_e32 v67, v15, v128
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v160, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v65, v15, v129
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v140, v14
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v52, v15, v126
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v143, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v51, v15, v127
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v144, v14
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v50, v15, v128
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v147, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v49, v15, v129
	.loc	1 1085 20                       ; ragged.py:1085:20
	ds_load_b128 v[122:125], v121 offset:256
	ds_load_b128 v[126:129], v121 offset:272
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v15, v231, v135 :: v_dual_fmac_f32 v48, v10, v122
	.loc	1 1085 13                       ; ragged.py:1085:13
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v74, v18, v129 :: v_dual_fmac_f32 v97, v15, v122
	v_fmac_f32_e32 v76, v16, v127
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_dual_mul_f32 v15, v230, v135 :: v_dual_fmac_f32 v60, v19, v126
	v_dual_mul_f32 v10, v11, v14 :: v_dual_fmac_f32 v75, v17, v128
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v59, v20, v127
	v_fmac_f32_e32 v96, v15, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v221, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_dual_fmac_f32 v47, v10, v123 :: v_dual_mul_f32 v10, v12, v14
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v11, v40, v135
	v_dual_mul_f32 v12, v218, v135 :: v_dual_fmac_f32 v95, v15, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v15, v220, v135 :: v_dual_fmac_f32 v46, v10, v124
	v_dual_mul_f32 v10, v13, v14 :: v_dual_mul_f32 v13, v219, v135
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v92, v11, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v94, v15, v125 :: v_dual_mul_f32 v15, v21, v132
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v21, v162, v0
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_dual_fmac_f32 v43, v10, v125 :: v_dual_mul_f32 v10, v39, v135
	v_fmac_f32_e32 v91, v12, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v81, v15, v122 :: v_dual_fmac_f32 v58, v21, v128
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_dual_mul_f32 v15, v22, v132 :: v_dual_mul_f32 v22, v108, v14
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_dual_fmac_f32 v93, v10, v126 :: v_dual_fmac_f32 v90, v13, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v80, v15, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v23, v132
	v_mul_f32_e32 v23, v109, v14
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_dual_fmac_f32 v42, v22, v126 :: v_dual_fmac_f32 v79, v15, v124
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_dual_mul_f32 v15, v24, v132 :: v_dual_mul_f32 v24, v130, v14
	v_mul_f32_e32 v14, v131, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v41, v23, v127
	v_dual_fmac_f32 v78, v15, v125 :: v_dual_mul_f32 v15, v145, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v45, v24, v128 :: v_dual_fmac_f32 v44, v14, v129
	v_dual_fmac_f32 v64, v15, v122 :: v_dual_mul_f32 v15, v146, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v63, v15, v123
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v151, v0
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v62, v15, v124
	.loc	1 1085 20                       ; ragged.py:1085:20
	v_mul_f32_e32 v15, v152, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v0, v164, v0 :: v_dual_fmac_f32 v61, v15, v125
	v_mul_f32_e32 v15, v25, v132
	.loc	1 1085 13                       ; ragged.py:1085:13
	v_fmac_f32_e32 v57, v0, v129
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v77, v15, v126
	.loc	1 1060 15 is_stmt 1             ; ragged.py:1060:15
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 15 is_stmt 0                ; ragged.py:0:15
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:188
	scratch_load_b32 v12, off, off offset:192
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v19, 15, v0
.LBB0_7:                                ; %._crit_edge
	.loc	1 1051 36 is_stmt 1             ; ragged.py:1051:36
	v_lshrrev_b32_e32 v0, 4, v0
	.loc	1 1088 23                       ; ragged.py:1088:23
	s_mul_i32 s26, s26, s34
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	.loc	1 1089 18 is_stmt 0             ; ragged.py:1089:18
	s_add_i32 s15, s27, s26
	s_mov_b32 s27, 0x31027000
	.loc	1 1051 36 is_stmt 1             ; ragged.py:1051:36
	s_waitcnt vmcnt(0)
	v_and_or_b32 v4, v0, 1, v12
	.loc	1 1089 18                       ; ragged.py:1089:18
	s_mul_i32 s15, s15, s35
	s_mov_b32 s26, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v7, 0x48, v4
	v_or_b32_e32 v0, 0x4e, v4
	v_or_b32_e32 v10, 0x42, v4
	v_or_b32_e32 v8, 0x46, v4
	v_or_b32_e32 v9, 0x44, v4
	.loc	1 1051 18 is_stmt 0             ; ragged.py:1051:18
	v_or_b32_e32 v11, s40, v7
	v_or_b32_e32 v1, s40, v0
	v_or_b32_e32 v14, s40, v10
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v15, 8, v4
	v_or_b32_e32 v5, 0x4c, v4
	.loc	1 1053 20 is_stmt 1             ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s6, s35, v11
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v11, 64, v4
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v1
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v12, s40, v8
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v14, 10, v4
	.loc	1 1051 18 is_stmt 0             ; ragged.py:1051:18
	v_or_b32_e32 v1, s40, v11
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v6, 0x4a, v4
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v13, s40, v9
	v_or_b32_e32 v2, s40, v5
	.loc	1 1053 20 is_stmt 1             ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s7, s35, v12
	v_cmp_gt_i32_e64 s10, s35, v1
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v1, s40, v15
	.loc	1 1051 36 is_stmt 0             ; ragged.py:1051:36
	v_or_b32_e32 v12, 14, v4
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v16, s40, v14
	v_or_b32_e32 v3, s40, v6
	.loc	1 1053 20 is_stmt 1             ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s8, s35, v13
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v13, 12, v4
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1089 18                       ; ragged.py:1089:18
	v_mul_lo_u32 v1, s35, v19
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s0, s35, v2
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v2, s40, v12
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s13, s35, v16
	.loc	1 1051 36                       ; ragged.py:1051:36
	v_or_b32_e32 v16, 6, v4
	v_or_b32_e32 v18, 2, v4
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s1, s35, v3
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v3, s40, v13
	.loc	1 1051 36 is_stmt 0             ; ragged.py:1051:36
	v_or_b32_e32 v17, 4, v4
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v20, s40, v4
	.loc	1 1053 20 is_stmt 1             ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s11, s35, v2
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v2, s40, v16
	v_or_b32_e32 v19, s40, v18
	.loc	1 1089 18                       ; ragged.py:1089:18
	v_add3_u32 v1, s15, s40, v1
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s12, s35, v3
	.loc	1 1051 18                       ; ragged.py:1051:18
	v_or_b32_e32 v3, s40, v17
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s18, s35, v20
	v_cmp_gt_i32_e64 s15, s35, v2
	v_cmp_gt_i32_e64 s17, s35, v19
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v2, v1, v4, 2
	.loc	1 1053 20                       ; ragged.py:1053:20
	v_cmp_gt_i32_e64 s16, s35, v3
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v1, v18, 2
	.loc	1 1089 47 is_stmt 0             ; ragged.py:1089:47
	s_and_b32 s19, s5, s18
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v1, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v2, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s17
	.loc	1 1089 18                       ; ragged.py:1089:18
	v_add_nc_u32_e32 v19, s33, v1
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v23, 0x80000000, v3, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s16
	.loc	1 1089 18                       ; ragged.py:1089:18
	v_mad_u64_u32 v[2:3], null, s35, 48, v[1:2]
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	v_add_lshl_u32 v3, v1, v16, 2
	s_clause 0x2
	buffer_store_b32 v100, v22, s[24:27], 0 offen
	buffer_store_b32 v106, v23, s[24:27], 0 offen
	buffer_store_b32 v105, v21, s[24:27], 0 offen
	v_add_lshl_u32 v21, v1, v15, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s15
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v22, v1, v14, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s14
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v23, v1, v13, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s13
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v104, v3, s[24:27], 0 offen
	buffer_store_b32 v103, v21, s[24:27], 0 offen
	v_add_lshl_u32 v3, v1, v12, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s12
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v1, v11, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s11
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v102, v22, s[24:27], 0 offen
	buffer_store_b32 v101, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s10
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v22, v1, v10, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	v_add_lshl_u32 v23, v1, v9, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s9
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v99, v3, s[24:27], 0 offen
	buffer_store_b32 v97, v21, s[24:27], 0 offen
	v_add_lshl_u32 v3, v1, v8, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s8
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v1, v7, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s7
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v96, v22, s[24:27], 0 offen
	buffer_store_b32 v95, v23, s[24:27], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s6
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v22, v1, v6, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s19
	.loc	1 1089 18                       ; ragged.py:1089:18
	v_lshl_add_u32 v20, s35, 5, v1
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v23, v1, v5, 2
	v_add_lshl_u32 v1, v1, v0, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s1
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v94, v3, s[24:27], 0 offen
	buffer_store_b32 v93, v21, s[24:27], 0 offen
	v_add_lshl_u32 v3, v19, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s19
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s19, s5, s0
	s_and_b32 s5, s5, vcc_lo
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s19
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s18
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	s_clause 0x1
	buffer_store_b32 v92, v22, s[24:27], 0 offen
	buffer_store_b32 v91, v23, s[24:27], 0 offen
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s17
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v90, v1, s[24:27], 0 offen
	buffer_store_b32 v89, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s16
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v19, v15, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s15
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v88, v21, s[24:27], 0 offen
	buffer_store_b32 v87, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s14
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v19, v14, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	v_add_lshl_u32 v22, v19, v13, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s13
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v86, v1, s[24:27], 0 offen
	buffer_store_b32 v85, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s12
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s11
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v84, v21, s[24:27], 0 offen
	buffer_store_b32 v83, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s10
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s9
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v82, v1, s[24:27], 0 offen
	buffer_store_b32 v81, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s8
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s7
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v80, v21, s[24:27], 0 offen
	buffer_store_b32 v79, v22, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s6
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	v_add_lshl_u32 v22, v19, v5, 2
	s_clause 0x1
	buffer_store_b32 v78, v1, s[24:27], 0 offen
	buffer_store_b32 v77, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v19, v0, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s1
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v20, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s5
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s5, s4, s0
	s_and_b32 s4, s4, vcc_lo
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v22, 0x80000000, v22, s5
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s18
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_store_b32 v76, v21, s[24:27], 0 offen
	buffer_store_b32 v75, v22, s[24:27], 0 offen
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s17
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v74, v1, s[24:27], 0 offen
	buffer_store_b32 v73, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s16
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v20, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s15
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v72, v19, s[24:27], 0 offen
	buffer_store_b32 v71, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s14
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v19, v20, v14, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_add_lshl_u32 v21, v20, v13, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s13
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v70, v1, s[24:27], 0 offen
	buffer_store_b32 v69, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s12
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s11
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v68, v19, s[24:27], 0 offen
	buffer_store_b32 v67, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s10
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s9
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v65, v1, s[24:27], 0 offen
	buffer_store_b32 v64, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s8
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v3, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s7
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v63, v19, s[24:27], 0 offen
	buffer_store_b32 v62, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s6
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	s_clause 0x1
	buffer_store_b32 v61, v1, s[24:27], 0 offen
	buffer_store_b32 v60, v3, s[24:27], 0 offen
	v_add_lshl_u32 v1, v20, v0, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s1
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v21, v20, v5, 2
	v_add_lshl_u32 v3, v2, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s4
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s4, s3, s0
	s_and_b32 s3, s3, vcc_lo
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v4, v2, v18, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s18
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v17, v2, v17, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s17
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v59, v19, s[24:27], 0 offen
	buffer_store_b32 v58, v21, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s16
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v57, v1, s[24:27], 0 offen
	buffer_store_b32 v56, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v1, v2, v16, 2
	v_add_lshl_u32 v3, v2, v15, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s15
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v55, v4, s[24:27], 0 offen
	buffer_store_b32 v54, v17, s[24:27], 0 offen
	v_add_lshl_u32 v4, v2, v14, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s14
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v13, v2, v13, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s13
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v53, v1, s[24:27], 0 offen
	buffer_store_b32 v52, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s12
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v1, v2, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v3, v2, v11, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s11
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v51, v4, s[24:27], 0 offen
	buffer_store_b32 v50, v13, s[24:27], 0 offen
	v_add_lshl_u32 v4, v2, v10, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s10
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v9, v2, v9, 2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s9
	.loc	1 1089 9                        ; ragged.py:1089:9
	s_clause 0x1
	buffer_store_b32 v49, v1, s[24:27], 0 offen
	buffer_store_b32 v48, v3, s[24:27], 0 offen
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s8
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v1, v2, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v3, v2, v7, 2
	s_clause 0x1
	buffer_store_b32 v47, v4, s[24:27], 0 offen
	buffer_store_b32 v46, v9, s[24:27], 0 offen
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s7
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v4, v2, v6, 2
	v_add_lshl_u32 v5, v2, v5, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s3, s2, s6
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_add_lshl_u32 v0, v2, v0, 2
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s1, s2, s1
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 s0, s2, s0
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v2, 0x80000000, v4, s1
	.loc	1 1089 47                       ; ragged.py:1089:47
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1089 9                        ; ragged.py:1089:9
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x4
	buffer_store_b32 v43, v1, s[24:27], 0 offen
	buffer_store_b32 v42, v3, s[24:27], 0 offen
	buffer_store_b32 v41, v2, s[24:27], 0 offen
	buffer_store_b32 v45, v4, s[24:27], 0 offen
	buffer_store_b32 v44, v0, s[24:27], 0 offen
	.loc	1 1026 5 is_stmt 1              ; ragged.py:1026:5
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 200
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 54
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.numbered_sgpr, 54
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.private_seg_size, 200
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10932
; TotalNumSgprs: 56
; NumVgprs: 256
; ScratchSize: 200
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 56
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x2c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1042                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1043                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .offset:         60
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1
    .private_segment_fixed_size: 200
    .sgpr_count:     56
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_accum_tn_pc_evenk_float32_bm64_bn128_bk64_w4_s2_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 49
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
