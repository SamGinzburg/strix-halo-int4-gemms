	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[16:17], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s16, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s17, 0x7f
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 27
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 25
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 5
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s6, s5, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s7
	s_mul_hi_u32 s8, s7, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s5
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s6
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s5, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s18, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s18, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_ashr_i32 s10, s10, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_mul_i32 s11, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s9, 1
	s_sub_i32 s12, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s11, s9
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s11, s9
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s19, s18, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s7, s7, s10
	s_mov_b32 s9, 0
	s_sub_i32 s8, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s8, s6
	.loc	1 1001 17 is_stmt 0             ; ragged.py:1001:17
	s_sub_i32 s2, s2, s6
	.loc	1 1007 19 is_stmt 1             ; ragged.py:1007:19
	s_lshl_b64 s[6:7], s[18:19], 2
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s19, s2, 7
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s6
	s_addc_u32 s5, s5, s7
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v33, s19, v0
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s2, s[4:5], 0x0
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s22, s3, 5
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s2, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s4, s2, 31
	s_add_i32 s4, s2, s4
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s17, v33
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s21, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s22, s21
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_lshl_b32 s3, s17, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s9, -1
                                        ; implicit-def: $sgpr3
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x10
	s_load_b64 s[52:53], s[0:1], 0x28
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v71, 15, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_mov_b32_e32 v49, 0
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_lshl_b32 s20, s8, 5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_mad_u64_u32 v[34:35], null, s17, 3, v[33:34]
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 5, v0
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	v_and_b32_e32 v1, 31, v0
	.loc	1 1018 17                       ; ragged.py:1018:17
	v_add_nc_u32_e32 v72, 0, v71
	v_or_b32_e32 v5, 0x3f0, v0
	v_mul_lo_u32 v3, s16, v3
	v_mad_u64_u32 v[35:36], null, s17, 5, v[33:34]
	v_mad_u64_u32 v[36:37], null, s17, 6, v[33:34]
	v_mad_u64_u32 v[37:38], null, s17, 7, v[33:34]
	v_mad_u64_u32 v[38:39], null, s17, 9, v[33:34]
	v_mad_u64_u32 v[39:40], null, s17, 10, v[33:34]
	v_mad_u64_u32 v[40:41], null, s17, 11, v[33:34]
	v_mad_u64_u32 v[41:42], null, s17, 12, v[33:34]
	v_mad_u64_u32 v[42:43], null, s17, 13, v[33:34]
	v_mad_u64_u32 v[43:44], null, s17, 14, v[33:34]
	v_mad_u64_u32 v[44:45], null, s17, 15, v[33:34]
	v_mad_u64_u32 v[45:46], null, s17, 17, v[33:34]
	v_mad_u64_u32 v[46:47], null, s17, 18, v[33:34]
	v_mad_u64_u32 v[47:48], null, s17, 19, v[33:34]
	v_mad_u64_u32 v[48:49], null, s17, 20, v[33:34]
	v_mad_u64_u32 v[49:50], null, s17, 21, v[33:34]
	v_mad_u64_u32 v[50:51], null, s17, 22, v[33:34]
	v_mad_u64_u32 v[51:52], null, s17, 23, v[33:34]
	v_mad_u64_u32 v[52:53], null, s17, 24, v[33:34]
	v_mad_u64_u32 v[53:54], null, s17, 25, v[33:34]
	v_mad_u64_u32 v[54:55], null, s17, 26, v[33:34]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s20, v1
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v55, v1, v3, s20
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v2, 0x60, v0
	v_mad_u64_u32 v[56:57], null, s17, 27, v[33:34]
	v_mad_u64_u32 v[57:58], null, s17, 28, v[33:34]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v4
	v_or_b32_e32 v4, 0x380, v0
	v_or_b32_e32 v6, 0x780, v0
	v_or_b32_e32 v7, 0xb80, v0
	v_or_b32_e32 v8, 0xf80, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b32_e32 v2, 1, v2
	v_mad_u64_u32 v[58:59], null, s17, 29, v[33:34]
	v_mad_u64_u32 v[59:60], null, s17, 30, v[33:34]
	v_mad_u64_u32 v[60:61], null, s17, 31, v[33:34]
	s_lshl_b32 s3, s17, 4
	v_add_nc_u32_e32 v73, s17, v33
	v_lshl_add_u32 v74, s17, 1, v33
	v_lshl_add_u32 v75, s17, 2, v33
	v_lshl_add_u32 v76, s17, 3, v33
	v_add_nc_u32_e32 v77, s3, v33
	v_add_nc_u32_e32 v78, v72, v2
	v_add_nc_u32_e32 v79, 0, v4
	v_add_nc_u32_e32 v80, 0, v5
	v_add_nc_u32_e32 v81, 0, v6
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v82, 0, v7
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v83, 0, v8
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v84, 0, v0
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_lshl_b32 s0, s16, 2
	s_lshl_b32 s1, s16, 3
	s_mul_i32 s23, s16, 12
	s_lshl_b32 s24, s16, 4
	s_mul_i32 s25, s16, 20
	s_mul_i32 s26, s16, 24
	s_mul_i32 s27, s16, 28
	.loc	1 1021 39                       ; ragged.py:1021:39
	s_mul_i32 s28, s18, s8
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1028 42                       ; ragged.py:1028:42
	s_add_i32 s30, s22, s28
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s22, s22, 32
	v_mad_u64_u32 v[61:62], null, s30, s16, v[55:56]
	.loc	1 1029 42                       ; ragged.py:1029:42
	s_mul_i32 s29, s30, s17
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s22, s21
	.loc	1 1029 42                       ; ragged.py:1029:42
	v_add_nc_u32_e32 v62, s29, v33
	v_add_nc_u32_e32 v63, s29, v73
	v_add_nc_u32_e32 v64, s29, v74
	v_add_nc_u32_e32 v65, s29, v34
	v_add_nc_u32_e32 v66, s29, v75
	v_add_nc_u32_e32 v67, s29, v35
	v_add_nc_u32_e32 v68, s29, v36
	v_add_nc_u32_e32 v69, s29, v37
	v_add_nc_u32_e32 v70, s29, v76
	v_add_nc_u32_e32 v85, s29, v38
	v_add_nc_u32_e32 v86, s29, v39
	v_add_nc_u32_e32 v87, s29, v40
	v_add_nc_u32_e32 v88, s29, v41
	v_add_nc_u32_e32 v89, s29, v42
	v_add_nc_u32_e32 v90, s29, v43
	v_add_nc_u32_e32 v91, s29, v44
	v_add_nc_u32_e32 v92, s29, v77
	v_add_nc_u32_e32 v93, s29, v45
	v_add_nc_u32_e32 v94, s29, v46
	v_add_nc_u32_e32 v95, s29, v47
	v_add_nc_u32_e32 v96, s29, v48
	v_add_nc_u32_e32 v97, s29, v49
	v_add_nc_u32_e32 v98, s29, v50
	v_add_nc_u32_e32 v99, s0, v61
	v_add_nc_u32_e32 v106, s29, v51
	.loc	1 1029 34 is_stmt 0             ; ragged.py:1029:34
	v_cndmask_b32_e64 v62, 0x80000000, v62, s2
	.loc	1 1029 42                       ; ragged.py:1029:42
	v_add_nc_u32_e32 v107, s29, v52
	v_add_nc_u32_e32 v108, s29, v53
	v_add_nc_u32_e32 v109, s29, v54
	v_add_nc_u32_e32 v110, s29, v56
	v_add_nc_u32_e32 v111, s29, v57
	v_add_nc_u32_e32 v112, s29, v58
	v_add_nc_u32_e32 v113, s29, v59
	v_add_nc_u32_e32 v114, s29, v60
	v_add_nc_u32_e32 v100, s1, v61
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v63, 0x80000000, v63, s2
	v_add_nc_u32_e32 v101, s23, v61
	v_cndmask_b32_e64 v64, 0x80000000, v64, s2
	v_add_nc_u32_e32 v102, s24, v61
	v_add_nc_u32_e32 v103, s25, v61
	v_add_nc_u32_e32 v104, s26, v61
	v_add_nc_u32_e32 v105, s27, v61
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	.loc	1 1028 34 is_stmt 1             ; ragged.py:1028:34
	v_cndmask_b32_e32 v61, 0x80000000, v61, vcc_lo
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	v_cndmask_b32_e64 v69, 0x80000000, v69, s2
	v_cndmask_b32_e64 v70, 0x80000000, v70, s2
	v_cndmask_b32_e64 v85, 0x80000000, v85, s2
	v_cndmask_b32_e64 v86, 0x80000000, v86, s2
	v_cndmask_b32_e64 v87, 0x80000000, v87, s2
	v_cndmask_b32_e64 v88, 0x80000000, v88, s2
	v_cndmask_b32_e64 v89, 0x80000000, v89, s2
	v_cndmask_b32_e64 v90, 0x80000000, v90, s2
	v_cndmask_b32_e64 v91, 0x80000000, v91, s2
	v_cndmask_b32_e64 v92, 0x80000000, v92, s2
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_cndmask_b32_e64 v94, 0x80000000, v94, s2
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_cndmask_b32_e64 v106, 0x80000000, v106, s2
	v_cndmask_b32_e64 v107, 0x80000000, v107, s2
	v_cndmask_b32_e64 v108, 0x80000000, v108, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v111, 0x80000000, v111, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	s_clause 0x1f
	buffer_load_u8 v125, v62, s[12:15], 0 offen
	buffer_load_u8 v63, v63, s[12:15], 0 offen
	buffer_load_u8 v64, v64, s[12:15], 0 offen
	buffer_load_u8 v65, v65, s[12:15], 0 offen
	buffer_load_u8 v66, v66, s[12:15], 0 offen
	buffer_load_u8 v67, v67, s[12:15], 0 offen
	buffer_load_u8 v68, v68, s[12:15], 0 offen
	buffer_load_u8 v69, v69, s[12:15], 0 offen
	buffer_load_u8 v70, v70, s[12:15], 0 offen
	buffer_load_u8 v126, v85, s[12:15], 0 offen
	buffer_load_u8 v127, v86, s[12:15], 0 offen
	buffer_load_u8 v128, v87, s[12:15], 0 offen
	buffer_load_u8 v129, v88, s[12:15], 0 offen
	buffer_load_u8 v130, v89, s[12:15], 0 offen
	buffer_load_u8 v131, v90, s[12:15], 0 offen
	buffer_load_u8 v132, v91, s[12:15], 0 offen
	buffer_load_u8 v133, v92, s[12:15], 0 offen
	buffer_load_u8 v134, v93, s[12:15], 0 offen
	buffer_load_u8 v135, v94, s[12:15], 0 offen
	buffer_load_u8 v136, v95, s[12:15], 0 offen
	buffer_load_u8 v137, v96, s[12:15], 0 offen
	buffer_load_u8 v138, v97, s[12:15], 0 offen
	buffer_load_u8 v139, v98, s[12:15], 0 offen
	buffer_load_u8 v140, v106, s[12:15], 0 offen
	buffer_load_u8 v141, v107, s[12:15], 0 offen
	buffer_load_u8 v142, v108, s[12:15], 0 offen
	buffer_load_u8 v143, v109, s[12:15], 0 offen
	buffer_load_u8 v144, v110, s[12:15], 0 offen
	buffer_load_u8 v145, v111, s[12:15], 0 offen
	buffer_load_u8 v146, v112, s[12:15], 0 offen
	buffer_load_u8 v147, v113, s[12:15], 0 offen
	buffer_load_u8 v148, v114, s[12:15], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_dual_cndmask_b32 v62, 0x80000000, v99 :: v_dual_cndmask_b32 v85, 0x80000000, v100
	v_dual_cndmask_b32 v86, 0x80000000, v101 :: v_dual_cndmask_b32 v87, 0x80000000, v102
	v_dual_cndmask_b32 v88, 0x80000000, v103 :: v_dual_cndmask_b32 v89, 0x80000000, v104
	v_cndmask_b32_e32 v90, 0x80000000, v105, vcc_lo
	s_clause 0x7
	buffer_load_u8 v61, v61, s[8:11], 0 offen
	buffer_load_u8 v62, v62, s[8:11], 0 offen
	buffer_load_u8 v85, v85, s[8:11], 0 offen
	buffer_load_u8 v86, v86, s[8:11], 0 offen
	buffer_load_u8 v87, v87, s[8:11], 0 offen
	buffer_load_u8 v88, v88, s[8:11], 0 offen
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	buffer_load_u8 v90, v90, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v84, v61
	s_waitcnt vmcnt(6)
	ds_store_b8 v84, v62 offset:128
	s_waitcnt vmcnt(5)
	ds_store_b8 v84, v85 offset:256
	s_waitcnt vmcnt(4)
	ds_store_b8 v84, v86 offset:384
	s_waitcnt vmcnt(3)
	ds_store_b8 v84, v87 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v84, v88 offset:640
	s_waitcnt vmcnt(1)
	ds_store_b8 v84, v89 offset:768
	s_waitcnt vmcnt(0)
	ds_store_b8 v79, v90
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v61, v72 offset:160
	ds_load_u8 v62, v72 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v72 offset:224
	ds_load_u8 v85, v72 offset:192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v85, v62, 0xc0c0004
	ds_load_u8 v85, v72 offset:96
	ds_load_u8 v86, v72 offset:64
	v_lshl_or_b32 v62, v62, 16, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v85, v86, v85, 0xc0c0004
	ds_load_u8 v86, v72 offset:32
	ds_load_u8 v87, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v85, 16, v86
	ds_load_u8 v149, v72 offset:240
	ds_load_u8 v150, v72 offset:208
	ds_load_u8 v151, v72 offset:176
	ds_load_u8 v152, v72 offset:144
	ds_load_u8 v153, v72 offset:112
	ds_load_u8 v154, v72 offset:80
	ds_load_u8 v155, v72 offset:48
	ds_load_u8 v156, v72 offset:16
	ds_load_u8 v157, v72 offset:352
	ds_load_u8 v158, v72 offset:320
	ds_load_u8 v159, v72 offset:288
	ds_load_u8 v160, v72 offset:256
	ds_load_u8 v109, v72 offset:368
	ds_load_u8 v110, v72 offset:336
	ds_load_u8 v111, v72 offset:304
	ds_load_u8 v112, v72 offset:272
	ds_load_u8 v161, v72 offset:480
	ds_load_u8 v162, v72 offset:448
	ds_load_u8 v163, v72 offset:416
	ds_load_u8 v164, v72 offset:384
	ds_load_u8 v117, v72 offset:496
	ds_load_u8 v118, v72 offset:464
	ds_load_u8 v119, v72 offset:432
	ds_load_u8 v120, v72 offset:400
	ds_load_u8 v113, v72 offset:608
	ds_load_u8 v114, v72 offset:576
	ds_load_u8 v115, v72 offset:544
	ds_load_u8 v116, v72 offset:512
	ds_load_u8 v93, v72 offset:624
	ds_load_u8 v94, v72 offset:592
	ds_load_u8 v95, v72 offset:560
	ds_load_u8 v96, v72 offset:528
	ds_load_u8 v121, v72 offset:736
	ds_load_u8 v122, v72 offset:704
	ds_load_u8 v123, v72 offset:672
	ds_load_u8 v124, v72 offset:640
	ds_load_u8 v101, v72 offset:752
	ds_load_u8 v102, v72 offset:720
	ds_load_u8 v105, v72 offset:688
	ds_load_u8 v106, v72 offset:656
	ds_load_u8 v97, v72 offset:992
	ds_load_u8 v98, v72 offset:960
	ds_load_u8 v99, v72 offset:928
	ds_load_u8 v100, v72 offset:896
	ds_load_u8 v85, v80
	ds_load_u8 v86, v72 offset:976
	ds_load_u8 v87, v72 offset:944
	ds_load_u8 v88, v72 offset:912
	ds_load_u8 v103, v72 offset:864
	ds_load_u8 v104, v72 offset:832
	ds_load_u8 v107, v72 offset:800
	ds_load_u8 v108, v72 offset:768
	ds_load_u8 v89, v72 offset:880
	ds_load_u8 v90, v72 offset:848
	ds_load_u8 v91, v72 offset:816
	ds_load_u8 v92, v72 offset:784
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v84, v125
	ds_store_b8 v84, v63 offset:128
	ds_store_b8 v84, v64 offset:256
	ds_store_b8 v84, v65 offset:384
	ds_store_b8 v84, v66 offset:512
	ds_store_b8 v84, v67 offset:640
	ds_store_b8 v84, v68 offset:768
	ds_store_b8 v84, v70 offset:1024
	ds_store_b8 v84, v126 offset:1152
	ds_store_b8 v84, v127 offset:1280
	ds_store_b8 v84, v128 offset:1408
	ds_store_b8 v84, v129 offset:1536
	ds_store_b8 v84, v130 offset:1664
	ds_store_b8 v84, v131 offset:1792
	ds_store_b8 v84, v133 offset:2048
	ds_store_b8 v84, v134 offset:2176
	ds_store_b8 v84, v135 offset:2304
	ds_store_b8 v84, v136 offset:2432
	ds_store_b8 v84, v137 offset:2560
	ds_store_b8 v84, v138 offset:2688
	ds_store_b8 v84, v139 offset:2816
	ds_store_b8 v84, v141 offset:3072
	ds_store_b8 v84, v142 offset:3200
	ds_store_b8 v84, v143 offset:3328
	ds_store_b8 v84, v144 offset:3456
	ds_store_b8 v84, v145 offset:3584
	ds_store_b8 v84, v146 offset:3712
	ds_store_b8 v79, v69
	ds_store_b8 v81, v132
	ds_store_b8 v82, v140
	ds_store_b8 v84, v147 offset:3840
	ds_store_b8 v83, v148
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v63, v78 offset:640
	ds_load_u8 v64, v78 offset:512
	v_perm_b32 v70, v156, v155, 0xc0c0004
	v_perm_b32 v125, v160, v159, 0xc0c0004
	v_perm_b32 v126, v158, v157, 0xc0c0004
	v_perm_b32 v111, v112, v111, 0xc0c0004
	v_perm_b32 v109, v110, v109, 0xc0c0004
	v_perm_b32 v112, v122, v121, 0xc0c0004
	v_perm_b32 v115, v116, v115, 0xc0c0004
	v_perm_b32 v113, v114, v113, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_lshl_or_b32 v109, v109, 16, v111
	v_perm_b32 v111, v124, v123, 0xc0c0004
	v_perm_b32 v93, v94, v93, 0xc0c0004
	v_perm_b32 v96, v98, v97, 0xc0c0004
	v_perm_b32 v97, v108, v107, 0xc0c0004
	v_perm_b32 v98, v104, v103, 0xc0c0004
	v_lshl_or_b32 v112, v112, 16, v111
	v_lshl_or_b32 v111, v113, 16, v115
	ds_load_u8 v113, v78 offset:2688
	ds_load_u8 v114, v78 offset:2560
	v_lshl_or_b32 v93, v93, 16, v95
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v78 offset:896
	ds_load_u8 v65, v78 offset:768
	v_perm_b32 v95, v100, v99, 0xc0c0004
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_perm_b32 v117, v118, v117, 0xc0c0004
	v_perm_b32 v105, v106, v105, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	v_lshl_or_b32 v96, v96, 16, v95
	v_lshl_or_b32 v95, v98, 16, v97
	ds_load_u8 v97, v78 offset:3712
	ds_load_u8 v98, v78 offset:3584
	v_lshl_or_b32 v110, v117, 16, v119
	v_lshl_or_b32 v94, v101, 16, v105
	v_perm_b32 v87, v88, v87, 0xc0c0004
	v_perm_b32 v85, v86, v85, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v78 offset:2944
	ds_load_u8 v115, v78 offset:2816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v78 offset:128
	ds_load_u8 v66, v78
	v_lshl_or_b32 v64, v64, 16, v63
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v97, v98, v97, 0xc0c0004
	ds_load_u8 v98, v78 offset:3968
	ds_load_u8 v99, v78 offset:3840
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v78 offset:2176
	ds_load_u8 v116, v78 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v78 offset:384
	ds_load_u8 v67, v78 offset:256
	v_lshl_or_b32 v114, v114, 16, v113
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v78 offset:3200
	ds_load_u8 v100, v78 offset:3072
	v_lshl_or_b32 v98, v98, 16, v97
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v78 offset:2432
	ds_load_u8 v117, v78 offset:2304
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v66, 16, v65
	ds_load_u8 v65, v78 offset:704
	ds_load_u8 v66, v78 offset:576
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v78 offset:3456
	ds_load_u8 v101, v78 offset:3328
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[61:62], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v116, 16, v115
	ds_load_u8 v115, v78 offset:2752
	ds_load_u8 v116, v78 offset:2624
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v78 offset:960
	ds_load_u8 v67, v78 offset:832
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v97, v100, 16, v99
	ds_load_u8 v99, v78 offset:3776
	ds_load_u8 v100, v78 offset:3648
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v78 offset:3008
	ds_load_u8 v117, v78 offset:2880
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v78 offset:192
	ds_load_u8 v68, v78 offset:64
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v78 offset:4032
	ds_load_u8 v101, v78 offset:3904
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v78 offset:2240
	ds_load_u8 v118, v78 offset:2112
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v78 offset:448
	ds_load_u8 v69, v78 offset:320
	v_lshl_or_b32 v116, v116, 16, v115
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v78 offset:3264
	ds_load_u8 v102, v78 offset:3136
	v_lshl_or_b32 v100, v100, 16, v99
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v78 offset:2496
	ds_load_u8 v119, v78 offset:2368
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v69, v154, v153, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v65, v68, 16, v67
	v_perm_b32 v67, v152, v151, 0xc0c0004
	v_perm_b32 v68, v150, v149, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v78 offset:3520
	ds_load_u8 v103, v78 offset:3392
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v61, v92, v91, 0xc0c0004
	v_lshl_or_b32 v68, v68, 16, v67
	v_lshl_or_b32 v67, v69, 16, v70
	v_perm_b32 v69, v164, v163, 0xc0c0004
	v_perm_b32 v70, v162, v161, 0xc0c0004
	v_perm_b32 v62, v90, v89, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v70, 16, v69
	v_lshl_or_b32 v69, v126, 16, v125
	ds_load_u8 v125, v78 offset:1664
	ds_load_u8 v126, v78 offset:1536
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v115, v118, 16, v117
	v_lshl_or_b32 v61, v62, 16, v61
	v_lshl_or_b32 v62, v85, 16, v87
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v99, v102, 16, v101
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v78 offset:1920
	ds_load_u8 v127, v78 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v78 offset:1152
	ds_load_u8 v128, v78 offset:1024
	v_lshl_or_b32 v126, v126, 16, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v78 offset:1408
	ds_load_u8 v129, v78 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v125, v128, 16, v127
	ds_load_u8 v127, v78 offset:1728
	ds_load_u8 v128, v78 offset:1600
	v_wmma_i32_16x16x16_iu4 v[1:8], v[125:126], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[125:126], v[109:110], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[111:112], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[95:96], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[97:98], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v78 offset:1984
	ds_load_u8 v129, v78 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v78 offset:1216
	ds_load_u8 v130, v78 offset:1088
	v_lshl_or_b32 v128, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v78 offset:1472
	ds_load_u8 v131, v78 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v127, v130, 16, v129
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[127:128], v[109:110], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[93:94], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[61:62], v[25:32] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v49, v1
	v_cvt_f32_i32_e32 v48, v2
	v_cvt_f32_i32_e32 v47, v3
	v_cvt_f32_i32_e32 v46, v4
	v_cvt_f32_i32_e32 v45, v5
	v_cvt_f32_i32_e32 v44, v6
	v_cvt_f32_i32_e32 v43, v7
	v_cvt_f32_i32_e32 v42, v8
	v_cvt_f32_i32_e32 v41, v9
	v_cvt_f32_i32_e32 v40, v10
	v_cvt_f32_i32_e32 v39, v11
	v_cvt_f32_i32_e32 v38, v12
	v_cvt_f32_i32_e32 v37, v13
	v_cvt_f32_i32_e32 v36, v14
	v_cvt_f32_i32_e32 v35, v15
	v_cvt_f32_i32_e32 v34, v16
	v_cvt_f32_i32_e32 v16, v17
	v_cvt_f32_i32_e32 v15, v18
	v_cvt_f32_i32_e32 v14, v19
	v_cvt_f32_i32_e32 v13, v20
	v_cvt_f32_i32_e32 v12, v21
	v_cvt_f32_i32_e32 v11, v22
	v_cvt_f32_i32_e32 v10, v23
	v_cvt_f32_i32_e32 v9, v24
	v_cvt_f32_i32_e32 v8, v25
	v_cvt_f32_i32_e32 v7, v26
	v_cvt_f32_i32_e32 v6, v27
	v_cvt_f32_i32_e32 v5, v28
	v_cvt_f32_i32_e32 v4, v29
	v_cvt_f32_i32_e32 v3, v30
	v_cvt_f32_i32_e32 v2, v31
	v_cvt_f32_i32_e32 v1, v32
