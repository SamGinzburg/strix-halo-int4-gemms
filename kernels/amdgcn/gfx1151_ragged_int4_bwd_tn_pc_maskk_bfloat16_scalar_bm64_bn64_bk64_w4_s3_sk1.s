	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b128 s[40:43], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	s_load_b256 s[20:27], s[0:1], 0x0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 15, v0
	v_lshrrev_b32_e32 v46, 1, v0
	v_and_b32_e32 v52, 63, v0
	.loc	1 1011 18                       ; ragged.py:1011:18
	v_lshrrev_b32_e32 v54, 6, v0
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v49, 0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v47, 16, v46
	v_add3_u32 v48, 0, v47, v2
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s19, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 26
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_lshr_b32 s7, s7, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_add_i32 s4, s4, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_add_i32 s5, s5, s7
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s4, s4, 6
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s5, s5, 6
	v_mul_lo_u32 v53, s18, v54
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	v_mul_lo_u32 v33, s19, v54
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
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
	s_mul_i32 s10, s7, s6
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s7, 1
	s_sub_i32 s11, s9, s6
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s7, s10, s7
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s7, 1
	s_cmp_ge_u32 s9, s6
	s_cselect_b32 s6, s10, s7
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s7, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s9, s7
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s34, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s34, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s8, s2, s5
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 64, v0
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v1, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_u32_f32 s9, s9
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v45, v1, v2
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_mul_i32 s6, s6, s9
	s_mul_hi_u32 s4, s9, s6
	s_abs_i32 s6, s2
	s_add_i32 s9, s9, s4
	v_add_nc_u32_e32 v50, 0, v45
	s_mul_hi_u32 s4, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s6, s7
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s6, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s35, s34, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s6, s4, s8
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s7, s6, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[34:35], 2
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s2, s2, s7
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s35, s6, 6
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s33, s2, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s40, s4
	s_addc_u32 s5, s41, s5
	s_load_b32 s2, s[0:1], 0x38
	s_load_b32 s14, s[4:5], 0x0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s35, v52
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v51, s33, v52
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s12, s3, 5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v51
	.loc	1 1049 39                       ; ragged.py:1049:39
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s13, s34, s2
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_ashr_i32 s0, s14, 31
	s_lshr_b32 s0, s0, 26
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_add_i32 s1, s14, s0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s18, v1
	.loc	1 1044 21                       ; ragged.py:1044:21
	s_ashr_i32 s1, s1, 6
	.loc	1 1043 39                       ; ragged.py:1043:39
	s_lshl_b32 s1, s1, 5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_ge_i32 s12, s1
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_or_b32_e32 v1, 0x380, v0
	v_or_b32_e32 v2, 0x780, v0
	v_mov_b32_e32 v17, 0
	s_lshl_b32 s8, s19, 1
	s_lshl_b32 s9, s19, 2
	s_mul_i32 s10, s19, 6
	s_lshl_b32 s11, s19, 3
	s_mul_i32 s44, s19, 10
	s_mul_i32 s45, s19, 12
	s_mul_i32 s46, s19, 14
	s_lshl_b32 s47, s19, 4
	s_mul_i32 s48, s19, 18
	s_mul_i32 s49, s19, 20
	s_mul_i32 s50, s19, 22
	s_mul_i32 s51, s19, 24
	s_mul_i32 s52, s19, 26
	s_mul_i32 s53, s19, 28
	s_mul_i32 s54, s19, 30
	v_add3_u32 v56, v33, s8, v51
	v_add3_u32 v57, v33, s9, v51
	v_add3_u32 v58, v33, s10, v51
	v_add3_u32 v59, v33, s11, v51
	v_add3_u32 v60, v33, s44, v51
	v_add3_u32 v61, v33, s45, v51
	v_add3_u32 v62, v33, s46, v51
	v_add3_u32 v63, v33, s47, v51
	v_add3_u32 v64, v33, s48, v51
	v_add3_u32 v65, v33, s49, v51
	v_add3_u32 v66, v33, s50, v51
	v_add3_u32 v67, v33, s51, v51
	v_add3_u32 v68, v33, s52, v51
	v_add3_u32 v69, v33, s53, v51
	v_add3_u32 v70, v33, s54, v51
	.loc	1 1046 23                       ; ragged.py:1046:23
	v_add3_u32 v34, v52, v53, s35
	v_add_nc_u32_e32 v72, 0, v2
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v55, v51, v33
	v_dual_mov_b32 v20, v17 :: v_dual_add_nc_u32 v71, 0, v1
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	v_mov_b32_e32 v24, v17
	v_mov_b32_e32 v25, v17
	v_mov_b32_e32 v26, v17
	v_mov_b32_e32 v27, v17
	v_mov_b32_e32 v28, v17
	v_mov_b32_e32 v29, v17
	v_mov_b32_e32 v30, v17
	v_mov_b32_e32 v31, v17
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v9, v17
	v_mov_b32_e32 v10, v17
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v13, v17
	v_mov_b32_e32 v14, v17
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v16, v17
	v_mov_b32_e32 v1, v17
	v_mov_b32_e32 v2, v17
	v_mov_b32_e32 v3, v17
	v_mov_b32_e32 v4, v17
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_mov_b32_e32 v7, v17
	v_mov_b32_e32 v8, v17
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_lshl_b32 s2, s18, 1
	s_lshl_b32 s3, s18, 2
	s_mul_i32 s15, s18, 6
	s_lshl_b32 s16, s18, 3
	s_mul_i32 s17, s18, 10
	s_mul_i32 s28, s18, 12
	s_mul_i32 s29, s18, 14
	s_lshl_b32 s30, s18, 4
	s_mul_i32 s31, s18, 18
	s_mul_i32 s36, s18, 20
	s_mul_i32 s37, s18, 22
	s_mul_i32 s38, s18, 24
	s_mul_i32 s39, s18, 26
	s_mul_i32 s40, s18, 28
	s_mul_i32 s41, s18, 30
	s_and_b32 s5, s21, 0xffff
	s_mov_b32 s4, s20
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1056 42 is_stmt 1             ; ragged.py:1056:42
	s_add_i32 s44, s12, s13
	.loc	1 1068 21                       ; ragged.py:1068:21
	s_add_i32 s12, s12, 32
	v_mad_u64_u32 v[35:36], null, s44, s18, v[34:35]
	.loc	1 1057 42                       ; ragged.py:1057:42
	s_mul_i32 s45, s44, s19
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cmp_lt_i32 s12, s1
	.loc	1 1057 42                       ; ragged.py:1057:42
	v_add_nc_u32_e32 v36, s45, v55
	v_add_nc_u32_e32 v37, s45, v56
	v_add_nc_u32_e32 v38, s45, v57
	v_add_nc_u32_e32 v39, s45, v58
	v_add_nc_u32_e32 v40, s45, v59
	v_add_nc_u32_e32 v41, s45, v60
	v_add_nc_u32_e32 v42, s45, v61
	v_add_nc_u32_e32 v43, s45, v62
	v_add_nc_u32_e32 v44, s45, v63
	v_add_nc_u32_e32 v73, s45, v64
	v_add_nc_u32_e32 v74, s45, v65
	v_add_nc_u32_e32 v75, s45, v66
	v_add_nc_u32_e32 v76, s45, v67
	v_add_nc_u32_e32 v77, s45, v68
	v_add_nc_u32_e32 v78, s45, v69
	v_add_nc_u32_e32 v79, s45, v70
	.loc	1 1057 34 is_stmt 0             ; ragged.py:1057:34
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_cndmask_b32 v37, 0x80000000, v37
	v_add_nc_u32_e32 v80, s2, v35
	v_add_nc_u32_e32 v81, s3, v35
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_add_nc_u32_e32 v82, s15, v35
	v_add_nc_u32_e32 v83, s16, v35
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_cndmask_b32 v41, 0x80000000, v41
	v_dual_cndmask_b32 v42, 0x80000000, v42 :: v_dual_cndmask_b32 v43, 0x80000000, v43
	v_dual_cndmask_b32 v44, 0x80000000, v44 :: v_dual_cndmask_b32 v73, 0x80000000, v73
	v_add_nc_u32_e32 v84, s17, v35
	v_add_nc_u32_e32 v85, s28, v35
	v_add_nc_u32_e32 v86, s29, v35
	v_add_nc_u32_e32 v87, s30, v35
	v_add_nc_u32_e32 v88, s31, v35
	v_add_nc_u32_e32 v89, s36, v35
	v_add_nc_u32_e32 v90, s37, v35
	v_add_nc_u32_e32 v91, s38, v35
	v_add_nc_u32_e32 v92, s39, v35
	v_add_nc_u32_e32 v93, s40, v35
	v_add_nc_u32_e32 v94, s41, v35
	.loc	1 1056 34 is_stmt 1             ; ragged.py:1056:34
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	.loc	1 1057 34                       ; ragged.py:1057:34
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_cndmask_b32 v75, 0x80000000, v75
	v_dual_cndmask_b32 v76, 0x80000000, v76 :: v_dual_cndmask_b32 v77, 0x80000000, v77
	v_dual_cndmask_b32 v78, 0x80000000, v78 :: v_dual_cndmask_b32 v79, 0x80000000, v79
	s_clause 0xf
	buffer_load_u8 v106, v36, s[8:11], 0 offen
	buffer_load_u8 v107, v37, s[8:11], 0 offen
	buffer_load_u8 v108, v38, s[8:11], 0 offen
	buffer_load_u8 v109, v39, s[8:11], 0 offen
	buffer_load_u8 v110, v40, s[8:11], 0 offen
	buffer_load_u8 v111, v41, s[8:11], 0 offen
	buffer_load_u8 v37, v42, s[8:11], 0 offen
	buffer_load_u8 v38, v43, s[8:11], 0 offen
	buffer_load_u8 v39, v44, s[8:11], 0 offen
	buffer_load_u8 v40, v73, s[8:11], 0 offen
	buffer_load_u8 v41, v74, s[8:11], 0 offen
	buffer_load_u8 v42, v75, s[8:11], 0 offen
	buffer_load_u8 v43, v76, s[8:11], 0 offen
	buffer_load_u8 v44, v77, s[8:11], 0 offen
	buffer_load_u8 v105, v78, s[8:11], 0 offen
	buffer_load_u8 v112, v79, s[8:11], 0 offen
	.loc	1 1056 34                       ; ragged.py:1056:34
	buffer_load_u8 v35, v35, s[4:7], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v80, s0
	v_cndmask_b32_e64 v73, 0x80000000, v81, s0
	v_cndmask_b32_e64 v74, 0x80000000, v82, s0
	v_cndmask_b32_e64 v75, 0x80000000, v83, s0
	v_cndmask_b32_e64 v76, 0x80000000, v84, s0
	v_cndmask_b32_e64 v77, 0x80000000, v85, s0
	v_cndmask_b32_e64 v78, 0x80000000, v86, s0
	v_cndmask_b32_e64 v79, 0x80000000, v87, s0
	v_cndmask_b32_e64 v80, 0x80000000, v88, s0
	v_cndmask_b32_e64 v81, 0x80000000, v89, s0
	v_cndmask_b32_e64 v82, 0x80000000, v90, s0
	v_cndmask_b32_e64 v83, 0x80000000, v91, s0
	v_cndmask_b32_e64 v84, 0x80000000, v92, s0
	v_cndmask_b32_e64 v85, 0x80000000, v93, s0
	v_cndmask_b32_e64 v86, 0x80000000, v94, s0
	s_clause 0xe
	buffer_load_u8 v36, v36, s[4:7], 0 offen
	buffer_load_u8 v73, v73, s[4:7], 0 offen
	buffer_load_u8 v74, v74, s[4:7], 0 offen
	buffer_load_u8 v75, v75, s[4:7], 0 offen
	buffer_load_u8 v76, v76, s[4:7], 0 offen
	buffer_load_u8 v77, v77, s[4:7], 0 offen
	buffer_load_u8 v78, v78, s[4:7], 0 offen
	buffer_load_u8 v79, v79, s[4:7], 0 offen
	buffer_load_u8 v80, v80, s[4:7], 0 offen
	buffer_load_u8 v81, v81, s[4:7], 0 offen
	buffer_load_u8 v82, v82, s[4:7], 0 offen
	buffer_load_u8 v83, v83, s[4:7], 0 offen
	buffer_load_u8 v84, v84, s[4:7], 0 offen
	buffer_load_u8 v85, v85, s[4:7], 0 offen
	buffer_load_u8 v86, v86, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v49, v35
	s_waitcnt vmcnt(14)
	ds_store_b8 v49, v36 offset:128
	s_waitcnt vmcnt(13)
	ds_store_b8 v49, v73 offset:256
	s_waitcnt vmcnt(12)
	ds_store_b8 v49, v74 offset:384
	s_waitcnt vmcnt(11)
	ds_store_b8 v49, v75 offset:512
	s_waitcnt vmcnt(10)
	ds_store_b8 v49, v76 offset:640
	s_waitcnt vmcnt(9)
	ds_store_b8 v49, v77 offset:768
	s_waitcnt vmcnt(8)
	ds_store_b8 v71, v78
	s_waitcnt vmcnt(7)
	ds_store_b8 v49, v79 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v49, v80 offset:1152
	s_waitcnt vmcnt(5)
	ds_store_b8 v49, v81 offset:1280
	s_waitcnt vmcnt(4)
	ds_store_b8 v49, v82 offset:1408
	s_waitcnt vmcnt(3)
	ds_store_b8 v49, v83 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v49, v84 offset:1664
	s_waitcnt vmcnt(1)
	ds_store_b8 v49, v85 offset:1792
	s_waitcnt vmcnt(0)
	ds_store_b8 v72, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v35, v50 offset:192
	ds_load_u8 v36, v50 offset:128
	ds_load_u8 v81, v50 offset:64
	ds_load_u8 v80, v50 offset:448
	ds_load_u8 v82, v50 offset:384
	ds_load_u8 v79, v50 offset:320
	ds_load_u8 v83, v50 offset:256
	ds_load_u8 v116, v50 offset:704
	ds_load_u8 v117, v50 offset:640
	ds_load_u8 v118, v50 offset:576
	ds_load_u8 v119, v50 offset:512
	ds_load_u8 v120, v50 offset:960
	ds_load_u8 v121, v50 offset:896
	ds_load_u8 v122, v50 offset:832
	ds_load_u8 v123, v50 offset:768
	ds_load_u8 v113, v50 offset:1216
	ds_load_u8 v114, v50 offset:1152
	ds_load_u8 v115, v50 offset:1088
	ds_load_u8 v124, v50 offset:1024
	ds_load_u8 v125, v50 offset:1472
	ds_load_u8 v126, v50 offset:1408
	ds_load_u8 v127, v50 offset:1344
	ds_load_u8 v84, v50
	ds_load_u8 v128, v50 offset:1280
	ds_load_u8 v129, v50 offset:1728
	ds_load_u8 v130, v50 offset:1664
	ds_load_u8 v131, v50 offset:1600
	ds_load_u8 v132, v50 offset:1536
	ds_load_u8 v133, v50 offset:1984
	ds_load_u8 v134, v50 offset:1920
	ds_load_u8 v135, v50 offset:1856
	ds_load_u8 v136, v50 offset:1792
	ds_load_u8 v73, v50 offset:224
	ds_load_u8 v74, v50 offset:160
	ds_load_u8 v75, v50 offset:96
	ds_load_u8 v76, v50 offset:480
	ds_load_u8 v77, v50 offset:416
	ds_load_u8 v78, v50 offset:352
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v83, v83, v79, 0xc0c0004
	v_perm_b32 v85, v82, v80, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	ds_load_u8 v79, v50 offset:288
	ds_load_u8 v82, v50 offset:672
	ds_load_u8 v80, v50 offset:32
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v84, v84, v81, 0xc0c0004
	ds_load_u8 v81, v50 offset:736
	v_lshl_or_b32 v36, v85, 16, v83
	v_lshl_or_b32 v35, v35, 16, v84
	ds_load_u8 v83, v50 offset:608
	ds_load_u8 v84, v50 offset:544
	ds_load_u8 v88, v50 offset:992
	ds_load_u8 v90, v50 offset:928
	ds_load_u8 v91, v50 offset:864
	ds_load_u8 v92, v50 offset:800
	ds_load_u8 v85, v50 offset:1248
	ds_load_u8 v86, v50 offset:1184
	ds_load_u8 v87, v50 offset:1120
	ds_load_u8 v89, v50 offset:1056
	ds_load_u8 v94, v50 offset:1504
	ds_load_u8 v96, v50 offset:1440
	ds_load_u8 v99, v50 offset:1376
	ds_load_u8 v100, v50 offset:1312
	ds_load_u8 v93, v50 offset:1760
	ds_load_u8 v95, v50 offset:1696
	ds_load_u8 v97, v50 offset:1632
	ds_load_u8 v98, v50 offset:1568
	ds_load_u8 v101, v50 offset:2016
	ds_load_u8 v102, v50 offset:1952
	ds_load_u8 v103, v50 offset:1888
	ds_load_u8 v104, v50 offset:1824
	.loc	1 1057 34                       ; ragged.py:1057:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v49, v106
	ds_store_b8 v49, v107 offset:128
	ds_store_b8 v49, v108 offset:256
	ds_store_b8 v49, v109 offset:384
	ds_store_b8 v49, v110 offset:512
	ds_store_b8 v49, v111 offset:640
	ds_store_b8 v49, v37 offset:768
	ds_store_b8 v71, v38
	ds_store_b8 v49, v39 offset:1024
	ds_store_b8 v49, v40 offset:1152
	ds_store_b8 v49, v41 offset:1280
	ds_store_b8 v49, v42 offset:1408
	ds_store_b8 v49, v43 offset:1536
	ds_store_b8 v49, v44 offset:1664
	ds_store_b8 v49, v105 offset:1792
	ds_store_b8 v72, v112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 31                       ; ragged.py:1058:31
	ds_load_u8 v37, v48 offset:320
	ds_load_u8 v38, v48 offset:256
	ds_load_u8 v106, v48 offset:1344
	v_perm_b32 v107, v114, v113, 0xc0c0004
	ds_load_u8 v113, v48 offset:1856
	v_perm_b32 v112, v130, v129, 0xc0c0004
	v_perm_b32 v111, v132, v131, 0xc0c0004
	v_perm_b32 v110, v134, v133, 0xc0c0004
	v_perm_b32 v134, v77, v76, 0xc0c0004
	v_perm_b32 v91, v92, v91, 0xc0c0004
	v_perm_b32 v90, v90, v88, 0xc0c0004
	v_perm_b32 v92, v84, v83, 0xc0c0004
	v_perm_b32 v137, v82, v81, 0xc0c0004
	v_perm_b32 v94, v96, v94, 0xc0c0004
	v_perm_b32 v96, v89, v87, 0xc0c0004
	v_perm_b32 v99, v100, v99, 0xc0c0004
	v_perm_b32 v100, v86, v85, 0xc0c0004
	v_lshl_or_b32 v90, v90, 16, v91
	v_lshl_or_b32 v89, v137, 16, v92
	v_perm_b32 v103, v104, v103, 0xc0c0004
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v48 offset:448
	ds_load_u8 v39, v48 offset:384
	v_perm_b32 v97, v98, v97, 0xc0c0004
	v_perm_b32 v93, v95, v93, 0xc0c0004
	v_lshl_or_b32 v92, v94, 16, v99
	v_lshl_or_b32 v91, v100, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v48 offset:64
	ds_load_u8 v40, v48
	v_lshl_or_b32 v44, v38, 16, v37
	v_perm_b32 v37, v123, v122, 0xc0c0004
	v_perm_b32 v38, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v48 offset:192
	ds_load_u8 v41, v48 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v40, 16, v39
	v_perm_b32 v39, v119, v118, 0xc0c0004
	v_perm_b32 v40, v117, v116, 0xc0c0004
	ds_load_u8 v116, v48 offset:1920
	ds_load_u8 v114, v48 offset:1792
	ds_load_u8 v117, v48 offset:1600
	ds_load_u8 v108, v48 offset:1280
	v_lshl_or_b32 v37, v40, 16, v39
	ds_load_u8 v39, v48 offset:832
	ds_load_u8 v40, v48 offset:768
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[35:36], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v48 offset:960
	ds_load_u8 v41, v48 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v48 offset:576
	ds_load_u8 v42, v48 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v48 offset:704
	ds_load_u8 v105, v48 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v105, v42, 0xc0c0004
	v_lshl_or_b32 v42, v40, 16, v39
	v_perm_b32 v39, v128, v127, 0xc0c0004
	v_perm_b32 v40, v126, v125, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v41, v105, 16, v41
	v_perm_b32 v105, v124, v115, 0xc0c0004
	ds_load_u8 v115, v48 offset:1984
	v_lshl_or_b32 v40, v40, 16, v39
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v39, v107, 16, v105
	v_perm_b32 v105, v108, v106, 0xc0c0004
	ds_load_u8 v108, v48 offset:1088
	ds_load_u8 v107, v48 offset:1472
	ds_load_u8 v109, v48 offset:1408
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v114, v116, v115, 0xc0c0004
	ds_load_u8 v115, v48 offset:1536
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v106, v109, v107, 0xc0c0004
	ds_load_u8 v107, v48 offset:1024
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v115, v115, v117, 0xc0c0004
	ds_load_u8 v116, v48 offset:1728
	ds_load_u8 v117, v48 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v107, v107, v108, 0xc0c0004
	ds_load_u8 v108, v48 offset:1216
	ds_load_u8 v109, v48 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v48 offset:352
	ds_load_u8 v118, v48 offset:288
	v_lshl_or_b32 v77, v116, 16, v115
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	v_perm_b32 v109, v136, v135, 0xc0c0004
	v_perm_b32 v135, v80, v75, 0xc0c0004
	v_perm_b32 v136, v74, v73, 0xc0c0004
	v_lshl_or_b32 v74, v106, 16, v105
	v_lshl_or_b32 v73, v108, 16, v107
	v_lshl_or_b32 v76, v110, 16, v109
	v_lshl_or_b32 v75, v112, 16, v111
	v_lshl_or_b32 v87, v136, 16, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[39:40], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v48 offset:480
	ds_load_u8 v119, v48 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v48 offset:32
	ds_load_u8 v120, v48 offset:96
	v_lshl_or_b32 v80, v118, 16, v117
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v119, v119, v120, 0xc0c0004
	ds_load_u8 v120, v48 offset:224
	ds_load_u8 v121, v48 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	ds_load_u8 v121, v48 offset:864
	ds_load_u8 v122, v48 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v48 offset:992
	ds_load_u8 v123, v48 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v122, v123, v122, 0xc0c0004
	ds_load_u8 v123, v48 offset:608
	ds_load_u8 v124, v48 offset:544
	v_lshl_or_b32 v82, v122, 16, v121
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	ds_load_u8 v124, v48 offset:736
	ds_load_u8 v125, v48 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v124, v125, v124, 0xc0c0004
	ds_load_u8 v125, v48 offset:1376
	ds_load_u8 v126, v48 offset:1312
	v_lshl_or_b32 v81, v124, 16, v123
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v125, v126, v125, 0xc0c0004
	ds_load_u8 v126, v48 offset:1504
	ds_load_u8 v127, v48 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v48 offset:1120
	ds_load_u8 v128, v48 offset:1056
	v_lshl_or_b32 v84, v126, 16, v125
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v48 offset:1248
	ds_load_u8 v129, v48 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v48 offset:1888
	ds_load_u8 v130, v48 offset:1824
	v_lshl_or_b32 v83, v128, 16, v127
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v48 offset:2016
	ds_load_u8 v131, v48 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v48 offset:1632
	ds_load_u8 v132, v48 offset:1568
	v_lshl_or_b32 v86, v130, 16, v129
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	ds_load_u8 v132, v48 offset:1760
	ds_load_u8 v133, v48 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v133, v79, v78, 0xc0c0004
	v_lshl_or_b32 v79, v120, 16, v119
	v_lshl_or_b32 v78, v114, 16, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v85, v132, 16, v131
	v_lshl_or_b32 v88, v134, 16, v133
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[79:80], v[35:36], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v101, 16, v103
	v_lshl_or_b32 v35, v93, 16, v97
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[87:88], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[87:88], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[81:82], v[37:38], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[89:90], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[89:90], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[39:40], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[91:92], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[83:84], v[91:92], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[85:86], v[75:76], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[77:78], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 1046 23                       ; ragged.py:1046:23
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1008 27 is_stmt 1             ; ragged.py:1008:27
	s_add_i32 s1, s14, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s2, s1, 31
	s_add_i32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s36, s1, 1
	.loc	1 1069 20 is_stmt 1             ; ragged.py:1069:20
	s_cmp_ge_i32 s12, s36
	.loc	1 1069 17 is_stmt 0             ; ragged.py:1069:17
	s_cbranch_scc1 .LBB0_6
