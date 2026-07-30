	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[34:35], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	s_load_b256 s[36:43], s[0:1], 0x10
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 0x7f
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
	s_ashr_i32 s5, s5, 7
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v41, 0
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s6, s4
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v43, 0
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v45, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v48, 0 :: v_dual_and_b32 v71, 15, v0
	v_dual_mov_b32 v49, 0 :: v_dual_and_b32 v72, 31, v0
	v_mov_b32_e32 v2, 0
	v_readfirstlane_b32 s7, v1
	v_mov_b32_e32 v1, 0
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s7, s8
	s_add_i32 s7, s7, s8
	s_xor_b32 s8, s2, s4
	s_mul_hi_u32 s7, s9, s7
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s10, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s8, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s6, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v4, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_readfirstlane_b32 s9, v4
	v_mov_b32_e32 v4, 0
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s9
	s_mul_hi_u32 s4, s9, s8
	s_abs_i32 s8, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s8, s9
	s_xor_b32 s9, s2, s5
	s_mul_i32 s10, s4, s7
	s_ashr_i32 s9, s9, 31
	s_sub_i32 s8, s8, s10
	s_add_i32 s10, s4, 1
	s_sub_i32 s11, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s10, s4
	s_cselect_b32 s8, s11, s8
	s_add_i32 s10, s4, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s4, s10, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s7, s6, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s8, s4, s9
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s9, s8, s5
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[6:7], 2
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s31, s2, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s33, s8, 5
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s2, s31, 7
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s40, s4
	s_addc_u32 s5, s41, s5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v33, s2, v0
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s4, s[4:5], 0x0
	.loc	1 1016 22                       ; ragged.py:1016:22
	s_lshl_b32 s3, s3, 5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v33
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s4, 1
	.loc	1 1008 26 is_stmt 0             ; ragged.py:1008:26
	s_lshr_b32 s5, s4, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s7, s4, 1
	s_mov_b64 s[4:5], s[38:39]
	.loc	1 1018 23 is_stmt 1             ; ragged.py:1018:23
	s_cmp_ge_i32 s3, s7
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 23 is_stmt 0                ; ragged.py:0:23
	v_mad_u64_u32 v[34:35], null, s35, 3, v[33:34]
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x38
	s_load_b128 s[12:15], s[0:1], 0x0
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, s33, v72
	.loc	1 1003 36 is_stmt 0             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v2, 0x60, v0
	v_or_b32_e32 v4, 0x3f0, v0
	v_or_b32_e32 v5, 0x780, v0
	v_mad_u64_u32 v[35:36], null, s35, 5, v[33:34]
	v_mad_u64_u32 v[36:37], null, s35, 6, v[33:34]
	v_mad_u64_u32 v[37:38], null, s35, 7, v[33:34]
	v_mad_u64_u32 v[38:39], null, s35, 9, v[33:34]
	v_mad_u64_u32 v[39:40], null, s35, 10, v[33:34]
	v_mad_u64_u32 v[40:41], null, s35, 11, v[33:34]
	v_mad_u64_u32 v[41:42], null, s35, 12, v[33:34]
	v_mad_u64_u32 v[42:43], null, s35, 13, v[33:34]
	v_mad_u64_u32 v[43:44], null, s35, 14, v[33:34]
	v_mad_u64_u32 v[44:45], null, s35, 15, v[33:34]
	v_mad_u64_u32 v[45:46], null, s35, 17, v[33:34]
	.loc	1 1005 20 is_stmt 1             ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	v_mul_lo_u32 v1, s34, v3
	v_mad_u64_u32 v[46:47], null, s35, 18, v[33:34]
	v_mad_u64_u32 v[47:48], null, s35, 19, v[33:34]
	v_mad_u64_u32 v[48:49], null, s35, 20, v[33:34]
	v_mad_u64_u32 v[49:50], null, s35, 21, v[33:34]
	v_mad_u64_u32 v[50:51], null, s35, 22, v[33:34]
	v_mad_u64_u32 v[51:52], null, s35, 23, v[33:34]
	v_mad_u64_u32 v[55:56], null, s35, 26, v[33:34]
	v_mad_u64_u32 v[52:53], null, s35, 24, v[33:34]
	v_mad_u64_u32 v[56:57], null, s35, 27, v[33:34]
	v_mad_u64_u32 v[53:54], null, s35, 25, v[33:34]
	v_mad_u64_u32 v[57:58], null, s35, 28, v[33:34]
	v_or_b32_e32 v3, 0x380, v0
	v_or_b32_e32 v6, 0xb80, v0
	v_or_b32_e32 v7, 0xf80, v0
	.loc	1 1018 23                       ; ragged.py:1018:23
	v_add3_u32 v54, v72, v1, s33
	v_mov_b32_e32 v1, 0
	.loc	1 1018 17 is_stmt 0             ; ragged.py:1018:17
	v_add_nc_u32_e32 v73, 0, v71
	v_lshrrev_b32_e32 v2, 1, v2
	v_mad_u64_u32 v[58:59], null, s35, 29, v[33:34]
	v_mad_u64_u32 v[59:60], null, s35, 30, v[33:34]
	v_mad_u64_u32 v[60:61], null, s35, 31, v[33:34]
	v_add_nc_u32_e32 v74, s35, v33
	v_lshl_add_u32 v75, s35, 1, v33
	v_lshl_add_u32 v76, s35, 2, v33
	v_lshl_add_u32 v77, s35, 3, v33
	v_lshl_add_u32 v78, s35, 4, v33
	v_add_nc_u32_e32 v79, v73, v2
	v_add_nc_u32_e32 v80, 0, v0
	v_add_nc_u32_e32 v81, 0, v3
	v_add_nc_u32_e32 v82, 0, v4
	v_add_nc_u32_e32 v83, 0, v5
	v_dual_mov_b32 v9, v1 :: v_dual_add_nc_u32 v84, 0, v6
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v85, 0, v7
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
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
	s_lshl_b32 s1, s34, 2
	s_lshl_b32 s16, s34, 3
	s_mul_i32 s17, s34, 12
	s_lshl_b32 s18, s34, 4
	s_mul_i32 s19, s34, 20
	s_mul_i32 s20, s34, 24
	s_mul_i32 s21, s34, 28
	.loc	1 1021 39 is_stmt 1             ; ragged.py:1021:39
	s_mul_i32 s22, s6, s8
	s_mov_b32 s8, s12
	s_mov_b32 s9, s13
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1028 42                       ; ragged.py:1028:42
	s_add_i32 s24, s3, s22
	.loc	1 1040 21                       ; ragged.py:1040:21
	s_add_i32 s3, s3, 32
	v_mad_u64_u32 v[61:62], null, s24, s34, v[54:55]
	.loc	1 1029 42                       ; ragged.py:1029:42
	s_mul_i32 s23, s24, s35
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cmp_lt_i32 s3, s7
	.loc	1 1029 42                       ; ragged.py:1029:42
	v_add_nc_u32_e32 v62, s23, v33
	v_add_nc_u32_e32 v63, s23, v74
	v_add_nc_u32_e32 v64, s23, v75
	v_add_nc_u32_e32 v65, s23, v34
	v_add_nc_u32_e32 v66, s23, v76
	v_add_nc_u32_e32 v67, s23, v35
	v_add_nc_u32_e32 v68, s23, v36
	v_add_nc_u32_e32 v69, s23, v37
	v_add_nc_u32_e32 v70, s23, v77
	v_add_nc_u32_e32 v86, s23, v38
	v_add_nc_u32_e32 v87, s23, v39
	v_add_nc_u32_e32 v88, s23, v40
	v_add_nc_u32_e32 v89, s23, v41
	v_add_nc_u32_e32 v90, s23, v42
	v_add_nc_u32_e32 v91, s23, v43
	v_add_nc_u32_e32 v92, s23, v44
	v_add_nc_u32_e32 v93, s23, v78
	v_add_nc_u32_e32 v94, s23, v45
	v_add_nc_u32_e32 v95, s23, v46
	v_add_nc_u32_e32 v96, s23, v47
	v_add_nc_u32_e32 v97, s23, v48
	v_add_nc_u32_e32 v98, s23, v49
	v_add_nc_u32_e32 v99, s23, v50
	v_add_nc_u32_e32 v100, s1, v61
	v_add_nc_u32_e32 v107, s23, v51
	.loc	1 1029 34 is_stmt 0             ; ragged.py:1029:34
	v_dual_cndmask_b32 v62, 0x80000000, v62 :: v_dual_cndmask_b32 v63, 0x80000000, v63
	.loc	1 1029 42                       ; ragged.py:1029:42
	v_add_nc_u32_e32 v108, s23, v52
	v_add_nc_u32_e32 v109, s23, v53
	v_add_nc_u32_e32 v110, s23, v55
	v_add_nc_u32_e32 v111, s23, v56
	v_add_nc_u32_e32 v112, s23, v57
	v_add_nc_u32_e32 v113, s23, v58
	v_add_nc_u32_e32 v114, s23, v59
	v_add_nc_u32_e32 v115, s23, v60
	v_add_nc_u32_e32 v101, s16, v61
	v_add_nc_u32_e32 v102, s17, v61
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_cndmask_b32 v65, 0x80000000, v65
	v_add_nc_u32_e32 v103, s18, v61
	v_add_nc_u32_e32 v104, s19, v61
	v_add_nc_u32_e32 v105, s20, v61
	v_add_nc_u32_e32 v106, s21, v61
	.loc	1 1028 34 is_stmt 1             ; ragged.py:1028:34
	v_cndmask_b32_e64 v61, 0x80000000, v61, s0
	.loc	1 1029 34                       ; ragged.py:1029:34
	v_dual_cndmask_b32 v66, 0x80000000, v66 :: v_dual_cndmask_b32 v67, 0x80000000, v67
	v_dual_cndmask_b32 v68, 0x80000000, v68 :: v_dual_cndmask_b32 v69, 0x80000000, v69
	v_dual_cndmask_b32 v70, 0x80000000, v70 :: v_dual_cndmask_b32 v87, 0x80000000, v87
	v_dual_cndmask_b32 v86, 0x80000000, v86 :: v_dual_cndmask_b32 v89, 0x80000000, v89
	v_dual_cndmask_b32 v88, 0x80000000, v88 :: v_dual_cndmask_b32 v91, 0x80000000, v91
	v_dual_cndmask_b32 v90, 0x80000000, v90 :: v_dual_cndmask_b32 v93, 0x80000000, v93
	v_dual_cndmask_b32 v92, 0x80000000, v92 :: v_dual_cndmask_b32 v95, 0x80000000, v95
	v_dual_cndmask_b32 v94, 0x80000000, v94 :: v_dual_cndmask_b32 v97, 0x80000000, v97
	v_dual_cndmask_b32 v96, 0x80000000, v96 :: v_dual_cndmask_b32 v99, 0x80000000, v99
	v_dual_cndmask_b32 v98, 0x80000000, v98 :: v_dual_cndmask_b32 v107, 0x80000000, v107
	v_dual_cndmask_b32 v108, 0x80000000, v108 :: v_dual_cndmask_b32 v109, 0x80000000, v109
	v_dual_cndmask_b32 v110, 0x80000000, v110 :: v_dual_cndmask_b32 v111, 0x80000000, v111
	v_dual_cndmask_b32 v112, 0x80000000, v112 :: v_dual_cndmask_b32 v113, 0x80000000, v113
	v_dual_cndmask_b32 v114, 0x80000000, v114 :: v_dual_cndmask_b32 v115, 0x80000000, v115
	s_clause 0x1f
	buffer_load_u8 v126, v62, s[12:15], 0 offen
	buffer_load_u8 v63, v63, s[12:15], 0 offen
	buffer_load_u8 v64, v64, s[12:15], 0 offen
	buffer_load_u8 v65, v65, s[12:15], 0 offen
	buffer_load_u8 v66, v66, s[12:15], 0 offen
	buffer_load_u8 v67, v67, s[12:15], 0 offen
	buffer_load_u8 v68, v68, s[12:15], 0 offen
	buffer_load_u8 v69, v69, s[12:15], 0 offen
	buffer_load_u8 v70, v70, s[12:15], 0 offen
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
	buffer_load_u8 v140, v99, s[12:15], 0 offen
	buffer_load_u8 v141, v107, s[12:15], 0 offen
	buffer_load_u8 v142, v108, s[12:15], 0 offen
	buffer_load_u8 v143, v109, s[12:15], 0 offen
	buffer_load_u8 v144, v110, s[12:15], 0 offen
	buffer_load_u8 v145, v111, s[12:15], 0 offen
	buffer_load_u8 v146, v112, s[12:15], 0 offen
	buffer_load_u8 v147, v113, s[12:15], 0 offen
	buffer_load_u8 v148, v114, s[12:15], 0 offen
	buffer_load_u8 v149, v115, s[12:15], 0 offen
	.loc	1 1028 34                       ; ragged.py:1028:34
	v_cndmask_b32_e64 v62, 0x80000000, v100, s0
	v_cndmask_b32_e64 v86, 0x80000000, v101, s0
	v_cndmask_b32_e64 v87, 0x80000000, v102, s0
	v_cndmask_b32_e64 v88, 0x80000000, v103, s0
	v_cndmask_b32_e64 v89, 0x80000000, v104, s0
	v_cndmask_b32_e64 v90, 0x80000000, v105, s0
	v_cndmask_b32_e64 v91, 0x80000000, v106, s0
	s_clause 0x7
	buffer_load_u8 v61, v61, s[8:11], 0 offen
	buffer_load_u8 v62, v62, s[8:11], 0 offen
	buffer_load_u8 v86, v86, s[8:11], 0 offen
	buffer_load_u8 v87, v87, s[8:11], 0 offen
	buffer_load_u8 v88, v88, s[8:11], 0 offen
	buffer_load_u8 v89, v89, s[8:11], 0 offen
	buffer_load_u8 v90, v90, s[8:11], 0 offen
	buffer_load_u8 v91, v91, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v80, v61
	s_waitcnt vmcnt(6)
	ds_store_b8 v80, v62 offset:128
	s_waitcnt vmcnt(5)
	ds_store_b8 v80, v86 offset:256
	s_waitcnt vmcnt(4)
	ds_store_b8 v80, v87 offset:384
	s_waitcnt vmcnt(3)
	ds_store_b8 v80, v88 offset:512
	s_waitcnt vmcnt(2)
	ds_store_b8 v80, v89 offset:640
	s_waitcnt vmcnt(1)
	ds_store_b8 v80, v90 offset:768
	s_waitcnt vmcnt(0)
	ds_store_b8 v81, v91
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v61, v73 offset:160
	ds_load_u8 v62, v73 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v73 offset:224
	ds_load_u8 v86, v73 offset:192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v86, v62, 0xc0c0004
	ds_load_u8 v86, v73 offset:96
	ds_load_u8 v87, v73 offset:64
	v_lshl_or_b32 v62, v62, 16, v61
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v86, v87, v86, 0xc0c0004
	ds_load_u8 v87, v73 offset:32
	ds_load_u8 v88, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v87, v88, v87, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v86, 16, v87
	ds_load_u8 v150, v73 offset:240
	ds_load_u8 v151, v73 offset:208
	ds_load_u8 v152, v73 offset:176
	ds_load_u8 v153, v73 offset:144
	ds_load_u8 v154, v73 offset:112
	ds_load_u8 v155, v73 offset:80
	ds_load_u8 v156, v73 offset:48
	ds_load_u8 v157, v73 offset:16
	ds_load_u8 v158, v73 offset:352
	ds_load_u8 v159, v73 offset:320
	ds_load_u8 v160, v73 offset:288
	ds_load_u8 v161, v73 offset:256
	ds_load_u8 v110, v73 offset:368
	ds_load_u8 v111, v73 offset:336
	ds_load_u8 v112, v73 offset:304
	ds_load_u8 v113, v73 offset:272
	ds_load_u8 v162, v73 offset:480
	ds_load_u8 v163, v73 offset:448
	ds_load_u8 v164, v73 offset:416
	ds_load_u8 v165, v73 offset:384
	ds_load_u8 v118, v73 offset:496
	ds_load_u8 v119, v73 offset:464
	ds_load_u8 v120, v73 offset:432
	ds_load_u8 v121, v73 offset:400
	ds_load_u8 v114, v73 offset:608
	ds_load_u8 v115, v73 offset:576
	ds_load_u8 v116, v73 offset:544
	ds_load_u8 v117, v73 offset:512
	ds_load_u8 v94, v73 offset:624
	ds_load_u8 v95, v73 offset:592
	ds_load_u8 v96, v73 offset:560
	ds_load_u8 v97, v73 offset:528
	ds_load_u8 v122, v73 offset:736
	ds_load_u8 v123, v73 offset:704
	ds_load_u8 v124, v73 offset:672
	ds_load_u8 v125, v73 offset:640
	ds_load_u8 v102, v73 offset:752
	ds_load_u8 v103, v73 offset:720
	ds_load_u8 v106, v73 offset:688
	ds_load_u8 v107, v73 offset:656
	ds_load_u8 v98, v73 offset:992
	ds_load_u8 v99, v73 offset:960
	ds_load_u8 v100, v73 offset:928
	ds_load_u8 v101, v73 offset:896
	ds_load_u8 v86, v82
	ds_load_u8 v87, v73 offset:976
	ds_load_u8 v88, v73 offset:944
	ds_load_u8 v89, v73 offset:912
	ds_load_u8 v104, v73 offset:864
	ds_load_u8 v105, v73 offset:832
	ds_load_u8 v108, v73 offset:800
	ds_load_u8 v109, v73 offset:768
	ds_load_u8 v90, v73 offset:880
	ds_load_u8 v91, v73 offset:848
	ds_load_u8 v92, v73 offset:816
	ds_load_u8 v93, v73 offset:784
	.loc	1 1029 34                       ; ragged.py:1029:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v80, v126
	ds_store_b8 v80, v63 offset:128
	ds_store_b8 v80, v64 offset:256
	ds_store_b8 v80, v65 offset:384
	ds_store_b8 v80, v66 offset:512
	ds_store_b8 v80, v67 offset:640
	ds_store_b8 v80, v68 offset:768
	ds_store_b8 v80, v70 offset:1024
	ds_store_b8 v80, v127 offset:1152
	ds_store_b8 v80, v128 offset:1280
	ds_store_b8 v80, v129 offset:1408
	ds_store_b8 v80, v130 offset:1536
	ds_store_b8 v80, v131 offset:1664
	ds_store_b8 v80, v132 offset:1792
	ds_store_b8 v80, v134 offset:2048
	ds_store_b8 v80, v135 offset:2176
	ds_store_b8 v80, v136 offset:2304
	ds_store_b8 v80, v137 offset:2432
	ds_store_b8 v80, v138 offset:2560
	ds_store_b8 v80, v139 offset:2688
	ds_store_b8 v80, v140 offset:2816
	ds_store_b8 v80, v142 offset:3072
	ds_store_b8 v80, v143 offset:3200
	ds_store_b8 v80, v144 offset:3328
	ds_store_b8 v80, v145 offset:3456
	ds_store_b8 v80, v146 offset:3584
	ds_store_b8 v80, v147 offset:3712
	ds_store_b8 v81, v69
	ds_store_b8 v83, v133
	ds_store_b8 v84, v141
	ds_store_b8 v80, v148 offset:3840
	ds_store_b8 v85, v149
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1030 31                       ; ragged.py:1030:31
	ds_load_u8 v63, v79 offset:640
	ds_load_u8 v64, v79 offset:512
	v_perm_b32 v70, v157, v156, 0xc0c0004
	v_perm_b32 v126, v161, v160, 0xc0c0004
	v_perm_b32 v127, v159, v158, 0xc0c0004
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_perm_b32 v110, v111, v110, 0xc0c0004
	v_perm_b32 v113, v123, v122, 0xc0c0004
	v_perm_b32 v116, v117, v116, 0xc0c0004
	v_perm_b32 v114, v115, v114, 0xc0c0004
	v_perm_b32 v96, v97, v96, 0xc0c0004
	v_lshl_or_b32 v110, v110, 16, v112
	v_perm_b32 v112, v125, v124, 0xc0c0004
	v_perm_b32 v94, v95, v94, 0xc0c0004
	v_perm_b32 v97, v99, v98, 0xc0c0004
	v_perm_b32 v98, v109, v108, 0xc0c0004
	v_perm_b32 v99, v105, v104, 0xc0c0004
	v_lshl_or_b32 v113, v113, 16, v112
	v_lshl_or_b32 v112, v114, 16, v116
	ds_load_u8 v114, v79 offset:2688
	ds_load_u8 v115, v79 offset:2560
	v_lshl_or_b32 v94, v94, 16, v96
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	ds_load_u8 v64, v79 offset:896
	ds_load_u8 v65, v79 offset:768
	v_perm_b32 v96, v101, v100, 0xc0c0004
	v_perm_b32 v120, v121, v120, 0xc0c0004
	v_perm_b32 v118, v119, v118, 0xc0c0004
	v_perm_b32 v106, v107, v106, 0xc0c0004
	v_perm_b32 v102, v103, v102, 0xc0c0004
	v_lshl_or_b32 v97, v97, 16, v96
	v_lshl_or_b32 v96, v99, 16, v98
	ds_load_u8 v98, v79 offset:3712
	ds_load_u8 v99, v79 offset:3584
	v_lshl_or_b32 v111, v118, 16, v120
	v_lshl_or_b32 v95, v102, 16, v106
	v_perm_b32 v88, v89, v88, 0xc0c0004
	v_perm_b32 v86, v87, v86, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v79 offset:2944
	ds_load_u8 v116, v79 offset:2816
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v79 offset:128
	ds_load_u8 v66, v79
	v_lshl_or_b32 v64, v64, 16, v63
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v98, v99, v98, 0xc0c0004
	ds_load_u8 v99, v79 offset:3968
	ds_load_u8 v100, v79 offset:3840
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v79 offset:2176
	ds_load_u8 v117, v79 offset:2048
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v79 offset:384
	ds_load_u8 v67, v79 offset:256
	v_lshl_or_b32 v115, v115, 16, v114
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v99, v100, v99, 0xc0c0004
	ds_load_u8 v100, v79 offset:3200
	ds_load_u8 v101, v79 offset:3072
	v_lshl_or_b32 v99, v99, 16, v98
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v79 offset:2432
	ds_load_u8 v118, v79 offset:2304
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v66, 16, v65
	ds_load_u8 v65, v79 offset:704
	ds_load_u8 v66, v79 offset:576
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v79 offset:3456
	ds_load_u8 v102, v79 offset:3328
	v_wmma_i32_16x16x16_iu4 v[1:8], v[63:64], v[61:62], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v114, v117, 16, v116
	ds_load_u8 v116, v79 offset:2752
	ds_load_u8 v117, v79 offset:2624
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	ds_load_u8 v66, v79 offset:960
	ds_load_u8 v67, v79 offset:832
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v98, v101, 16, v100
	ds_load_u8 v100, v79 offset:3776
	ds_load_u8 v101, v79 offset:3648
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v79 offset:3008
	ds_load_u8 v118, v79 offset:2880
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v79 offset:192
	ds_load_u8 v68, v79 offset:64
	v_lshl_or_b32 v66, v66, 16, v65
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v100, v101, v100, 0xc0c0004
	ds_load_u8 v101, v79 offset:4032
	ds_load_u8 v102, v79 offset:3904
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v117, v118, v117, 0xc0c0004
	ds_load_u8 v118, v79 offset:2240
	ds_load_u8 v119, v79 offset:2112
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	ds_load_u8 v68, v79 offset:448
	ds_load_u8 v69, v79 offset:320
	v_lshl_or_b32 v117, v117, 16, v116
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v101, v102, v101, 0xc0c0004
	ds_load_u8 v102, v79 offset:3264
	ds_load_u8 v103, v79 offset:3136
	v_lshl_or_b32 v101, v101, 16, v100
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v118, v119, v118, 0xc0c0004
	ds_load_u8 v119, v79 offset:2496
	ds_load_u8 v120, v79 offset:2368
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	v_perm_b32 v69, v155, v154, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v65, v68, 16, v67
	v_perm_b32 v67, v153, v152, 0xc0c0004
	v_perm_b32 v68, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v102, v103, v102, 0xc0c0004
	ds_load_u8 v103, v79 offset:3520
	ds_load_u8 v104, v79 offset:3392
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v61, v93, v92, 0xc0c0004
	v_lshl_or_b32 v68, v68, 16, v67
	v_lshl_or_b32 v67, v69, 16, v70
	v_perm_b32 v69, v165, v164, 0xc0c0004
	v_perm_b32 v70, v163, v162, 0xc0c0004
	v_perm_b32 v62, v91, v90, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v119, v120, v119, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[63:64], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v70, v70, 16, v69
	v_lshl_or_b32 v69, v127, 16, v126
	ds_load_u8 v126, v79 offset:1664
	ds_load_u8 v127, v79 offset:1536
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v116, v119, 16, v118
	v_lshl_or_b32 v61, v62, 16, v61
	v_lshl_or_b32 v62, v86, 16, v88
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v103, v104, v103, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v100, v103, 16, v102
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v126, v127, v126, 0xc0c0004
	ds_load_u8 v127, v79 offset:1920
	ds_load_u8 v128, v79 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	ds_load_u8 v128, v79 offset:1152
	ds_load_u8 v129, v79 offset:1024
	v_lshl_or_b32 v127, v127, 16, v126
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v79 offset:1408
	ds_load_u8 v130, v79 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v126, v129, 16, v128
	ds_load_u8 v128, v79 offset:1728
	ds_load_u8 v129, v79 offset:1600
	v_wmma_i32_16x16x16_iu4 v[1:8], v[126:127], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[126:127], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[114:115], v[112:113], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[114:115], v[94:95], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[98:99], v[96:97], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[98:99], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v128, v129, v128, 0xc0c0004
	ds_load_u8 v129, v79 offset:1984
	ds_load_u8 v130, v79 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	ds_load_u8 v130, v79 offset:1216
	ds_load_u8 v131, v79 offset:1088
	v_lshl_or_b32 v129, v129, 16, v128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	ds_load_u8 v131, v79 offset:1472
	ds_load_u8 v132, v79 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v128, v131, 16, v130
	v_wmma_i32_16x16x16_iu4 v[9:16], v[128:129], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[128:129], v[110:111], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[116:117], v[112:113], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[116:117], v[94:95], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[100:101], v[96:97], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[100:101], v[61:62], v[25:32] neg_lo:[1,1,0]
	.loc	1 1018 23                       ; ragged.py:1018:23
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
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
.LBB0_4:                                ; %._crit_edge
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s33, v71
	.loc	1 1098 33                       ; ragged.py:1098:33
	s_mul_i32 s40, s6, s34
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_and_b32 s37, s37, 0xffff
	.loc	1 1098 21                       ; ragged.py:1098:21
	s_add_i32 s0, s33, s40
	s_mov_b32 s39, 0x31027000
	v_add_lshl_u32 v18, s0, v71, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v19, 16, v17
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1105 33                       ; ragged.py:1105:33
	s_mul_i32 s1, s6, s35
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_and_b32 s5, s5, 0xffff
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	.loc	1 1105 21                       ; ragged.py:1105:21
	s_add_i32 s2, s2, s1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v19
	.loc	1 1104 36                       ; ragged.py:1104:36
	v_add_lshl_u32 v20, s2, v0, 1
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_add_nc_u32_e32 v18, 32, v18
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	.loc	1 1104 36                       ; ragged.py:1104:36
	s_mov_b32 s6, s38
	s_mov_b32 s7, s39
	v_cndmask_b32_e32 v19, 0x80000000, v20, vcc_lo
	.loc	1 1097 36                       ; ragged.py:1097:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s0
	.loc	1 1104 36                       ; ragged.py:1104:36
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 1097 36                       ; ragged.py:1097:36
	buffer_load_u16 v18, v18, s[36:39], 0 offen
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_bfe_i32 v20, v0, 6, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_bfe_i32 v27, v0, 4, 1
	.loc	1 1109 17                       ; ragged.py:1109:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1097 36                       ; ragged.py:1097:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v24, 2, v0
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_and_b32_e32 v21, 0x70, v0
	v_lshlrev_b32_e32 v22, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v46, v46, v17 :: v_dual_lshlrev_b32 v23, 5, v0
	v_dual_mul_f32 v44, v44, v17 :: v_dual_lshlrev_b32 v25, 2, v72
	v_dual_mul_f32 v45, v45, v17 :: v_dual_and_b32 v26, 32, v0
	v_dual_mul_f32 v43, v43, v17 :: v_dual_and_b32 v28, 0x1040, v20
	v_dual_mul_f32 v39, v39, v17 :: v_dual_and_b32 v20, 0x104, v20
	v_dual_mul_f32 v47, v47, v17 :: v_dual_and_b32 v24, 0xbc, v24
	v_mul_f32_e32 v41, v41, v17
	v_dual_mul_f32 v42, v42, v17 :: v_dual_and_b32 v23, 32, v23
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor3_b32 v25, v25, v26, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v20, v20, v24
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v49, v49, v17 :: v_dual_and_b32 v22, 28, v22
	v_mul_f32_e32 v37, v37, v17
	v_mul_f32_e32 v48, v48, v17
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_lshl_add_u32 v26, v21, 2, 0
	v_lshl_add_u32 v29, v21, 1, 0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v21, v71, 8, v25
	v_and_or_b32 v20, 0x1040, v27, v20
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v38, v38, v17 :: v_dual_lshlrev_b32 v19, 16, v19
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_add3_u32 v22, v26, v23, v22
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v33, 0, v21
	v_xad_u32 v50, v21, 4, 0
	v_xad_u32 v51, v21, 8, 0
	v_xad_u32 v52, v21, 12, 0
	v_xad_u32 v53, v21, 16, 0
	v_xad_u32 v54, v21, 20, 0
	v_xad_u32 v55, v21, 24, 0
	v_xad_u32 v56, v21, 28, 0
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v40, v40, v17 :: v_dual_add_nc_u32 v57, 0, v20
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v58, v20, 64, 0
	v_xad_u32 v59, 0x208, v20, 0
	v_xad_u32 v60, 0x248, v20, 0
	v_xad_u32 v61, 0x410, v20, 0
	v_xad_u32 v62, 0x450, v20, 0
	v_xad_u32 v63, 0x618, v20, 0
	v_xad_u32 v64, 0x658, v20, 0
	v_xad_u32 v65, 0x820, v20, 0
	v_xad_u32 v66, 0x860, v20, 0
	v_xad_u32 v67, 0xa28, v20, 0
	v_xad_u32 v68, 0xa68, v20, 0
	v_xad_u32 v69, 0xc30, v20, 0
	v_xad_u32 v70, 0xc70, v20, 0
	v_xad_u32 v71, 0xe38, v20, 0
	v_xad_u32 v72, 0xe78, v20, 0
	.loc	1 1102 17                       ; ragged.py:1102:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v36, v36, v17 :: v_dual_lshlrev_b32 v73, 16, v18
	v_mul_f32_e32 v35, v35, v17
	v_mul_f32_e32 v34, v34, v17
	.loc	1 1109 17                       ; ragged.py:1109:17
	ds_store_b32 v22, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v29
	ds_load_b128 v[21:24], v29 offset:16
	ds_load_b128 v[25:28], v29 offset:256
	ds_load_b128 v[29:32], v29 offset:272
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_mul_f32_e32 v11, v11, v73
	v_mul_f32_e32 v16, v16, v73
	v_mul_f32_e32 v15, v15, v73
	v_mul_f32_e32 v14, v14, v73
	v_mul_f32_e32 v13, v13, v73
	v_mul_f32_e32 v9, v9, v73
	.loc	1 1228 34                       ; ragged.py:1228:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v47, v47, v19
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v7, v7, v73 :: v_dual_mul_f32 v40, v40, v26
	v_dual_mul_f32 v8, v8, v73 :: v_dual_mul_f32 v13, v13, v20
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v38, v38, v28
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v6, v6, v73 :: v_dual_mul_f32 v11, v11, v22
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v39, v39, v27
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v5, v5, v73 :: v_dual_mul_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v1, v1, v73 :: v_dual_mul_f32 v6, v6, v27
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v44, v44, v22
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v12, v12, v73 :: v_dual_mul_f32 v35, v35, v31
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v42, v42, v24
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v10, v10, v73 :: v_dual_mul_f32 v15, v15, v18
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v36, v36, v30
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v4, v4, v73 :: v_dual_mul_f32 v9, v9, v24
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_mul_f32_e32 v34, v34, v32
	.loc	1 1102 17                       ; ragged.py:1102:17
	v_dual_mul_f32 v2, v2, v73 :: v_dual_mul_f32 v7, v7, v26
	v_dual_mul_f32 v3, v3, v73 :: v_dual_mul_f32 v10, v10, v23
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1109 17                       ; ragged.py:1109:17
	v_dual_mul_f32 v49, v49, v17 :: v_dual_mul_f32 v2, v2, v31
	v_mul_f32_e32 v43, v43, v23
	v_mul_f32_e32 v41, v41, v25
	v_dual_mul_f32 v16, v16, v17 :: v_dual_mul_f32 v5, v5, v28
	v_dual_mul_f32 v8, v8, v25 :: v_dual_mul_f32 v1, v1, v32
	v_mul_f32_e32 v48, v48, v18
	v_dual_mul_f32 v46, v46, v20 :: v_dual_mul_f32 v45, v45, v21
	v_mul_f32_e32 v37, v37, v29
	v_dual_mul_f32 v12, v12, v21 :: v_dual_mul_f32 v3, v3, v30
	v_mul_f32_e32 v4, v4, v29
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v17, v49, 16, 1
	v_bfe_u32 v25, v41, 16, 1
	v_bfe_u32 v73, v16, 16, 1
	v_bfe_u32 v81, v8, 16, 1
	v_bfe_u32 v18, v48, 16, 1
	v_bfe_u32 v26, v40, 16, 1
	v_bfe_u32 v74, v15, 16, 1
	v_bfe_u32 v82, v7, 16, 1
	v_bfe_u32 v19, v47, 16, 1
	v_bfe_u32 v27, v39, 16, 1
	v_bfe_u32 v75, v14, 16, 1
	v_bfe_u32 v83, v6, 16, 1
	v_bfe_u32 v20, v46, 16, 1
	v_bfe_u32 v28, v38, 16, 1
	v_bfe_u32 v76, v13, 16, 1
	v_bfe_u32 v84, v5, 16, 1
	v_bfe_u32 v21, v45, 16, 1
	v_bfe_u32 v22, v44, 16, 1
	v_bfe_u32 v23, v43, 16, 1
	v_bfe_u32 v24, v42, 16, 1
	v_bfe_u32 v29, v37, 16, 1
	v_bfe_u32 v31, v35, 16, 1
	v_bfe_u32 v32, v34, 16, 1
	v_bfe_u32 v77, v12, 16, 1
	v_bfe_u32 v78, v11, 16, 1
	v_bfe_u32 v79, v10, 16, 1
	v_bfe_u32 v80, v9, 16, 1
	v_bfe_u32 v85, v4, 16, 1
	v_bfe_u32 v87, v2, 16, 1
	v_bfe_u32 v88, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s7, v41, v41
	v_bfe_u32 v30, v36, 16, 1
	v_cmp_o_f32_e64 s15, v16, v16
	v_cmp_o_f32_e64 s23, v8, v8
	v_bfe_u32 v86, v3, 16, 1
	v_add3_u32 v17, v49, v17, 0x7fff
	v_add3_u32 v25, v41, v25, 0x7fff
	v_add3_u32 v16, v16, v73, 0x7fff
	v_add3_u32 v8, v8, v81, 0x7fff
	v_cmp_o_f32_e64 s0, v48, v48
	v_cmp_o_f32_e64 s8, v40, v40
	v_cmp_o_f32_e64 s16, v15, v15
	v_cmp_o_f32_e64 s24, v7, v7
	v_add3_u32 v18, v48, v18, 0x7fff
	v_add3_u32 v26, v40, v26, 0x7fff
	v_add3_u32 v15, v15, v74, 0x7fff
	v_add3_u32 v7, v7, v82, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cmp_o_f32_e64 s9, v39, v39
	v_cmp_o_f32_e64 s17, v14, v14
	v_cmp_o_f32_e64 s25, v6, v6
	v_add3_u32 v19, v47, v19, 0x7fff
	v_add3_u32 v27, v39, v27, 0x7fff
	v_add3_u32 v14, v14, v75, 0x7fff
	v_add3_u32 v6, v6, v83, 0x7fff
	v_cmp_o_f32_e64 s2, v46, v46
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s18, v13, v13
	v_cmp_o_f32_e64 s26, v5, v5
	v_add3_u32 v20, v46, v20, 0x7fff
	v_add3_u32 v28, v38, v28, 0x7fff
	v_add3_u32 v13, v13, v76, 0x7fff
	v_add3_u32 v5, v5, v84, 0x7fff
	v_cmp_o_f32_e64 s3, v45, v45
	v_cmp_o_f32_e64 s4, v44, v44
	v_cmp_o_f32_e64 s5, v43, v43
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s11, v37, v37
	v_cmp_o_f32_e64 s13, v35, v35
	v_cmp_o_f32_e64 s14, v34, v34
	v_cmp_o_f32_e64 s19, v12, v12
	v_cmp_o_f32_e64 s20, v11, v11
	v_cmp_o_f32_e64 s21, v10, v10
	v_cmp_o_f32_e64 s22, v9, v9
	v_cmp_o_f32_e64 s27, v4, v4
	v_cmp_o_f32_e64 s29, v2, v2
	v_cmp_o_f32_e64 s30, v1, v1
	v_add3_u32 v21, v45, v21, 0x7fff
	v_add3_u32 v22, v44, v22, 0x7fff
	v_add3_u32 v23, v43, v23, 0x7fff
	v_add3_u32 v24, v42, v24, 0x7fff
	v_add3_u32 v29, v37, v29, 0x7fff
	v_add3_u32 v31, v35, v31, 0x7fff
	v_add3_u32 v32, v34, v32, 0x7fff
	v_add3_u32 v12, v12, v77, 0x7fff
	v_add3_u32 v11, v11, v78, 0x7fff
	v_add3_u32 v10, v10, v79, 0x7fff
	v_add3_u32 v9, v9, v80, 0x7fff
	v_add3_u32 v4, v4, v85, 0x7fff
	v_add3_u32 v2, v2, v87, 0x7fff
	v_add3_u32 v1, v1, v88, 0x7fff
	v_cmp_o_f32_e64 s12, v36, v36
	v_cmp_o_f32_e64 s28, v3, v3
	v_add3_u32 v30, v36, v30, 0x7fff
	v_add3_u32 v3, v3, v86, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v8.l, 0x7fff, v25.h, s7
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s15
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s23
	v_cndmask_b16 v15.l, 0x7fff, v18.h, s0
	v_cndmask_b16 v7.l, 0x7fff, v26.h, s8
	v_cndmask_b16 v15.h, 0x7fff, v15.h, s16
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s24
	v_cndmask_b16 v14.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v6.l, 0x7fff, v27.h, s9
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s17
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s25
	v_cndmask_b16 v13.l, 0x7fff, v20.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v28.h, s10
	v_cndmask_b16 v13.h, 0x7fff, v13.h, s18
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s26
	v_cndmask_b16 v12.l, 0x7fff, v21.h, s3
	v_cndmask_b16 v11.l, 0x7fff, v22.h, s4
	v_cndmask_b16 v10.l, 0x7fff, v23.h, s5
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v29.h, s11
	v_cndmask_b16 v2.l, 0x7fff, v31.h, s13
	v_cndmask_b16 v1.l, 0x7fff, v32.h, s14
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s19
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s20
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s21
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s22
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s27
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s29
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s30
	v_cndmask_b16 v3.l, 0x7fff, v30.h, s12
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s28
	.loc	1 1228 34                       ; ragged.py:1228:34
	ds_store_2addr_b32 v33, v16, v8 offset1:32
	ds_store_2addr_b32 v50, v15, v7 offset1:32
	ds_store_2addr_b32 v51, v14, v6 offset1:32
	ds_store_2addr_b32 v52, v13, v5 offset1:32
	ds_store_2addr_b32 v53, v12, v4 offset1:32
	ds_store_2addr_b32 v54, v11, v3 offset1:32
	ds_store_2addr_b32 v55, v10, v2 offset1:32
	ds_store_2addr_b32 v56, v9, v1 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v16, v57
	ds_load_b32 v17, v58
	ds_load_b32 v14, v59
	ds_load_b32 v15, v60
	ds_load_b32 v12, v61
	ds_load_b32 v13, v62
	ds_load_b32 v10, v63
	ds_load_b32 v11, v64
	ds_load_b32 v8, v65
	ds_load_b32 v9, v66
	ds_load_b32 v6, v67
	ds_load_b32 v7, v68
	ds_load_b32 v4, v69
	ds_load_b32 v5, v70
	ds_load_b32 v1, v71
	ds_load_b32 v2, v72
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 6, v0
	.loc	1 1230 56                       ; ragged.py:1230:56
	v_and_b32_e32 v0, 63, v0
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_add_i32 s0, s35, s0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s33, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v0, s31, 6, v0
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_ashr_i32 s1, s0, 1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1236 33 is_stmt 0             ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17 is_stmt 1             ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_6
; %bb.5:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v3
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_6:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 2, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_8
; %bb.7:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v20, v14, v15, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_8:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 4, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v20, v12, v13, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 6, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v20, v10, v11, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 8, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v8, v9, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 10, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v7, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 12, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v4, v5, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 14, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v2, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 16, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s40, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v16, v17, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v16, s0, s42, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s43, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[16:17], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(15)
	v_or_b32_e32 v16, 18, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v16
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v16, s40, v16
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v18, v14, v15, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[16:17], null, v16, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v14, s0, s42, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s43, v17, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[14:15], v18, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(13)
	v_or_b32_e32 v14, 20, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v14
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v14, s40, v14
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v16, v12, v13, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[14:15], null, v14, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v12, s0, s42, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s43, v15, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[12:13], v16, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(11)
	v_or_b32_e32 v12, 22, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v12
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v12, s40, v12
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v14, v10, v11, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[12:13], null, v12, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v10, s0, s42, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s43, v13, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[10:11], v14, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(9)
	v_or_b32_e32 v10, 24, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v10
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v10, s40, v10
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v12, v8, v9, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[10:11], null, v10, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v8, s0, s42, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s43, v11, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[8:9], v12, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v8, 26, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v8
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v8, s40, v8
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v10, v6, v7, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[8:9], null, v8, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v6, s0, s42, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s43, v9, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[6:7], v10, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v6, 28, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v6
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v6, s40, v6
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v8, v4, v5, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[6:7], null, v6, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v4, s0, s42, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, s43, v7, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[4:5], v8, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v3, 30, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v3, s40, v3
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v1, v2, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[3:4], null, v3, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v4, 31, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_add_co_u32 v0, vcc_lo, s42, v3
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s43, v4, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_36:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 166
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 166
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9052
; TotalNumSgprs: 46
; NumVgprs: 166
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 166
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_pc_evenk_bfloat16_paired_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     166
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