.LBB0_7:                                ; %._crit_edge
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s20, v71
	.loc	1 1098 33                       ; ragged.py:1098:33
	s_mul_i32 s0, s18, s16
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s5, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s1, s20, s0
	s_mov_b32 s11, 0x31027000
	v_add_lshl_u32 v18, s1, v71, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s16, v17
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_mov_b32 s8, s4
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, 16, v17
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_dual_mov_b32 v31, 0x7632 :: v_dual_add_nc_u32 v20, 32, v18
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v19, 0x80000000, v18, s0
	.loc	1 1105 33                       ; ragged.py:1105:33
	s_mul_i32 s4, s18, s17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s16, v17
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s4, s19, s4
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v24, s17, v71
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v18, v19, s[8:11], 0 offen
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_dual_mov_b32 v30, 0x5410 :: v_dual_lshlrev_b32 v23, 5, v0
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_mul_i32 s1, s1, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_mov_b32 s54, s10
	s_mov_b32 s55, s11
	s_mov_b32 s50, 0x76543210
	s_and_b32 s53, s53, 0xffff
	.loc	1 1097 36 is_stmt 1             ; ragged.py:1097:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshlrev_b32_e32 v22, 1, v0
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v21, 0x70, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v46, v46, v18 :: v_dual_and_b32 v23, 32, v23
	v_mul_f32_e32 v49, v49, v18
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_dual_cndmask_b32 v17, 0x80000000, v20 :: v_dual_and_b32 v22, 28, v22
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v48, v48, v18
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v32, 1, v21
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v25, v21, 2, 0
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v19, v17, s[8:11], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v17, s4, v0, 1
	s_and_b32 s9, s7, 0xffff
	s_mov_b32 s8, s6
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v78, 1, v32
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v26, v21, 1, 0
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v21, s1, s19, v24
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v77, 2, v32
	v_or_b32_e32 v64, 0x47, v32
	v_or_b32_e32 v65, 0x46, v32
	.loc	1 1104 36                       ; ragged.py:1104:36
	buffer_load_u16 v20, v17, s[8:11], 0 offen
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v66, 0x45, v32
	v_or_b32_e32 v67, 0x44, v32
	v_or_b32_e32 v68, 0x43, v32
	v_or_b32_e32 v69, 0x42, v32
	v_or_b32_e32 v70, 0x41, v32
	v_or_b32_e32 v71, 64, v32
	v_or_b32_e32 v72, 7, v32
	v_or_b32_e32 v73, 6, v32
	v_or_b32_e32 v74, 5, v32
	v_or_b32_e32 v75, 4, v32
	v_or_b32_e32 v76, 3, v32
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v24, s19, v32
	v_or_b32_e32 v89, s19, v78
	.loc	1 1239 26 is_stmt 1             ; ragged.py:1239:26
	v_add_lshl_u32 v80, v21, v32, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v88, s19, v77
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_add3_u32 v22, v25, v23, v22
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v79, s3, v21
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v21, s19, v64
	v_or_b32_e32 v23, s19, v65
	v_or_b32_e32 v25, s19, v66
	v_or_b32_e32 v27, s19, v67
	v_or_b32_e32 v28, s19, v68
	v_or_b32_e32 v29, s19, v69
	v_or_b32_e32 v81, s19, v70
	v_or_b32_e32 v82, s19, v71
	v_or_b32_e32 v83, s19, v72
	v_or_b32_e32 v84, s19, v73
	v_or_b32_e32 v85, s19, v74
	v_or_b32_e32 v86, s19, v75
	v_or_b32_e32 v87, s19, v76
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s17, v24
	v_cmp_gt_i32_e64 s16, s17, v89
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v45, v45, v18 :: v_dual_add_nc_u32 v24, 2, v80
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s17, v88
	v_cmp_gt_i32_e64 s1, s17, v21
	v_cmp_gt_i32_e64 s2, s17, v23
	v_cmp_gt_i32_e64 s3, s17, v25
	v_cmp_gt_i32_e64 s4, s17, v27
	v_cmp_gt_i32_e64 s5, s17, v28
	v_cmp_gt_i32_e64 s6, s17, v29
	v_cmp_gt_i32_e64 s7, s17, v81
	v_cmp_gt_i32_e64 s8, s17, v82
	v_cmp_gt_i32_e64 s10, s17, v83
	v_cmp_gt_i32_e64 s11, s17, v84
	v_cmp_gt_i32_e64 s12, s17, v85
	v_cmp_gt_i32_e64 s13, s17, v86
	v_cmp_gt_i32_e64 s14, s17, v87
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s9
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v43, v43, v18 :: v_dual_add_nc_u32 v90, 4, v80
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v81, 0x80000000, v80, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s16
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v42, v42, v18 :: v_dual_add_nc_u32 v91, 6, v80
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v82, 0x80000000, v24, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s15
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v41, v41, v18 :: v_dual_add_nc_u32 v92, 8, v80
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v83, 0x80000000, v90, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s14
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v84, 0x80000000, v91, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s13
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_barrier
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v85, 0x80000000, v92, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v17.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v33.h, v17.h
	v_mov_b16_e32 v50.h, v17.h
	v_mov_b16_e32 v51.h, v17.h
	v_mov_b16_e32 v53.h, v17.h
	v_mov_b16_e32 v52.h, v17.h
	v_mov_b16_e32 v55.h, v17.h
	v_mov_b16_e32 v54.h, v17.h
	v_mov_b16_e32 v57.h, v17.h
	v_mov_b16_e32 v56.h, v17.h
	v_mov_b16_e32 v59.h, v17.h
	v_mov_b16_e32 v58.h, v17.h
	v_mov_b16_e32 v61.h, v17.h
	v_mov_b16_e32 v60.h, v17.h
	v_mov_b16_e32 v63.h, v17.h
	v_mov_b16_e32 v62.h, v17.h
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v92, 16, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v15, v15, v92
	v_dual_mul_f32 v47, v47, v18 :: v_dual_and_b32 v0, 16, v0
	v_dual_mul_f32 v40, v40, v18 :: v_dual_add_nc_u32 v93, 10, v80
	v_dual_mul_f32 v39, v39, v18 :: v_dual_add_nc_u32 v94, 12, v80
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v20
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v38, v38, v18 :: v_dual_add_nc_u32 v95, 14, v80
	v_dual_mul_f32 v37, v37, v18 :: v_dual_add_nc_u32 v96, 0x80, v80
	v_dual_mul_f32 v36, v36, v18 :: v_dual_add_nc_u32 v97, 0x82, v80
	v_dual_mul_f32 v35, v35, v18 :: v_dual_add_nc_u32 v98, 0x84, v80
	v_dual_mul_f32 v34, v34, v18 :: v_dual_add_nc_u32 v99, 0x86, v80
	v_mul_f32_e32 v44, v44, v18
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_store_b32 v22, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v26
	ds_load_b128 v[22:25], v26 offset:16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v86, 0x80000000, v93, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v87, 0x80000000, v94, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v88, 0x80000000, v95, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v89, 0x80000000, v96, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v90, 0x80000000, v97, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v91, 0x80000000, v98, s17
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v49, v49, v18
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v93, v14, v92 :: v_dual_mul_f32 v48, v48, v19
	v_mul_f32_e32 v94, v13, v92
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v95, v12, v92 :: v_dual_mul_f32 v42, v42, v25
	v_mul_f32_e32 v96, v11, v92
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_load_b128 v[11:14], v26 offset:256
	ds_load_b128 v[26:29], v26 offset:272
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v10, v10, v92
	v_dual_mul_f32 v9, v9, v92 :: v_dual_mul_f32 v44, v44, v23
	v_dual_mul_f32 v8, v8, v92 :: v_dual_mul_f32 v15, v15, v19
	v_mul_f32_e32 v7, v7, v92
	v_mul_f32_e32 v5, v5, v92
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v47, v47, v20 :: v_dual_mul_f32 v46, v46, v21
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v16, v16, v92 :: v_dual_mul_f32 v45, v45, v22
	v_mul_f32_e32 v3, v3, v92
	v_dual_mul_f32 v2, v2, v92 :: v_dual_mul_f32 v9, v9, v25
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v25, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v1, v1, v92 :: v_dual_mul_f32 v16, v16, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s17, v49, v49
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v41, v41, v11 :: v_dual_mul_f32 v6, v6, v92
	v_dual_mul_f32 v39, v39, v13 :: v_dual_mul_f32 v4, v4, v92
	v_mul_f32_e32 v19, v94, v21
	v_mul_f32_e32 v21, v96, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v43, v43, v24 :: v_dual_mul_f32 v6, v6, v13
	v_mul_f32_e32 v38, v38, v14
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v37, v37, v26 :: v_dual_mul_f32 v36, v36, v27
	v_dual_mul_f32 v40, v40, v12 :: v_dual_mul_f32 v5, v5, v14
	v_dual_mul_f32 v35, v35, v28 :: v_dual_mul_f32 v4, v4, v26
	v_mul_f32_e32 v10, v10, v24
	v_dual_mul_f32 v8, v8, v11 :: v_dual_mul_f32 v7, v7, v12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v11, v49, 16, 1
	v_bfe_u32 v12, v48, 16, 1
	v_bfe_u32 v13, v47, 16, 1
	v_bfe_u32 v14, v46, 16, 1
	v_bfe_u32 v24, v43, 16, 1
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v34, v34, v29
	v_dual_mul_f32 v18, v93, v20 :: v_dual_mul_f32 v3, v3, v27
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s18, v48, v48
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s20, v46, v46
	v_cmp_o_f32_e64 s23, v43, v43
	v_cmp_o_f32_e64 s24, v42, v42
	v_bfe_u32 v107, v6, 16, 1
	v_bfe_u32 v109, v4, 16, 1
	v_add3_u32 v11, v49, v11, 0x7fff
	v_add3_u32 v12, v48, v12, 0x7fff
	v_add3_u32 v13, v47, v13, 0x7fff
	v_add3_u32 v14, v46, v14, 0x7fff
	v_add3_u32 v24, v43, v24, 0x7fff
	v_add3_u32 v25, v42, v25, 0x7fff
	v_bfe_u32 v108, v5, 16, 1
	v_bfe_u32 v110, v3, 16, 1
	v_cmp_o_f32_e64 s44, v6, v6
	v_cmp_o_f32_e64 s46, v4, v4
	v_add3_u32 v6, v6, v107, 0x7fff
	v_add3_u32 v4, v4, v109, 0x7fff
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s17
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s18
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s19
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s20
	v_cndmask_b16 v14.l, 0x7fff, v24.h, s23
	v_cndmask_b16 v14.h, 0x7fff, v25.h, s24
	v_cmp_eq_u32_e64 s17, 0, v0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v20, v95, v22 :: v_dual_mul_f32 v1, v1, v29
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s45, v5, v5
	v_cmp_o_f32_e64 s47, v3, v3
	v_add3_u32 v5, v5, v108, 0x7fff
	v_add3_u32 v3, v3, v110, 0x7fff
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s44
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s46
	v_cndmask_b32_e64 v4, v14, v12, s17
	v_cndmask_b32_e64 v6, v12, v14, s17
	v_cndmask_b32_e64 v14, 0x1054, v30, s17
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v2, v2, v28
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v22, v45, 16, 1
	v_bfe_u32 v23, v44, 16, 1
	v_bfe_u32 v96, v16, 16, 1
	v_bfe_u32 v97, v15, 16, 1
	v_bfe_u32 v98, v18, 16, 1
	v_bfe_u32 v100, v19, 16, 1
	v_bfe_u32 v101, v20, 16, 1
	v_bfe_u32 v102, v21, 16, 1
	v_bfe_u32 v103, v10, 16, 1
	v_bfe_u32 v104, v9, 16, 1
	v_lshl_or_b32 v14, v14, 8, v14
	v_cmp_o_f32_e64 s21, v45, v45
	v_cmp_o_f32_e64 s22, v44, v44
	v_cmp_o_f32_e64 s34, v16, v16
	v_cmp_o_f32_e64 s35, v15, v15
	v_cmp_o_f32_e64 s36, v18, v18
	v_cmp_o_f32_e64 s37, v19, v19
	v_cmp_o_f32_e64 s38, v20, v20
	v_cmp_o_f32_e64 s39, v21, v21
	v_cmp_o_f32_e64 s40, v10, v10
	v_cmp_o_f32_e64 s41, v9, v9
	v_bfe_u32 v111, v2, 16, 1
	v_bfe_u32 v112, v1, 16, 1
	v_add3_u32 v22, v45, v22, 0x7fff
	v_add3_u32 v23, v44, v23, 0x7fff
	v_add3_u32 v16, v16, v96, 0x7fff
	v_add3_u32 v15, v15, v97, 0x7fff
	v_add3_u32 v18, v18, v98, 0x7fff
	v_add3_u32 v19, v19, v100, 0x7fff
	v_add3_u32 v20, v20, v101, 0x7fff
	v_add3_u32 v21, v21, v102, 0x7fff
	v_add3_u32 v10, v10, v103, 0x7fff
	v_add3_u32 v9, v9, v104, 0x7fff
	v_bfe_u32 v105, v8, 16, 1
	v_and_b32_e32 v14, 0x540054, v14
	v_bfe_u32 v106, v7, 16, 1
	v_cmp_o_f32_e64 s48, v2, v2
	v_cmp_o_f32_e64 s49, v1, v1
	v_add3_u32 v2, v2, v111, 0x7fff
	v_add3_u32 v1, v1, v112, 0x7fff
	v_cndmask_b16 v13.l, 0x7fff, v22.h, s21
	v_cndmask_b16 v13.h, 0x7fff, v23.h, s22
	v_cndmask_b16 v15.l, 0x7fff, v16.h, s34
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s35
	v_cndmask_b16 v16.l, 0x7fff, v18.h, s36
	v_cndmask_b16 v16.h, 0x7fff, v19.h, s37
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s38
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s39
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s40
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s41
	v_cndmask_b32_e64 v19, 0x3276, v31, s17
	v_bfe_u32 v26, v41, 16, 1
	v_bfe_u32 v27, v40, 16, 1
	v_bfe_u32 v92, v37, 16, 1
	v_bfe_u32 v93, v36, 16, 1
	v_cmp_o_f32_e64 s42, v8, v8
	v_cmp_o_f32_e64 s43, v7, v7
	v_add3_u32 v8, v8, v105, 0x7fff
	v_add3_u32 v7, v7, v106, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s48
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s49
	v_cndmask_b32_e64 v1, v13, v11, s17
	v_cndmask_b32_e64 v2, v11, v13, s17
	v_cndmask_b32_e64 v13, v18, v15, s17
	v_cndmask_b32_e64 v15, v15, v18, s17
	v_cndmask_b32_e64 v18, v9, v16, s17
	v_cndmask_b32_e64 v9, v16, v9, s17
	v_lshl_or_b32 v16, v19, 8, v19
	v_cmp_o_f32_e64 s25, v41, v41
	v_cmp_o_f32_e64 s26, v40, v40
	v_cmp_o_f32_e64 s29, v37, v37
	v_cmp_o_f32_e64 s30, v36, v36
	v_add3_u32 v26, v41, v26, 0x7fff
	v_add3_u32 v27, v40, v27, 0x7fff
	v_add3_u32 v37, v37, v92, 0x7fff
	v_add3_u32 v36, v36, v93, 0x7fff
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s42
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s43
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s45
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s47
	v_bfe_u32 v28, v39, 16, 1
	v_bfe_u32 v29, v38, 16, 1
	v_bfe_u32 v94, v35, 16, 1
	v_bfe_u32 v95, v34, 16, 1
	v_and_b32_e32 v16, 0x760076, v16
	v_cndmask_b16 v22.l, 0x7fff, v26.h, s25
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s26
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s29
	v_cndmask_b16 v24.h, 0x7fff, v36.h, s30
	v_cndmask_b32_e64 v19, v3, v7, s17
	v_cndmask_b32_e64 v3, v7, v3, s17
	v_cndmask_b32_e64 v7, v0, v5, s17
	v_cndmask_b32_e64 v0, v5, v0, s17
	v_permlanex16_b32 v5, v6, s50, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v6, v14, 4, v14
	v_cmp_o_f32_e64 s27, v39, v39
	v_cmp_o_f32_e64 s28, v38, v38
	v_cmp_o_f32_e64 s31, v35, v35
	v_cmp_o_f32_e64 s33, v34, v34
	v_add3_u32 v28, v39, v28, 0x7fff
	v_add3_u32 v29, v38, v29, 0x7fff
	v_add3_u32 v35, v35, v94, 0x7fff
	v_add3_u32 v34, v34, v95, 0x7fff
	v_lshl_or_b32 v14, v16, 4, v16
	v_cndmask_b32_e64 v10, v22, v24, s17
	v_permlanex16_b32 v2, v2, s50, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 0x5040504, v6
	v_cndmask_b16 v23.l, 0x7fff, v28.h, s27
	v_cndmask_b16 v23.h, 0x7fff, v29.h, s28
	v_cndmask_b16 v25.l, 0x7fff, v35.h, s31
	v_cndmask_b16 v25.h, 0x7fff, v34.h, s33
	v_and_b32_e32 v14, 0x7060706, v14
	v_cndmask_b32_e64 v8, v24, v22, s17
	v_permlanex16_b32 v10, v10, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v16, v2, v1, v6
	v_cndmask_b32_e64 v12, v23, v25, s17
	v_perm_b32 v1, v2, v1, v14
	v_perm_b32 v2, v5, v4, v6
	v_perm_b32 v4, v5, v4, v14
	v_perm_b32 v5, v10, v8, v6
	v_mov_b16_e32 v33.l, v16.h
	v_cndmask_b32_e64 v11, v25, v23, s17
	v_permlanex16_b32 v12, v12, s50, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v17.l, v1.h
	v_perm_b32 v8, v10, v8, v14
	v_mov_b16_e32 v50.l, v4.h
	v_mov_b16_e32 v51.l, v2.h
	v_mov_b16_e32 v53.l, v5.h
	s_clause 0xa
	buffer_store_b16 v16, v81, s[52:55], 0 offen
	buffer_store_b16 v33, v82, s[52:55], 0 offen
	buffer_store_b16 v1, v83, s[52:55], 0 offen
	buffer_store_b16 v17, v84, s[52:55], 0 offen
	buffer_store_b16 v2, v85, s[52:55], 0 offen
	buffer_store_b16 v51, v86, s[52:55], 0 offen
	buffer_store_b16 v4, v87, s[52:55], 0 offen
	buffer_store_b16 v50, v88, s[52:55], 0 offen
	buffer_store_b16 v5, v89, s[52:55], 0 offen
	buffer_store_b16 v53, v90, s[52:55], 0 offen
	buffer_store_b16 v8, v91, s[52:55], 0 offen
	v_add_nc_u32_e32 v1, 0x88, v80
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_nc_u32_e32 v4, 0x8a, v80
	v_perm_b32 v10, v12, v11, v6
	v_cndmask_b32_e64 v2, 0x80000000, v99, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v52.l, v8.h
	v_add_nc_u32_e32 v5, 0x8c, v80
	v_cndmask_b32_e64 v1, 0x80000000, v1, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v55.l, v10.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v15, v15, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v11, v12, v11, v14
	v_cndmask_b32_e64 v5, 0x80000000, v5, s17
	s_clause 0x1
	buffer_store_b16 v52, v2, s[52:55], 0 offen
	buffer_store_b16 v10, v1, s[52:55], 0 offen
	v_add_nc_u32_e32 v1, 0x8e, v80
	v_add_lshl_u32 v2, v79, v32, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v55, v4, s[52:55], 0 offen
	buffer_store_b16 v11, v5, s[52:55], 0 offen
	v_add_lshl_u32 v4, v79, v78, 1
	v_perm_b32 v12, v15, v13, v6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v54.l, v11.h
	v_add_lshl_u32 v5, v79, v77, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v57.l, v12.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v9, v9, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v13, v15, v13, v14
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x1
	buffer_store_b16 v54, v1, s[52:55], 0 offen
	buffer_store_b16 v12, v2, s[52:55], 0 offen
	v_add_lshl_u32 v1, v79, v76, 1
	v_add_lshl_u32 v2, v79, v75, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v57, v4, s[52:55], 0 offen
	buffer_store_b16 v13, v5, s[52:55], 0 offen
	v_add_lshl_u32 v4, v79, v74, 1
	v_perm_b32 v15, v9, v18, v6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v56.l, v13.h
	v_add_lshl_u32 v5, v79, v73, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v59.l, v15.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v3, v3, s50, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v9, v18, v14
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x1
	buffer_store_b16 v56, v1, s[52:55], 0 offen
	buffer_store_b16 v15, v2, s[52:55], 0 offen
	v_add_lshl_u32 v1, v79, v72, 1
	v_add_lshl_u32 v2, v79, v71, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v59, v4, s[52:55], 0 offen
	buffer_store_b16 v9, v5, s[52:55], 0 offen
	v_add_lshl_u32 v4, v79, v70, 1
	v_perm_b32 v18, v3, v19, v6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v58.l, v9.h
	v_add_lshl_u32 v5, v79, v69, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v3, v3, v19, v14
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v61.l, v18.h
	v_permlanex16_b32 v0, v0, s50, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v5, 0x80000000, v5, s0
	s_clause 0x1
	buffer_store_b16 v58, v1, s[52:55], 0 offen
	buffer_store_b16 v18, v2, s[52:55], 0 offen
	v_add_lshl_u32 v1, v79, v68, 1
	v_add_lshl_u32 v2, v79, v67, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v60.l, v3.h
	s_clause 0x1
	buffer_store_b16 v61, v4, s[52:55], 0 offen
	buffer_store_b16 v3, v5, s[52:55], 0 offen
	v_add_lshl_u32 v3, v79, v66, 1
	v_perm_b32 v6, v0, v7, v6
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v79, v65, 1
	v_perm_b32 v0, v0, v7, v14
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v5, v79, v64, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v63.l, v6.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s2
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_mov_b16_e32 v62.l, v0.h
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b16 v60, v1, s[52:55], 0 offen
	buffer_store_b16 v6, v2, s[52:55], 0 offen
	buffer_store_b16 v63, v3, s[52:55], 0 offen
	buffer_store_b16 v0, v4, s[52:55], 0 offen
	buffer_store_b16 v62, v5, s[52:55], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 165
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 165
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8880
; TotalNumSgprs: 58
; NumVgprs: 165
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 165
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
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
	.short	995                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4e:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	996                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     165
    .vgpr_spill_count: 0
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