; %bb.5:
	.loc	1 1080 33 is_stmt 1             ; ragged.py:1080:33
	s_and_b32 s1, s14, 0x80000001
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v55, s12, v54
	.loc	1 1080 33                       ; ragged.py:1080:33
	s_cmp_eq_u32 s1, 1
	s_mov_b32 s31, 0x31027000
	s_cselect_b32 s37, -1, 0
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s38, s12, s13
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v56, 2, v55
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_mul_i32 s12, s38, s18
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v57, 4, v55
	.loc	1 1081 42                       ; ragged.py:1081:42
	s_add_i32 s13, s12, s35
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s9, s36, v55
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_add3_u32 v34, s13, v52, v53
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v58, 6, v55
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s8, s36, v56
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v59, 8, v55
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s6, s36, v57
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mad_u64_u32 v[35:36], null, s18, 6, v[34:35]
	v_lshl_add_u32 v71, s18, 1, v34
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v60, 10, v55
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s17, s0, s9
	.loc	1 1079 30                       ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s5, s36, v58
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_lshl_add_u32 v72, s18, 2, v34
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v61, 12, v55
	.loc	1 1081 42                       ; ragged.py:1081:42
	v_mad_u64_u32 v[36:37], null, s18, 10, v[34:35]
	v_mad_u64_u32 v[37:38], null, s18, 12, v[34:35]
	v_mad_u64_u32 v[38:39], null, s18, 14, v[34:35]
	v_mad_u64_u32 v[39:40], null, s18, 18, v[34:35]
	v_mad_u64_u32 v[40:41], null, s18, 20, v[34:35]
	v_mad_u64_u32 v[41:42], null, s18, 22, v[34:35]
	v_mad_u64_u32 v[42:43], null, s18, 24, v[34:35]
	v_mad_u64_u32 v[52:53], null, s18, 28, v[34:35]
	v_lshl_add_u32 v73, s18, 3, v34
	v_lshl_add_u32 v74, s18, 4, v34
	v_mad_u64_u32 v[43:44], null, s18, 26, v[34:35]
	v_mad_u64_u32 v[53:54], null, s18, 30, v[34:35]
	.loc	1 1081 34 is_stmt 0             ; ragged.py:1081:34
	v_cndmask_b32_e64 v34, 0x80000000, v34, s17
	.loc	1 1081 66                       ; ragged.py:1081:66
	s_and_b32 s17, s0, s8
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s4, s36, v59
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v62, 14, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v44, 0x80000000, v71, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s6
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s3, s36, v60
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v63, 16, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v54, 0x80000000, v72, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s5
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s2, s36, v61
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v64, 18, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v35, 0x80000000, v35, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s4
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s7, s36, v62
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v65, 20, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v71, 0x80000000, v73, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s3
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s1, s36, v63
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v66, 22, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s2
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s10, s36, v64
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v67, 24, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v37, 0x80000000, v37, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s7
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s11, s36, v65
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v68, 26, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_and_b32 s29, s21, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	s_mov_b32 s28, s20
	v_cndmask_b32_e64 v38, 0x80000000, v38, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s1
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s12, s36, v66
	.loc	1 1070 26                       ; ragged.py:1070:26
	v_or_b32_e32 v69, 28, v55
	v_or_b32_e32 v70, 30, v55
	.loc	1 1081 34                       ; ragged.py:1081:34
	s_clause 0x7
	buffer_load_u8 v72, v34, s[28:31], 0 offen
	buffer_load_u8 v73, v44, s[28:31], 0 offen
	buffer_load_u8 v54, v54, s[28:31], 0 offen
	buffer_load_u8 v75, v35, s[28:31], 0 offen
	buffer_load_u8 v71, v71, s[28:31], 0 offen
	buffer_load_u8 v76, v36, s[28:31], 0 offen
	buffer_load_u8 v77, v37, s[28:31], 0 offen
	buffer_load_u8 v78, v38, s[28:31], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v74, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s10
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s13, s36, v67
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v35, 0x80000000, v39, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s11
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s14, s36, v68
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v36, 0x80000000, v40, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s12
	.loc	1 1079 30 is_stmt 1             ; ragged.py:1079:30
	v_cmp_gt_i32_e64 s15, s36, v69
	v_cmp_gt_i32_e64 s16, s36, v70
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v37, 0x80000000, v41, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s13
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_lshl_add_u32 v86, s19, 1, v33
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v38, 0x80000000, v42, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s14
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	s_mul_i32 s38, s38, s19
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v39, 0x80000000, v43, s17
	.loc	1 1081 66 is_stmt 0             ; ragged.py:1081:66
	s_and_b32 s17, s0, s15
	s_and_b32 s0, s0, s16
	.loc	1 1081 34                       ; ragged.py:1081:34
	v_cndmask_b32_e64 v40, 0x80000000, v52, s17
	v_cndmask_b32_e64 v41, 0x80000000, v53, s0
	s_clause 0x7
	buffer_load_u8 v74, v34, s[28:31], 0 offen
	buffer_load_u8 v79, v35, s[28:31], 0 offen
	buffer_load_u8 v80, v36, s[28:31], 0 offen
	buffer_load_u8 v81, v37, s[28:31], 0 offen
	buffer_load_u8 v82, v38, s[28:31], 0 offen
	buffer_load_u8 v83, v39, s[28:31], 0 offen
	buffer_load_u8 v84, v40, s[28:31], 0 offen
	buffer_load_u8 v85, v41, s[28:31], 0 offen
	.loc	1 1082 42 is_stmt 1             ; ragged.py:1082:42
	v_mad_u64_u32 v[34:35], null, s19, 6, v[33:34]
	v_lshl_add_u32 v87, s19, 2, v33
	v_lshl_add_u32 v88, s19, 3, v33
	v_lshl_add_u32 v89, s19, 4, v33
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_and_b32 s29, s23, 0xffff
	s_mov_b32 s28, s22
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_mad_u64_u32 v[35:36], null, s19, 10, v[33:34]
	v_mad_u64_u32 v[36:37], null, s19, 12, v[33:34]
	v_mad_u64_u32 v[37:38], null, s19, 14, v[33:34]
	v_mad_u64_u32 v[38:39], null, s19, 18, v[33:34]
	v_mad_u64_u32 v[39:40], null, s19, 20, v[33:34]
	v_mad_u64_u32 v[40:41], null, s19, 22, v[33:34]
	v_mad_u64_u32 v[41:42], null, s19, 24, v[33:34]
	v_mad_u64_u32 v[42:43], null, s19, 26, v[33:34]
	v_mad_u64_u32 v[43:44], null, s19, 28, v[33:34]
	v_mad_u64_u32 v[52:53], null, s19, 30, v[33:34]
	v_add3_u32 v33, v51, v33, s38
	v_add3_u32 v44, v51, v86, s38
	v_add3_u32 v53, v51, v87, s38
	v_add3_u32 v34, v51, v34, s38
	v_add3_u32 v86, v51, v88, s38
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v35, v51, v35, s38
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v44, 0x80000000, v44, s0
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1082 42                       ; ragged.py:1082:42
	v_add3_u32 v36, v51, v36, s38
	v_add3_u32 v37, v51, v37, s38
	v_add3_u32 v87, v51, v89, s38
	v_add3_u32 v38, v51, v38, s38
	v_add3_u32 v39, v51, v39, s38
	v_add3_u32 v40, v51, v40, s38
	v_add3_u32 v41, v51, v41, s38
	v_add3_u32 v42, v51, v42, s38
	v_add3_u32 v43, v51, v43, s38
	v_add3_u32 v51, v51, v52, s38
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v52, 0x80000000, v53, s0
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1080 63 is_stmt 1             ; ragged.py:1080:63
	s_add_i32 s36, s36, -1
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s4, s36, v60
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v53, 0x80000000, v86, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s3, s36, v59
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v35, 0x80000000, v35, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s2, s36, v58
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s5, s36, v61
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s1
	.loc	1 1082 34                       ; ragged.py:1082:34
	s_clause 0x7
	buffer_load_u8 v86, v33, s[28:31], 0 offen
	buffer_load_u8 v88, v44, s[28:31], 0 offen
	buffer_load_u8 v89, v52, s[28:31], 0 offen
	buffer_load_u8 v90, v34, s[28:31], 0 offen
	buffer_load_u8 v91, v53, s[28:31], 0 offen
	buffer_load_u8 v92, v35, s[28:31], 0 offen
	buffer_load_u8 v93, v36, s[28:31], 0 offen
	buffer_load_u8 v94, v37, s[28:31], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v87, s0
	.loc	1 1082 66                       ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s1, s36, v57
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v34, 0x80000000, v38, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s6, s36, v62
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v35, 0x80000000, v39, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s7, s36, v63
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v36, 0x80000000, v40, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s8, s36, v64
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v37, 0x80000000, v41, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e64 s9, s36, v65
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v38, 0x80000000, v42, s0
	.loc	1 1082 66 is_stmt 0             ; ragged.py:1082:66
	s_and_b32 s0, vcc_lo, s15
	s_and_b32 vcc_lo, vcc_lo, s16
	.loc	1 1082 34                       ; ragged.py:1082:34
	v_cndmask_b32_e64 v39, 0x80000000, v43, s0
	v_cndmask_b32_e32 v40, 0x80000000, v51, vcc_lo
	s_clause 0x7
	buffer_load_u8 v87, v33, s[28:31], 0 offen
	buffer_load_u8 v95, v34, s[28:31], 0 offen
	buffer_load_u8 v96, v35, s[28:31], 0 offen
	buffer_load_u8 v97, v36, s[28:31], 0 offen
	buffer_load_u8 v98, v37, s[28:31], 0 offen
	buffer_load_u8 v99, v38, s[28:31], 0 offen
	buffer_load_u8 v100, v39, s[28:31], 0 offen
	buffer_load_u8 v101, v40, s[28:31], 0 offen
	.loc	1 1080 56 is_stmt 1             ; ragged.py:1080:56
	v_cmp_eq_u32_e32 vcc_lo, s36, v55
	v_cmp_eq_u32_e64 s0, s36, v56
	v_cmp_eq_u32_e64 s10, s36, v66
	v_cmp_eq_u32_e64 s11, s36, v67
	v_cmp_eq_u32_e64 s12, s36, v68
	v_cmp_eq_u32_e64 s13, s36, v69
	v_cmp_eq_u32_e64 s14, s36, v70
	.loc	1 1080 32 is_stmt 0             ; ragged.py:1080:32
	s_and_b32 s15, s37, vcc_lo
	s_and_b32 s1, s37, s1
	s_and_b32 s0, s37, s0
	s_and_b32 s2, s37, s2
	s_and_b32 s3, s37, s3
	s_and_b32 s4, s37, s4
	s_and_b32 s5, s37, s5
	s_and_b32 s6, s37, s6
	s_and_b32 s7, s37, s7
	s_and_b32 s8, s37, s8
	s_and_b32 s9, s37, s9
	s_and_b32 s10, s37, s10
	s_and_b32 s11, s37, s11
	s_and_b32 s12, s37, s12
	s_and_b32 s13, s37, s13
	s_and_b32 s14, s37, s14
	.loc	1 1083 34 is_stmt 1             ; ragged.py:1083:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1083 62 is_stmt 0             ; ragged.py:1083:62
	s_waitcnt vmcnt(31)
	v_and_b16 v33.l, v72.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v33.h, v73.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v34.l, v54.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v35.l, v75.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v35.h, v71.l, 15
	s_waitcnt vmcnt(26)
	v_and_b16 v36.l, v76.l, 15
	s_waitcnt vmcnt(25)
	v_and_b16 v36.h, v77.l, 15
	s_waitcnt vmcnt(24)
	v_and_b16 v37.l, v78.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v33.l, v72.l, v33.l, s15
	v_cndmask_b16 v34.l, v54.l, v34.l, s1
	v_cndmask_b16 v33.h, v73.l, v33.h, s0
	v_cndmask_b16 v35.l, v75.l, v35.l, s2
	v_cndmask_b16 v35.h, v71.l, v35.h, s3
	v_cndmask_b16 v36.l, v76.l, v36.l, s4
	v_cndmask_b16 v36.h, v77.l, v36.h, s5
	v_cndmask_b16 v37.l, v78.l, v37.l, s6
	.loc	1 1083 62                       ; ragged.py:1083:62
	s_waitcnt vmcnt(23)
	v_and_b16 v34.h, v74.l, 15
	s_waitcnt vmcnt(22)
	v_and_b16 v37.h, v79.l, 15
	s_waitcnt vmcnt(21)
	v_and_b16 v38.l, v80.l, 15
	s_waitcnt vmcnt(20)
	v_and_b16 v38.h, v81.l, 15
	s_waitcnt vmcnt(19)
	v_and_b16 v39.l, v82.l, 15
	s_waitcnt vmcnt(18)
	v_and_b16 v39.h, v83.l, 15
	s_waitcnt vmcnt(17)
	v_and_b16 v40.l, v84.l, 15
	s_waitcnt vmcnt(16)
	v_and_b16 v40.h, v85.l, 15
	.loc	1 1083 34                       ; ragged.py:1083:34
	v_cndmask_b16 v34.h, v74.l, v34.h, s7
	v_cndmask_b16 v37.h, v79.l, v37.h, s8
	v_cndmask_b16 v38.l, v80.l, v38.l, s9
	v_cndmask_b16 v38.h, v81.l, v38.h, s10
	v_cndmask_b16 v39.l, v82.l, v39.l, s11
	v_cndmask_b16 v39.h, v83.l, v39.h, s12
	v_cndmask_b16 v40.l, v84.l, v40.l, s13
	v_cndmask_b16 v40.h, v85.l, v40.h, s14
	ds_store_b8 v49, v33
	ds_store_b8_d16_hi v49, v33 offset:128
	ds_store_b8 v49, v34 offset:256
	ds_store_b8 v49, v35 offset:384
	ds_store_b8_d16_hi v49, v35 offset:512
	ds_store_b8 v49, v36 offset:640
	ds_store_b8_d16_hi v49, v36 offset:768
	ds_store_b8 v49, v37 offset:896
	ds_store_b8_d16_hi v49, v34 offset:1024
	ds_store_b8_d16_hi v49, v37 offset:1152
	ds_store_b8 v49, v38 offset:1280
	ds_store_b8_d16_hi v49, v38 offset:1408
	ds_store_b8 v49, v39 offset:1536
	ds_store_b8_d16_hi v49, v39 offset:1664
	ds_store_b8 v49, v40 offset:1792
	ds_store_b8_d16_hi v49, v40 offset:1920
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1084 62 is_stmt 1             ; ragged.py:1084:62
	s_waitcnt vmcnt(15)
	v_and_b16 v41.l, v86.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v41.h, v88.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v42.l, v89.l, 15
	s_waitcnt vmcnt(12)
	v_and_b16 v42.h, v90.l, 15
	s_waitcnt vmcnt(11)
	v_and_b16 v43.l, v91.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v43.h, v92.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v44.l, v93.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v44.h, v94.l, 15
	.loc	1 1084 34 is_stmt 0             ; ragged.py:1084:34
	v_cndmask_b16 v41.l, v86.l, v41.l, s15
	v_cndmask_b16 v41.h, v88.l, v41.h, s0
	v_cndmask_b16 v42.l, v89.l, v42.l, s1
	v_cndmask_b16 v42.h, v90.l, v42.h, s2
	v_cndmask_b16 v43.l, v91.l, v43.l, s3
	v_cndmask_b16 v43.h, v92.l, v43.h, s4
	v_cndmask_b16 v44.l, v93.l, v44.l, s5
	v_cndmask_b16 v44.h, v94.l, v44.h, s6
	.loc	1 1084 62                       ; ragged.py:1084:62
	s_waitcnt vmcnt(7)
	v_and_b16 v51.l, v87.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v51.h, v95.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v52.l, v96.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v52.h, v97.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v53.l, v98.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v53.h, v99.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v54.l, v100.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v54.h, v101.l, 15
	.loc	1 1084 34                       ; ragged.py:1084:34
	v_cndmask_b16 v51.l, v87.l, v51.l, s7
	v_cndmask_b16 v51.h, v95.l, v51.h, s8
	v_cndmask_b16 v52.l, v96.l, v52.l, s9
	v_cndmask_b16 v52.h, v97.l, v52.h, s10
	v_cndmask_b16 v53.l, v98.l, v53.l, s11
	v_cndmask_b16 v53.h, v99.l, v53.h, s12
	v_cndmask_b16 v54.l, v100.l, v54.l, s13
	v_cndmask_b16 v54.h, v101.l, v54.h, s14
	.loc	1 1085 31 is_stmt 1             ; ragged.py:1085:31
	ds_load_u8 v33, v50 offset:448
	ds_load_u8 v34, v50 offset:384
	ds_load_u8 v35, v50 offset:320
	ds_load_u8 v36, v50 offset:256
	ds_load_u8 v55, v50 offset:480
	ds_load_u8 v56, v50 offset:416
	ds_load_u8 v57, v50 offset:352
	ds_load_u8 v58, v50 offset:288
	ds_load_u8 v37, v50 offset:192
	ds_load_u8 v38, v50 offset:128
	ds_load_u8 v39, v50 offset:64
	ds_load_u8 v59, v50 offset:224
	ds_load_u8 v60, v50 offset:160
	ds_load_u8 v61, v50 offset:96
	ds_load_u8 v40, v50
	ds_load_u8 v62, v50 offset:32
	ds_load_u8 v63, v50 offset:704
	ds_load_u8 v64, v50 offset:640
	ds_load_u8 v65, v50 offset:576
	ds_load_u8 v66, v50 offset:512
	ds_load_u8 v67, v50 offset:736
	ds_load_u8 v68, v50 offset:672
	ds_load_u8 v69, v50 offset:608
	ds_load_u8 v70, v50 offset:544
	ds_load_u8 v71, v50 offset:960
	ds_load_u8 v72, v50 offset:896
	ds_load_u8 v73, v50 offset:832
	ds_load_u8 v74, v50 offset:768
	ds_load_u8 v75, v50 offset:992
	ds_load_u8 v76, v50 offset:928
	ds_load_u8 v77, v50 offset:864
	ds_load_u8 v78, v50 offset:800
	ds_load_u8 v79, v50 offset:1216
	ds_load_u8 v80, v50 offset:1152
	ds_load_u8 v81, v50 offset:1088
	ds_load_u8 v82, v50 offset:1024
	ds_load_u8 v83, v50 offset:1248
	ds_load_u8 v84, v50 offset:1184
	ds_load_u8 v85, v50 offset:1120
	ds_load_u8 v86, v50 offset:1056
	ds_load_u8 v87, v50 offset:1472
	ds_load_u8 v88, v50 offset:1408
	ds_load_u8 v89, v50 offset:1344
	ds_load_u8 v90, v50 offset:1280
	ds_load_u8 v91, v50 offset:1504
	ds_load_u8 v92, v50 offset:1440
	ds_load_u8 v93, v50 offset:1376
	ds_load_u8 v94, v50 offset:1312
	ds_load_u8 v95, v50 offset:1728
	ds_load_u8 v96, v50 offset:1664
	ds_load_u8 v97, v50 offset:1600
	ds_load_u8 v98, v50 offset:1536
	ds_load_u8 v99, v50 offset:1760
	ds_load_u8 v100, v50 offset:1696
	ds_load_u8 v101, v50 offset:1632
	ds_load_u8 v102, v50 offset:1568
	ds_load_u8 v103, v50 offset:1984
	ds_load_u8 v104, v50 offset:1920
	ds_load_u8 v105, v50 offset:1856
	ds_load_u8 v106, v50 offset:1792
	ds_load_u8 v107, v50 offset:2016
	ds_load_u8 v108, v50 offset:1952
	ds_load_u8 v109, v50 offset:1888
	ds_load_u8 v110, v50 offset:1824
	.loc	1 1084 34                       ; ragged.py:1084:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v49, v41
	ds_store_b8_d16_hi v49, v41 offset:128
	ds_store_b8 v49, v42 offset:256
	ds_store_b8_d16_hi v49, v42 offset:384
	ds_store_b8 v49, v43 offset:512
	ds_store_b8_d16_hi v49, v43 offset:640
	ds_store_b8 v49, v44 offset:768
	ds_store_b8_d16_hi v49, v44 offset:896
	ds_store_b8 v49, v51 offset:1024
	ds_store_b8_d16_hi v49, v51 offset:1152
	ds_store_b8 v49, v52 offset:1280
	ds_store_b8_d16_hi v49, v52 offset:1408
	ds_store_b8 v49, v53 offset:1536
	ds_store_b8_d16_hi v49, v53 offset:1664
	ds_store_b8 v49, v54 offset:1792
	ds_store_b8_d16_hi v49, v54 offset:1920
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1085 31                       ; ragged.py:1085:31
	ds_load_u8 v49, v48 offset:64
	ds_load_u8 v50, v48
	ds_load_u8 v51, v48 offset:192
	ds_load_u8 v52, v48 offset:128
	ds_load_u8 v41, v48 offset:320
	ds_load_u8 v42, v48 offset:256
	ds_load_u8 v43, v48 offset:448
	ds_load_u8 v44, v48 offset:384
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v53, v48 offset:480
	ds_load_u8 v54, v48 offset:416
	ds_load_u8 v111, v48 offset:352
	ds_load_u8 v112, v48 offset:288
	ds_load_u8 v113, v48 offset:224
	ds_load_u8 v114, v48 offset:160
	ds_load_u8 v115, v48 offset:96
	ds_load_u8 v116, v48 offset:32
	v_lshl_or_b32 v34, v33, 16, v35
	v_perm_b32 v95, v96, v95, 0xc0c0004
	v_lshl_or_b32 v33, v37, 16, v36
	v_perm_b32 v57, v58, v57, 0xc0c0004
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v56, v62, v61, 0xc0c0004
	v_perm_b32 v58, v60, v59, 0xc0c0004
	v_perm_b32 v61, v68, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v55, v55, 16, v57
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v35, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v38, v42, v41, 0xc0c0004
	v_perm_b32 v37, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v39, v44, v43, 0xc0c0004
	v_perm_b32 v49, v74, v73, 0xc0c0004
	v_perm_b32 v50, v72, v71, 0xc0c0004
	v_perm_b32 v51, v66, v65, 0xc0c0004
	v_lshl_or_b32 v35, v37, 16, v35
	ds_load_u8 v37, v48 offset:576
	ds_load_u8 v42, v48 offset:512
	ds_load_u8 v43, v48 offset:704
	ds_load_u8 v44, v48 offset:640
	v_lshl_or_b32 v36, v39, 16, v38
	ds_load_u8 v38, v48 offset:832
	ds_load_u8 v39, v48 offset:768
	ds_load_u8 v40, v48 offset:960
	ds_load_u8 v41, v48 offset:896
	v_perm_b32 v52, v64, v63, 0xc0c0004
	ds_load_u8 v63, v48 offset:992
	ds_load_u8 v64, v48 offset:928
	ds_load_u8 v65, v48 offset:864
	ds_load_u8 v66, v48 offset:800
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v54, v116, v115, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[33:34], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v57, v76, v75, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v42, v37, 0xc0c0004
	v_lshl_or_b32 v37, v52, 16, v51
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v48 offset:1088
	ds_load_u8 v120, v48 offset:1024
	ds_load_u8 v121, v48 offset:1216
	ds_load_u8 v122, v48 offset:1152
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	ds_load_u8 v41, v48 offset:1344
	ds_load_u8 v71, v48 offset:1280
	ds_load_u8 v72, v48 offset:1472
	ds_load_u8 v73, v48 offset:1408
	ds_load_u8 v74, v48 offset:736
	ds_load_u8 v117, v48 offset:672
	ds_load_u8 v118, v48 offset:608
	ds_load_u8 v119, v48 offset:544
	v_perm_b32 v39, v39, v38, 0xc0c0004
	v_lshl_or_b32 v38, v50, 16, v49
	v_perm_b32 v49, v82, v81, 0xc0c0004
	v_perm_b32 v50, v80, v79, 0xc0c0004
	ds_load_u8 v52, v48 offset:1504
	ds_load_u8 v79, v48 offset:1440
	ds_load_u8 v80, v48 offset:1376
	ds_load_u8 v81, v48 offset:1312
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v43, 16, v42
	v_perm_b32 v42, v90, v89, 0xc0c0004
	v_perm_b32 v43, v88, v87, 0xc0c0004
	v_perm_b32 v90, v98, v97, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[37:38], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v51, v71, v41, 0xc0c0004
	v_lshl_or_b32 v42, v43, 16, v42
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v71, v73, v72, 0xc0c0004
	v_perm_b32 v88, v120, v44, 0xc0c0004
	v_perm_b32 v89, v122, v121, 0xc0c0004
	ds_load_u8 v72, v48 offset:1248
	ds_load_u8 v73, v48 offset:1184
	ds_load_u8 v82, v48 offset:1120
	ds_load_u8 v87, v48 offset:1056
	v_lshl_or_b32 v41, v50, 16, v49
	v_lshl_or_b32 v44, v71, 16, v51
	v_perm_b32 v49, v106, v105, 0xc0c0004
	v_lshl_or_b32 v43, v89, 16, v88
	ds_load_u8 v51, v48 offset:1856
	ds_load_u8 v71, v48 offset:1792
	ds_load_u8 v88, v48 offset:1984
	ds_load_u8 v89, v48 offset:1920
	v_perm_b32 v50, v104, v103, 0xc0c0004
	v_perm_b32 v104, v114, v113, 0xc0c0004
	ds_load_u8 v96, v48 offset:1600
	ds_load_u8 v97, v48 offset:1536
	ds_load_u8 v98, v48 offset:1728
	ds_load_u8 v103, v48 offset:1664
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v50, 16, v49
	v_perm_b32 v50, v112, v111, 0xc0c0004
	ds_load_u8 v105, v48 offset:2016
	ds_load_u8 v106, v48 offset:1952
	ds_load_u8 v111, v48 offset:1888
	ds_load_u8 v112, v48 offset:1824
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v71, v71, v51, 0xc0c0004
	v_lshl_or_b32 v51, v53, 16, v50
	v_lshl_or_b32 v50, v104, 16, v54
	v_perm_b32 v53, v66, v65, 0xc0c0004
	v_perm_b32 v54, v64, v63, 0xc0c0004
	v_perm_b32 v63, v119, v118, 0xc0c0004
	v_perm_b32 v64, v117, v74, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v88, v89, v88, 0xc0c0004
	ds_load_u8 v65, v48 offset:1760
	ds_load_u8 v66, v48 offset:1696
	ds_load_u8 v74, v48 offset:1632
	ds_load_u8 v89, v48 offset:1568
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[33:34], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v54, 16, v53
	v_lshl_or_b32 v33, v64, 16, v63
	v_perm_b32 v54, v81, v80, 0xc0c0004
	v_perm_b32 v63, v79, v52, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v112, v111, 0xc0c0004
	v_perm_b32 v60, v106, v105, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[33:34], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v37, v87, v82, 0xc0c0004
	v_lshl_or_b32 v38, v63, 16, v54
	v_perm_b32 v54, v73, v72, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_perm_b32 v97, v103, v98, 0xc0c0004
	v_lshl_or_b32 v48, v95, 16, v90
	v_lshl_or_b32 v53, v88, 16, v71
	v_lshl_or_b32 v37, v54, 16, v37
	v_lshl_or_b32 v54, v58, 16, v56
	v_perm_b32 v56, v78, v77, 0xc0c0004
	v_perm_b32 v58, v70, v69, 0xc0c0004
	v_lshl_or_b32 v52, v97, 16, v96
	v_wmma_i32_16x16x16_iu4 v[25:32], v[37:38], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v41, v60, 16, v59
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v57, 16, v56
	v_lshl_or_b32 v35, v61, 16, v58
	v_perm_b32 v42, v94, v93, 0xc0c0004
	v_perm_b32 v56, v92, v91, 0xc0c0004
	v_perm_b32 v58, v86, v85, 0xc0c0004
	v_perm_b32 v59, v84, v83, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[54:55], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v89, v74, 0xc0c0004
	v_perm_b32 v61, v66, v65, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v57, v56, 16, v42
	v_lshl_or_b32 v56, v59, 16, v58
	v_perm_b32 v39, v110, v109, 0xc0c0004
	v_perm_b32 v42, v108, v107, 0xc0c0004
	v_perm_b32 v50, v102, v101, 0xc0c0004
	v_perm_b32 v51, v100, v99, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v40, v61, 16, v60
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v42, 16, v39
	v_lshl_or_b32 v33, v51, 16, v50
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[56:57], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[52:53], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[40:41], v[48:49], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[33:34], v[1:8] neg_lo:[1,1,0]
.LBB0_6:
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v33, 4, v0
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v65, s35, v45
	.loc	1 1098 33 is_stmt 1             ; ragged.py:1098:33
	s_mul_i32 s0, s34, s18
	.loc	1 1105 33                       ; ragged.py:1105:33
	s_mul_i32 s1, s34, s19
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s2, s35, s0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_or_b32 v33, v33, 1, v47
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v66, s2, v45, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s18, v65
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s3, s33, s1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v59, 32, v45
	v_or_b32_e32 v57, 2, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v63, s33, v33
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v56, 4, v33
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v65, 0x80000000, v66, s0
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v66, s3, v33, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v62, s33, v57
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v63
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v55, 6, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v61, s33, v56
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v57, s3, v57, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v53, 8, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v63, 0x80000000, v66, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v62
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v60, s33, v55
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v56, s3, v56, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v42, 10, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v58, s33, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v61
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v55, s3, v55, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v41, 12, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v54, s33, v42
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v53, s3, v53, 1
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v60
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v40, 14, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v52, s33, v41
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v42, s3, v42, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v39, 32, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v58
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v51, s33, v40
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v41, s3, v41, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v38, 34, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v50, s33, v39
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v54
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v40, s3, v40, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v37, 36, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v49, s33, v38
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v39, s3, v39, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v52
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v36, 38, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v48, s33, v37
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v38, s3, v38, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v35, 40, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v51
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v47, s33, v36
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v37, s3, v37, 1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v34, 42, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v44, s33, v35
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v50
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v64, s35, v59
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v36, s3, v36, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v43, s33, v34
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_lshl_u32 v67, s2, v59, 1
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v49
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s18, v64
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v35, s3, v35, 1
	v_add_lshl_u32 v34, s3, v34, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_and_b32 s45, s25, 0xffff
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v48
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e32 v64, 0x80000000, v67, vcc_lo
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_mov_b32 s44, s24
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v47
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_clause 0x1
	buffer_load_u16 v65, v65, s[44:47], 0 offen
	buffer_load_u16 v64, v64, s[44:47], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s45, s27, 0xffff
	s_mov_b32 s44, s26
	s_clause 0x7
	buffer_load_u16 v51, v63, s[44:47], 0 offen
	buffer_load_u16 v52, v57, s[44:47], 0 offen
	buffer_load_u16 v54, v56, s[44:47], 0 offen
	buffer_load_u16 v55, v55, s[44:47], 0 offen
	buffer_load_u16 v53, v53, s[44:47], 0 offen
	buffer_load_u16 v42, v42, s[44:47], 0 offen
	buffer_load_u16 v41, v41, s[44:47], 0 offen
	buffer_load_u16 v40, v40, s[44:47], 0 offen
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v44
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v70, v5
	v_cvt_f32_i32_e32 v71, v6
	v_cvt_f32_i32_e32 v66, v1
	v_cvt_f32_i32_e32 v67, v2
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v43
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v68, v3
	v_cvt_f32_i32_e32 v69, v4
	v_cvt_f32_i32_e32 v72, v7
	v_cvt_f32_i32_e32 v48, v19
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	s_clause 0x5
	buffer_load_u16 v38, v38, s[44:47], 0 offen
	buffer_load_u16 v39, v39, s[44:47], 0 offen
	buffer_load_u16 v36, v36, s[44:47], 0 offen
	buffer_load_u16 v37, v37, s[44:47], 0 offen
	buffer_load_u16 v43, v34, s[44:47], 0 offen
	buffer_load_u16 v44, v35, s[44:47], 0 offen
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v34, 44, v33
	v_or_b32_e32 v33, 46, v33
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v49, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v35, s33, v34
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v34, s3, v34, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v47, s33, v33
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v33, s3, v33, 1
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v23, v23
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v35
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v47
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v47, v18
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_clause 0x1
	buffer_load_u16 v35, v34, s[44:47], 0 offen
	buffer_load_u16 v34, v33, s[44:47], 0 offen
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v33, 24, v46
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s1, s2, s19
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v46, v17
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s2, s1, s33
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 39, v33
	v_or_b32_e32 v6, 38, v33
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[3:4], null, s19, v45, s[2:3]
	v_mad_u64_u32 v[1:2], null, s19, v59, s[2:3]
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v7, 37, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s33, v5
	v_or_b32_e32 v4, s33, v6
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v50, v10
	v_cvt_f32_i32_e32 v56, v9
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v45, s33, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v2
	v_cmp_gt_i32_e64 s2, s19, v4
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v57, v11
	v_cvt_f32_i32_e32 v58, v12
	v_cvt_f32_i32_e32 v60, v13
	v_cvt_f32_i32_e32 v61, v14
	v_cvt_f32_i32_e32 v63, v16
	v_cvt_f32_i32_e32 v73, v8
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v8, 36, v33
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s3, s19, v45
	.loc	1 1095 19                       ; ragged.py:1095:19
	v_cvt_f32_i32_e32 v62, v15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v20.h, 0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v9, 35, v33
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v59, s33, v8
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v10, 34, v33
	v_or_b32_e32 v11, 33, v33
	v_or_b32_e32 v12, 32, v33
	v_or_b32_e32 v13, 7, v33
	v_or_b32_e32 v14, 6, v33
	v_or_b32_e32 v15, 5, v33
	v_or_b32_e32 v16, 4, v33
	v_or_b32_e32 v17, 3, v33
	v_or_b32_e32 v18, 2, v33
	v_or_b32_e32 v19, 1, v33
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s19, v59
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v74, s33, v33
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v75.h, v20.h
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v81, s33, v9
	v_or_b32_e32 v82, s33, v10
	v_or_b32_e32 v83, s33, v11
	v_or_b32_e32 v84, s33, v12
	v_or_b32_e32 v85, s33, v13
	v_or_b32_e32 v86, s33, v14
	v_or_b32_e32 v87, s33, v15
	v_or_b32_e32 v88, s33, v16
	v_or_b32_e32 v89, s33, v17
	v_or_b32_e32 v90, s33, v18
	v_or_b32_e32 v91, s33, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v77.h, v20.h
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s19, v74
	v_cmp_gt_i32_e64 s5, s19, v81
	v_cmp_gt_i32_e64 s6, s19, v82
	v_cmp_gt_i32_e64 s7, s19, v83
	v_cmp_gt_i32_e64 s8, s19, v84
	v_cmp_gt_i32_e64 s9, s19, v85
	v_cmp_gt_i32_e64 s10, s19, v86
	v_cmp_gt_i32_e64 s11, s19, v87
	v_cmp_gt_i32_e64 s12, s19, v88
	v_cmp_gt_i32_e64 s13, s19, v89
	v_cmp_gt_i32_e64 s15, s19, v90
	v_cmp_gt_i32_e64 s16, s19, v91
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v79.h, v20.h
	v_mov_b16_e32 v80.h, v20.h
	v_mov_b16_e32 v76.h, v20.h
	v_mov_b16_e32 v78.h, v20.h
	v_and_b32_e32 v0, 16, v0
	s_and_b32 s45, s43, 0xffff
	s_mov_b32 s44, s42
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v52, 16, v52
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_lshlrev_b32_e32 v4, 16, v64
	v_lshlrev_b32_e32 v2, 16, v65
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v45, v46, v2 :: v_dual_lshlrev_b32 v40, 16, v40
	v_mul_f32_e32 v46, v47, v2
	v_mul_f32_e32 v47, v48, v2
	v_dual_mul_f32 v48, v49, v2 :: v_dual_mul_f32 v59, v4, v63
	v_mul_f32_e32 v49, v4, v50
	v_mul_f32_e32 v21, v21, v2
	v_mul_f32_e32 v22, v22, v2
	v_mul_f32_e32 v23, v23, v2
	v_mul_f32_e32 v24, v24, v2
	v_mul_f32_e32 v25, v25, v2
	v_dual_mul_f32 v26, v26, v2 :: v_dual_mul_f32 v63, v4, v69
	v_dual_mul_f32 v27, v27, v2 :: v_dual_mul_f32 v64, v4, v68
	v_mul_f32_e32 v28, v28, v2
	v_mul_f32_e32 v29, v29, v2
	v_dual_mul_f32 v30, v30, v2 :: v_dual_mul_f32 v65, v4, v71
	v_mul_f32_e32 v31, v31, v2
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v2, v32, v2 :: v_dual_lshlrev_b32 v39, 16, v39
	v_mul_f32_e32 v32, v4, v56
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v50, 16, v51
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v51, v4, v58
	v_mul_f32_e32 v56, v4, v57
	v_mul_f32_e32 v57, v4, v61
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v58, v4, v60 :: v_dual_mul_f32 v45, v45, v50
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v32, v32, v50 :: v_dual_mul_f32 v21, v21, v53
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v50, 16, v55
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v60, v4, v62 :: v_dual_lshlrev_b32 v37, 16, v37
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v62, v4, v66 :: v_dual_lshlrev_b32 v43, 16, v43
	v_dual_mul_f32 v66, v4, v70 :: v_dual_mul_f32 v49, v49, v52
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_lshlrev_b32_e32 v54, 16, v54
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v23, v23, v41 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v41, v60, v41 :: v_dual_lshlrev_b32 v38, 16, v38
	v_dual_mul_f32 v46, v46, v52 :: v_dual_mul_f32 v25, v25, v39
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v52, v45, 16, 1
	v_mov_b16_e32 v20.l, v32.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v48, v48, v50 :: v_dual_mul_f32 v39, v62, v39
	v_dual_mul_f32 v50, v51, v50 :: v_dual_mul_f32 v61, v4, v67
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s17, v45, v45
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v51, v58, v53 :: v_dual_lshlrev_b32 v44, 16, v44
	v_mul_f32_e32 v47, v47, v54
	v_dual_mul_f32 v54, v56, v54 :: v_dual_mul_f32 v27, v27, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v22, v22, v42 :: v_dual_mul_f32 v29, v29, v44
	v_dual_mul_f32 v42, v57, v42 :: v_dual_and_b32 v55, 1, v20
	v_mul_f32_e32 v37, v64, v37
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v45, v45, v52, 0x7fff
	v_bfe_u32 v52, v46, 16, 1
	v_mov_b16_e32 v75.l, v49.h
	v_mov_b16_e32 v20.l, v50.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v26, v26, v38
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s18, v32, v32
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v24, v24, v40 :: v_dual_mul_f32 v53, v65, v43
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v28, v28, v36 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v36, v63, v36
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s19, v46, v46
	v_bfe_u32 v57, v48, 16, 1
	v_mov_b16_e32 v77.l, v51.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v40, v59, v40
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v62, v25, 16, 1
	v_add3_u32 v46, v46, v52, 0x7fff
	v_and_b32_e32 v52, 1, v75
	v_add3_u32 v32, v32, v55, 0x7fff
	v_and_b32_e32 v55, 1, v20
	v_bfe_u32 v63, v26, 16, 1
	v_mov_b16_e32 v20.l, v42.h
	v_cmp_o_f32_e64 s20, v49, v49
	v_cmp_o_f32_e64 s22, v48, v48
	v_bfe_u32 v59, v22, 16, 1
	v_bfe_u32 v60, v23, 16, 1
	v_cmp_o_f32_e64 s34, v25, v25
	v_cmp_o_f32_e64 s35, v26, v26
	v_mov_b16_e32 v79.l, v39.h
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v38, v61, v38
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v64, v27, 16, 1
	v_bfe_u32 v65, v28, 16, 1
	v_mov_b16_e32 v80.l, v37.h
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s17
	v_add3_u32 v48, v48, v57, 0x7fff
	v_and_b32_e32 v57, 1, v77
	v_add3_u32 v25, v25, v62, 0x7fff
	v_add3_u32 v26, v26, v63, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s19
	v_add3_u32 v46, v49, v52, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v30, v30, v43 :: v_dual_and_b32 v49, 1, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v20.l, v40.h
	v_cmp_o_f32_e64 s26, v22, v22
	v_cmp_o_f32_e64 s29, v23, v23
	v_cmp_o_f32_e64 s38, v27, v27
	v_cmp_o_f32_e64 s39, v28, v28
	v_add3_u32 v22, v22, v59, 0x7fff
	v_add3_u32 v23, v23, v60, 0x7fff
	v_and_b32_e32 v59, 1, v79
	v_add3_u32 v27, v27, v64, 0x7fff
	v_add3_u32 v28, v28, v65, 0x7fff
	v_and_b32_e32 v60, 1, v80
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s34
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s35
	v_and_b32_e32 v26, 1, v20
	v_mov_b16_e32 v20.l, v38.h
	v_bfe_u32 v58, v21, 16, 1
	v_cmp_o_f32_e64 s41, v37, v37
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s38
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s39
	v_add3_u32 v28, v37, v60, 0x7fff
	v_and_b32_e32 v37, 1, v20
	v_cmp_o_f32_e64 s25, v21, v21
	v_add3_u32 v21, v21, v58, 0x7fff
	v_mov_b16_e32 v20.l, v36.h
	v_cmp_o_f32_e64 s31, v40, v40
	v_cmp_o_f32_e64 s36, v38, v38
	v_cmp_o_f32_e64 s37, v39, v39
	v_add3_u32 v39, v39, v59, 0x7fff
	v_add3_u32 v26, v40, v26, 0x7fff
	v_add3_u32 v37, v38, v37, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s25
	v_cndmask_b16 v21.h, 0x7fff, v46.h, s20
	v_and_b32_e32 v46, 1, v20
	v_bfe_u32 v67, v29, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v39.h, s37
	v_cndmask_b16 v39.h, 0x7fff, v26.h, s31
	v_cndmask_b16 v26.h, 0x7fff, v37.h, s36
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v37, v66, v44
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v20.l, v53.h
	v_cmp_o_f32_e64 s40, v36, v36
	v_add3_u32 v36, v36, v46, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v28.h, s41
	v_add3_u32 v28, v29, v67, 0x7fff
	v_bfe_u32 v38, v30, 16, 1
	v_mov_b16_e32 v40.l, v37.h
	v_mov_b16_e32 v40.h, v20.h
	v_cmp_o_f32_e64 s17, v29, v29
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_and_b32_e32 v29, 1, v20
	v_cndmask_b16 v21.l, 0x7fff, v32.h, s18
	v_add3_u32 v38, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s18, v30, v30
	v_and_b32_e32 v30, 1, v40
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s17
	v_cmp_o_f32_e64 s17, v53, v53
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v2, v2, v34
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v29, v53, v29, 0x7fff
	v_bfe_u32 v56, v47, 16, 1
	v_mov_b16_e32 v76.l, v54.h
	v_cndmask_b16 v28.h, 0x7fff, v38.h, s18
	v_add3_u32 v30, v37, v30, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s17
	v_cmp_o_f32_e64 s17, v37, v37
	v_mov_b16_e32 v37.h, v20.h
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v38, v4, v72
	v_mul_f32_e32 v4, v4, v73
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cmp_o_f32_e64 s21, v47, v47
	v_add3_u32 v47, v47, v56, 0x7fff
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v31, v31, v35 :: v_dual_and_b32 v56, 1, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v4, v4, v34
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v61, v24, 16, 1
	v_mov_b16_e32 v78.l, v41.h
	v_cmp_o_f32_e64 s30, v24, v24
	v_bfe_u32 v34, v31, 16, 1
	v_mov_b16_e32 v20.l, v4.h
	v_add3_u32 v24, v24, v61, 0x7fff
	v_and_b32_e32 v58, 1, v78
	v_cndmask_b16 v29.l, 0x7fff, v30.h, s17
	v_bfe_u32 v30, v2, 16, 1
	v_add3_u32 v34, v31, v34, 0x7fff
	v_cmp_o_f32_e64 s17, v31, v31
	v_and_b32_e32 v31, 1, v20
	v_cmp_o_f32_e64 s23, v50, v50
	v_cmp_o_f32_e64 s27, v42, v42
	v_cmp_o_f32_e64 s28, v51, v51
	v_cmp_o_f32_e64 s33, v41, v41
	v_cndmask_b16 v32.l, 0x7fff, v47.h, s21
	v_cndmask_b16 v32.h, 0x7fff, v48.h, s22
	v_add3_u32 v48, v50, v55, 0x7fff
	v_add3_u32 v50, v51, v57, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s29
	v_cndmask_b16 v23.h, 0x7fff, v24.h, s30
	v_add3_u32 v24, v41, v58, 0x7fff
	v_add3_u32 v42, v42, v49, 0x7fff
	v_add3_u32 v30, v2, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v2, v2
	v_add3_u32 v31, v4, v31, 0x7fff
	v_cmp_o_f32_e64 s19, v4, v4
	v_cndmask_b16 v4.l, 0x7fff, v34.h, s17
	v_cmp_eq_u32_e64 s17, 0, v0
	v_cndmask_b16 v24.l, 0x7fff, v50.h, s28
	v_cndmask_b16 v39.l, 0x7fff, v24.h, s33
	v_cndmask_b16 v24.h, 0x7fff, v42.h, s27
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v35, v38, v35
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b16 v4.h, 0x7fff, v30.h, s18
	v_cndmask_b32_e64 v30, v23, v32, s17
	v_cndmask_b32_e64 v23, v32, v23, s17
	v_mov_b32_e32 v32, 0x5410
	v_mov_b16_e32 v37.l, v35.h
	v_cndmask_b16 v0.h, 0x7fff, v31.h, s19
	v_cndmask_b32_e64 v31, v28, v25, s17
	v_cndmask_b32_e64 v25, v25, v28, s17
	v_cndmask_b32_e64 v28, v4, v27, s17
	v_mov_b32_e32 v34, 0x7632
	v_cndmask_b32_e64 v4, v27, v4, s17
	v_cndmask_b32_e64 v27, v24, v21, s17
	v_cndmask_b32_e64 v21, v21, v24, s17
	v_cndmask_b32_e64 v24, 0x1054, v32, s17
	v_and_b32_e32 v37, 1, v37
	v_cndmask_b32_e64 v32, 0x3276, v34, s17
	v_cmp_o_f32_e64 s24, v54, v54
	v_add3_u32 v47, v54, v56, 0x7fff
	v_lshl_or_b32 v24, v24, 8, v24
	v_cndmask_b16 v22.h, 0x7fff, v22.h, s26
	v_add3_u32 v2, v35, v37, 0x7fff
	v_cmp_o_f32_e64 s20, v35, v35
	v_lshl_or_b32 v32, v32, 8, v32
	v_and_b32_e32 v24, 0x540054, v24
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s23
	v_cndmask_b16 v41.l, 0x7fff, v47.h, s24
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s40
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s20
	v_cndmask_b32_e64 v2, v22, v45, s17
	v_cndmask_b32_e64 v22, v45, v22, s17
	v_and_b32_e32 v32, 0x760076, v32
	v_lshl_or_b32 v24, v24, 4, v24
	s_mov_b32 s18, 0x76543210
	v_cndmask_b32_e64 v35, v41, v39, s17
	v_cndmask_b32_e64 v37, v29, v26, s17
	v_cndmask_b32_e64 v26, v26, v29, s17
	v_cndmask_b32_e64 v29, v0, v36, s17
	v_cndmask_b32_e64 v0, v36, v0, s17
	v_permlanex16_b32 v22, v22, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v32, v32, 4, v32
	v_and_b32_e32 v24, 0x5040504, v24
	v_add_lshl_u32 v50, v3, v33, 1
	v_cndmask_b32_e64 v34, v39, v41, s17
	v_permlanex16_b32 v23, v23, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v4, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v21, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v32, 0x7060706, v32
	v_permlanex16_b32 v35, v35, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v26, v26, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v22, v2, v24
	v_add_lshl_u32 v51, v3, v19, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v3, v18, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v2, v22, v2, v32
	v_perm_b32 v22, v23, v30, v24
	v_perm_b32 v23, v23, v30, v32
	v_perm_b32 v30, v25, v31, v24
	v_perm_b32 v25, v25, v31, v32
	v_perm_b32 v31, v4, v28, v24
	v_perm_b32 v4, v4, v28, v32
	v_perm_b32 v28, v21, v27, v24
	v_perm_b32 v21, v21, v27, v32
	v_perm_b32 v27, v35, v34, v24
	v_perm_b32 v34, v35, v34, v32
	v_perm_b32 v35, v26, v37, v24
	v_perm_b32 v24, v0, v29, v24
	v_perm_b32 v0, v0, v29, v32
	v_mov_b16_e32 v29.l, v36.h
	v_mov_b16_e32 v29.h, v20.h
	v_cndmask_b32_e64 v51, 0x80000000, v51, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v36, v50, s[44:47], 0 offen
	v_cndmask_b32_e64 v50, 0x80000000, v52, s17
	v_add_lshl_u32 v36, v3, v17, 1
	buffer_store_b16 v29, v51, s[44:47], 0 offen
	v_add_lshl_u32 v29, v3, v16, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v20.l, v2.h
	buffer_store_b16 v2, v50, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v15, 1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v26, v26, v37, v32
	v_cndmask_b32_e64 v29, 0x80000000, v29, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v37.l, v22.h
	v_mov_b16_e32 v37.h, v20.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_mov_b16_e32 v32.h, v20.h
	v_mov_b16_e32 v38.h, v20.h
	v_mov_b16_e32 v39.h, v20.h
	v_mov_b16_e32 v41.h, v20.h
	v_mov_b16_e32 v42.h, v20.h
	v_mov_b16_e32 v43.h, v20.h
	v_mov_b16_e32 v44.h, v20.h
	v_mov_b16_e32 v45.h, v20.h
	v_mov_b16_e32 v46.h, v20.h
	v_mov_b16_e32 v47.h, v20.h
	v_mov_b16_e32 v48.h, v20.h
	v_mov_b16_e32 v49.h, v20.h
	buffer_store_b16 v20, v36, s[44:47], 0 offen
	v_add_lshl_u32 v20, v3, v14, 1
	buffer_store_b16 v22, v29, s[44:47], 0 offen
	v_add_lshl_u32 v22, v3, v13, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v37, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v12, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v32.l, v23.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v23, v20, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v20, v3, v11, 1
	buffer_store_b16 v32, v22, s[44:47], 0 offen
	v_add_lshl_u32 v22, v3, v10, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v30, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v9, 1
	v_mov_b16_e32 v39.l, v30.h
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v25.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v39, v20, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	v_add_lshl_u32 v20, v3, v8, 1
	buffer_store_b16 v25, v22, s[44:47], 0 offen
	v_add_lshl_u32 v22, v3, v7, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v38, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v3, v6, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v41.l, v31.h
	v_cndmask_b32_e64 v22, 0x80000000, v22, s17
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s17, s0, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v3, v5, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s17
	buffer_store_b16 v31, v20, s[44:47], 0 offen
	v_add_lshl_u32 v20, v1, v33, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s0, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v41, v22, s[44:47], 0 offen
	buffer_store_b16 v4, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v19, 1
	v_mov_b16_e32 v40.l, v4.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v43.l, v28.h
	v_cndmask_b32_e64 v4, 0x80000000, v20, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v40, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v18, 1
	buffer_store_b16 v28, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v17, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v43, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v16, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v42.l, v21.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v21, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v15, 1
	buffer_store_b16 v42, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v14, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v27, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v13, 1
	v_mov_b16_e32 v45.l, v27.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v44.l, v34.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v45, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v12, 1
	buffer_store_b16 v34, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v11, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v44, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v10, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v47.l, v35.h
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v35, v3, s[44:47], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_add_lshl_u32 v3, v1, v9, 1
	buffer_store_b16 v47, v4, s[44:47], 0 offen
	v_add_lshl_u32 v4, v1, v8, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	buffer_store_b16 v26, v2, s[44:47], 0 offen
	v_add_lshl_u32 v2, v1, v7, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v6, v1, v6, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_add_lshl_u32 v1, v1, v5, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v46.l, v26.h
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, vcc_lo, s2
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v24.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v5, 0x80000000, v6, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b16 v46, v3, s[44:47], 0 offen
	buffer_store_b16 v24, v4, s[44:47], 0 offen
	buffer_store_b16 v49, v2, s[44:47], 0 offen
	buffer_store_b16 v0, v5, s[44:47], 0 offen
	buffer_store_b16 v48, v1, s[44:47], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 138
		.amdhsa_next_free_sgpr 55
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 138
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 55
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13952
; TotalNumSgprs: 57
; NumVgprs: 138
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 57
; NumVGPRsForWavesPerEU: 138
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     57
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_maskk_bfloat16_scalar_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     138
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
