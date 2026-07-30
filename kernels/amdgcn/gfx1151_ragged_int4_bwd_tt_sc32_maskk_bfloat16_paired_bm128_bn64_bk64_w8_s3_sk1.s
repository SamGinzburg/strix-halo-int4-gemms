	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v62, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_ashr_i32 s6, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s7, s5, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:995:21 ]
	s_lshr_b32 s6, s6, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ ragged.py:996:21 ]
	s_ashr_i32 s6, s5, 6
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v64, 0
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v85, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v33, 15, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v43, 0xc0, v0
	v_dual_mov_b32 v99, 0 :: v_dual_and_b32 v42, 16, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 998 20                        ; ragged.py:998:20
	v_readfirstlane_b32 s7, v1
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_and_b32_e32 v44, 32, v0
	.loc	1 998 20                        ; ragged.py:998:20
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
	s_sub_i32 s24, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s24, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s31, s24, s34
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s8, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s8, s8, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s7
	s_sub_i32 s5, s5, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s7
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s7
	s_cselect_b32 s4, s9, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s25, s24, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[24:25], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s56, s7, 7
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s33, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	s_mov_b32 s44, 0
	s_load_b32 s23, s[4:5], 0x0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s21, s23, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lt_i32 s21, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph30
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 2, v43
	v_dual_mov_b32 v90, 0 :: v_dual_and_b32 v1, 0x7f, v0
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v89, 7, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[26:27], s[0:1], 0x38
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v63, v2, v33
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v3, 4, v42
	v_lshrrev_b32_e32 v4, 1, v44
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	s_lshl_b32 s25, s33, 6
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_or_b32_e32 v6, 64, v63
	v_mad_u64_u32 v[34:35], null, s34, v89, v[1:2]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or3_b32 v67, v3, v4, s25
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s28, s21, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s56, v6
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s28, s21, s28
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v5, s56, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v7, s25, v2
	v_mad_u64_u32 v[35:36], null, s34, 6, v[34:35]
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v8, 48, v2
	.loc	1 1005 20 is_stmt 1             ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s34, v4
	v_bfe_i32 v4, v0, 3, 1
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s45, s28, 1
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s28, s23, 31
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s56, v63
	v_mad_u64_u32 v[36:37], null, s34, 10, v[34:35]
	v_mad_u64_u32 v[37:38], null, s34, 12, v[34:35]
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[38:39], null, s26, v2, v[33:34]
	v_dual_mov_b32 v99, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s28, s23, s28
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s57, s3, 4
	.loc	1 1162 43                       ; ragged.py:1162:43
	s_mul_i32 s3, s24, s35
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s34, v5
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s58, s28, 1
	s_and_b32 s49, s37, 0xffff
	s_add_i32 s61, s25, s3
	s_and_b32 s37, s39, 0xffff
	v_dual_mov_b32 v97, 0 :: v_dual_and_b32 v2, 0x70, v2
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v5, 3, v44
	s_bitcmp1_b32 s23, 0
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_bfe_i32 v3, v0, 7, 1
	s_cselect_b32 s62, -1, 0
	s_add_i32 s3, s56, s31
	v_or3_b32 v107, v4, v5, v2
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v2, s3, v63
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v4, s3, v6
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v9, 16, v7
	v_or_b32_e32 v10, 32, v7
	v_or_b32_e32 v11, s25, v8
	v_or_b32_e32 v69, 2, v67
	v_or_b32_e32 v70, 4, v67
	v_or_b32_e32 v71, 6, v67
	v_or_b32_e32 v72, 8, v67
	v_or_b32_e32 v73, 10, v67
	v_or_b32_e32 v74, 12, v67
	v_or_b32_e32 v75, 14, v67
	v_or_b32_e32 v76, 32, v67
	v_or_b32_e32 v77, 34, v67
	v_or_b32_e32 v78, 36, v67
	v_or_b32_e32 v79, 38, v67
	v_or_b32_e32 v80, 40, v67
	v_or_b32_e32 v81, 42, v67
	v_or_b32_e32 v82, 44, v67
	v_or_b32_e32 v83, 46, v67
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_mad_u64_u32 v[39:40], null, s34, 14, v[34:35]
	v_mad_u64_u32 v[40:41], null, s26, v8, v[33:34]
	v_mul_lo_u32 v111, v2, s27
	v_mul_lo_u32 v112, v4, s27
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s35, v7
	v_cmp_gt_i32_e64 s22, s35, v9
	v_cmp_gt_i32_e64 s4, s35, v10
	v_cmp_gt_i32_e64 s5, s35, v11
	v_cmp_gt_i32_e64 s6, s35, v67
	v_cmp_gt_i32_e64 s7, s35, v69
	v_cmp_gt_i32_e64 s8, s35, v70
	v_cmp_gt_i32_e64 s9, s35, v71
	v_cmp_gt_i32_e64 s10, s35, v72
	v_cmp_gt_i32_e64 s11, s35, v73
	v_cmp_gt_i32_e64 s12, s35, v74
	v_cmp_gt_i32_e64 s13, s35, v75
	v_cmp_gt_i32_e64 s14, s35, v76
	v_cmp_gt_i32_e64 s15, s35, v77
	v_cmp_gt_i32_e64 s16, s35, v78
	v_cmp_gt_i32_e64 s17, s35, v79
	v_cmp_gt_i32_e64 s18, s35, v80
	v_cmp_gt_i32_e64 s19, s35, v81
	v_cmp_gt_i32_e64 s20, s35, v82
	v_cmp_gt_i32_e64 s21, s35, v83
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v92, 2, v89
	v_or_b32_e32 v93, 4, v89
	v_or_b32_e32 v94, 6, v89
	v_or_b32_e32 v95, 8, v89
	v_or_b32_e32 v96, 10, v89
	v_or_b32_e32 v98, 12, v89
	v_or_b32_e32 v100, 14, v89
	v_lshl_add_u32 v101, s34, 1, v34
	v_lshl_add_u32 v102, s34, 2, v34
	v_lshl_add_u32 v103, s34, 3, v34
	v_lshl_add_u32 v104, s26, 4, v38
	v_lshl_add_u32 v105, s26, 5, v38
	v_or_b32_e32 v106, 0x300, v0
	v_or_b32_e32 v108, 0x700, v0
	v_xor_b32_e32 v109, v3, v1
	v_xor_b32_e32 v110, 8, v107
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v56, 0
	s_add_i32 s63, s45, -1
	.loc	1 1158 43                       ; ragged.py:1158:43
	s_mul_i32 s59, s24, s26
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s60, s24, s27
	s_mov_b32 s48, s36
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_mul_i32 s61, s61, s26
	s_mov_b32 s36, s38
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s64, s63, 4
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v113, v111, s44, 1
	v_add_lshl_u32 v114, v112, s44, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s44, s60
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s42, s50
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v113, 0x80000000, v113, s0
	v_cndmask_b32_e64 v114, 0x80000000, v114, s1
	s_mov_b32 s43, s51
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v115, v67, s3, 1
	v_add_lshl_u32 v123, v76, s3, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v113, v113, s[40:43], 0 offen
	buffer_load_u16 v114, v114, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v116, v69, s3, 1
	v_add_lshl_u32 v124, v77, s3, 1
	v_add_lshl_u32 v117, v70, s3, 1
	v_add_lshl_u32 v125, v78, s3, 1
	v_add_lshl_u32 v118, v71, s3, 1
	v_add_lshl_u32 v126, v79, s3, 1
	v_add_lshl_u32 v119, v72, s3, 1
	v_add_lshl_u32 v120, v73, s3, 1
	v_add_lshl_u32 v121, v74, s3, 1
	v_add_lshl_u32 v122, v75, s3, 1
	v_add_lshl_u32 v127, v80, s3, 1
	v_add_lshl_u32 v128, v81, s3, 1
	v_add_lshl_u32 v129, v82, s3, 1
	v_add_lshl_u32 v130, v83, s3, 1
	v_cndmask_b32_e64 v115, 0x80000000, v115, s6
	v_cndmask_b32_e64 v123, 0x80000000, v123, s14
	v_cndmask_b32_e64 v116, 0x80000000, v116, s7
	v_cndmask_b32_e64 v124, 0x80000000, v124, s15
	v_cndmask_b32_e64 v117, 0x80000000, v117, s8
	v_cndmask_b32_e64 v125, 0x80000000, v125, s16
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v118, 0x80000000, v118, s9
	v_cndmask_b32_e64 v126, 0x80000000, v126, s17
	v_cndmask_b32_e64 v119, 0x80000000, v119, s10
	v_cndmask_b32_e64 v120, 0x80000000, v120, s11
	v_cndmask_b32_e64 v121, 0x80000000, v121, s12
	v_cndmask_b32_e64 v122, 0x80000000, v122, s13
	v_cndmask_b32_e64 v127, 0x80000000, v127, s18
	v_cndmask_b32_e64 v128, 0x80000000, v128, s19
	v_cndmask_b32_e64 v129, 0x80000000, v129, s20
	v_cndmask_b32_e64 v130, 0x80000000, v130, s21
	s_clause 0xf
	buffer_load_u16 v115, v115, s[52:55], 0 offen
	buffer_load_u16 v116, v116, s[52:55], 0 offen
	buffer_load_u16 v117, v117, s[52:55], 0 offen
	buffer_load_u16 v118, v118, s[52:55], 0 offen
	buffer_load_u16 v119, v119, s[52:55], 0 offen
	buffer_load_u16 v120, v120, s[52:55], 0 offen
	buffer_load_u16 v121, v121, s[52:55], 0 offen
	buffer_load_u16 v122, v122, s[52:55], 0 offen
	buffer_load_u16 v123, v123, s[52:55], 0 offen
	buffer_load_u16 v124, v124, s[52:55], 0 offen
	buffer_load_u16 v125, v125, s[52:55], 0 offen
	buffer_load_u16 v126, v126, s[52:55], 0 offen
	buffer_load_u16 v127, v127, s[52:55], 0 offen
	buffer_load_u16 v128, v128, s[52:55], 0 offen
	buffer_load_u16 v129, v129, s[52:55], 0 offen
	buffer_load_u16 v130, v130, s[52:55], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s23, s44, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s3, s23, 4
	s_cmp_lg_u32 s44, s64
	s_mov_b32 s44, s23
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v113, 16, v113
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v27, v113, v27 :: v_dual_lshlrev_b32 v114, 16, v114
	v_mul_f32_e32 v2, v114, v2
	v_mul_f32_e32 v26, v113, v26
	v_mul_f32_e32 v28, v113, v28
	v_mul_f32_e32 v29, v113, v29
	v_mul_f32_e32 v30, v113, v30
	v_mul_f32_e32 v31, v113, v31
	v_mul_f32_e32 v32, v113, v32
	v_mul_f32_e32 v17, v113, v17
	v_mul_f32_e32 v18, v113, v18
	v_mul_f32_e32 v19, v113, v19
	v_mul_f32_e32 v20, v113, v20
	v_mul_f32_e32 v21, v113, v21
	v_mul_f32_e32 v22, v113, v22
	v_mul_f32_e32 v23, v113, v23
	v_mul_f32_e32 v24, v113, v24
	v_mul_f32_e32 v1, v1, v114
	v_mul_f32_e32 v25, v25, v113
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v115, 16, v115
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v116, 16, v116
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v117, 16, v117
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v118, 16, v118
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v119, 16, v119
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v120, 16, v120
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v121, 16, v121
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v122, 16, v122
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v123, 16, v123
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v124, 16, v124
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v125, 16, v125
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v126, 16, v126
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v127, 16, v127
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v128, 16, v128
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v129, 16, v129
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v114, v3 :: v_dual_lshlrev_b32 v130, 16, v130
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v86, v32, v122
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v4, v114, v4 :: v_dual_fmac_f32 v97, v27, v117
	v_dual_mul_f32 v5, v114, v5 :: v_dual_fmac_f32 v90, v29, v119
	v_dual_mul_f32 v6, v114, v6 :: v_dual_fmac_f32 v87, v31, v121
	v_dual_mul_f32 v7, v114, v7 :: v_dual_fmac_f32 v68, v19, v125
	v_dual_mul_f32 v8, v114, v8 :: v_dual_fmac_f32 v91, v28, v118
	v_dual_mul_f32 v9, v114, v9 :: v_dual_fmac_f32 v66, v20, v126
	v_dual_mul_f32 v10, v114, v10 :: v_dual_fmac_f32 v85, v17, v123
	v_dual_mul_f32 v11, v114, v11 :: v_dual_fmac_f32 v62, v23, v129
	v_dual_mul_f32 v12, v114, v12 :: v_dual_fmac_f32 v65, v21, v127
	v_dual_mul_f32 v13, v114, v13 :: v_dual_fmac_f32 v56, v25, v115
	v_dual_mul_f32 v14, v114, v14 :: v_dual_fmac_f32 v57, v1, v115
	v_dual_mul_f32 v15, v114, v15 :: v_dual_fmac_f32 v58, v4, v118
	v_dual_mul_f32 v16, v114, v16 :: v_dual_fmac_f32 v61, v24, v130
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v99, v26, v116 :: v_dual_fmac_f32 v52, v8, v122
	v_dual_fmac_f32 v88, v30, v120 :: v_dual_fmac_f32 v59, v3, v117
	v_dual_fmac_f32 v84, v18, v124 :: v_dual_fmac_f32 v55, v5, v119
	v_dual_fmac_f32 v64, v22, v128 :: v_dual_fmac_f32 v53, v7, v121
	v_dual_fmac_f32 v60, v2, v116 :: v_dual_fmac_f32 v51, v9, v123
	v_dual_fmac_f32 v54, v6, v120 :: v_dual_fmac_f32 v49, v11, v125
	v_dual_fmac_f32 v50, v10, v124 :: v_dual_fmac_f32 v47, v13, v127
	v_dual_fmac_f32 v48, v12, v126 :: v_dual_fmac_f32 v45, v15, v129
	v_dual_fmac_f32 v46, v14, v128 :: v_dual_fmac_f32 v41, v16, v130
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s23, s58, s3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v2, s23, 0, 16
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s23, v2
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	s_and_b32 s24, s23, 16
	s_mov_b32 s23, s57
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s57, s24
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_mov_b32 s23, s57
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v1, v25
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v10, v25
	v_mov_b32_e32 v11, v25
	v_mov_b32_e32 v12, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v14, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v16, v25
.LBB0_5:                                ; %.lr.ph
                                        ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1156 30 is_stmt 1             ; ragged.py:1156:30
	s_add_i32 s25, s23, s3
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s38, s50
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_add_i32 s26, s25, s59
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_add_i32 s25, s25, s61
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_mul_i32 s26, s26, s34
	v_add_nc_u32_e32 v113, s25, v38
	v_add_nc_u32_e32 v114, s25, v104
	s_add_i32 s26, s26, s56
	v_add_nc_u32_e32 v115, s25, v105
	v_add_nc_u32_e32 v117, s26, v34
	v_add_nc_u32_e32 v116, s25, v40
	v_add_nc_u32_e32 v118, s26, v101
	v_add_nc_u32_e32 v119, s26, v102
	v_add_nc_u32_e32 v120, s26, v35
	v_add_nc_u32_e32 v121, s26, v103
	v_add_nc_u32_e32 v122, s26, v36
	v_add_nc_u32_e32 v123, s26, v37
	v_add_nc_u32_e32 v124, s26, v39
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s22
	v_cndmask_b32_e64 v115, 0x80000000, v115, s4
	s_mov_b32 s39, s51
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_dual_cndmask_b32 v117, 0x80000000, v117 :: v_dual_cndmask_b32 v118, 0x80000000, v118
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_cndmask_b32_e64 v116, 0x80000000, v116, s5
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_dual_cndmask_b32 v119, 0x80000000, v119 :: v_dual_cndmask_b32 v120, 0x80000000, v120
	v_dual_cndmask_b32 v121, 0x80000000, v121 :: v_dual_cndmask_b32 v122, 0x80000000, v122
	v_dual_cndmask_b32 v123, 0x80000000, v123 :: v_dual_cndmask_b32 v124, 0x80000000, v124
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_clause 0x2
	buffer_load_u8 v113, v113, s[36:39], 0 offen
	buffer_load_u8 v114, v114, s[36:39], 0 offen
	buffer_load_u8 v115, v115, s[36:39], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0x7
	buffer_load_u8 v117, v117, s[48:51], 0 offen
	buffer_load_u8 v118, v118, s[48:51], 0 offen
	buffer_load_u8 v119, v119, s[48:51], 0 offen
	buffer_load_u8 v121, v121, s[48:51], 0 offen
	buffer_load_u8 v122, v122, s[48:51], 0 offen
	buffer_load_u8 v120, v120, s[48:51], 0 offen
	buffer_load_u8 v123, v123, s[48:51], 0 offen
	buffer_load_u8 v124, v124, s[48:51], 0 offen
	.loc	1 1166 38                       ; ragged.py:1166:38
	buffer_load_u8 v116, v116, s[36:39], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	v_add_nc_u32_e32 v125, 0, v0
	v_add_nc_u32_e32 v128, 0, v63
	v_add_nc_u32_e32 v126, 0, v106
	v_add_nc_u32_e32 v127, 0, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1166 38                       ; ragged.py:1166:38
	v_add_nc_u32_e32 v129, 0, v109
	v_add_nc_u32_e32 v130, 0, v107
	v_add_nc_u32_e32 v131, 0, v110
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s23, s23, 16
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt vmcnt(8)
	ds_store_b8 v125, v117
	s_waitcnt vmcnt(7)
	ds_store_b8 v125, v118 offset:256
	s_waitcnt vmcnt(6)
	ds_store_b8 v125, v119 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v125, v121 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v125, v122 offset:1280
	s_waitcnt vmcnt(3)
	ds_store_b8 v126, v120
	s_waitcnt vmcnt(2)
	ds_store_b8 v125, v123 offset:1536
	s_waitcnt vmcnt(1)
	ds_store_b8 v127, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v121, v128 offset:384
	ds_load_u8 v122, v128 offset:256
	ds_load_u8 v123, v128 offset:128
	ds_load_u8 v124, v128
	ds_load_u8 v125, v128 offset:448
	ds_load_u8 v126, v128 offset:320
	ds_load_u8 v127, v128 offset:192
	ds_load_u8 v132, v128 offset:64
	ds_load_u8 v133, v128 offset:896
	ds_load_u8 v134, v128 offset:768
	ds_load_u8 v135, v128 offset:640
	ds_load_u8 v136, v128 offset:512
	ds_load_u8 v137, v128 offset:960
	ds_load_u8 v138, v128 offset:832
	ds_load_u8 v139, v128 offset:704
	ds_load_u8 v140, v128 offset:576
	ds_load_u8 v141, v128 offset:1408
	ds_load_u8 v142, v128 offset:1280
	ds_load_u8 v143, v128 offset:1152
	ds_load_u8 v144, v128 offset:1024
	ds_load_u8 v145, v128 offset:1472
	ds_load_u8 v146, v128 offset:1344
	ds_load_u8 v147, v128 offset:1216
	ds_load_u8 v148, v128 offset:1088
	ds_load_u8 v149, v128 offset:1920
	ds_load_u8 v150, v128 offset:1664
	ds_load_u8 v151, v128 offset:1536
	ds_load_u8 v152, v128 offset:1792
	ds_load_u8 v153, v128 offset:1984
	ds_load_u8 v154, v128 offset:1856
	ds_load_u8 v155, v128 offset:1728
	ds_load_u8 v128, v128 offset:1600
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v129, v113
	ds_store_b8 v129, v114 offset:256
	ds_store_b8 v129, v115 offset:512
	s_waitcnt vmcnt(0)
	ds_store_b8 v129, v116 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[113:116], v130 offset1:1
	ds_load_2addr_stride64_b64 v[117:120], v131 offset1:1
	.loc	1 1167 35                       ; ragged.py:1167:35
	v_perm_b32 v129, v136, v135, 0xc0c0004
	v_perm_b32 v130, v134, v133, 0xc0c0004
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v135, v140, v139, 0xc0c0004
	v_perm_b32 v136, v138, v137, 0xc0c0004
	v_perm_b32 v127, v132, v127, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v124, v151, v150, 0xc0c0004
	v_perm_b32 v131, v152, v149, 0xc0c0004
	v_perm_b32 v133, v144, v143, 0xc0c0004
	v_perm_b32 v134, v142, v141, 0xc0c0004
	v_perm_b32 v132, v154, v153, 0xc0c0004
	v_perm_b32 v128, v128, v155, 0xc0c0004
	v_perm_b32 v137, v148, v147, 0xc0c0004
	v_perm_b32 v138, v146, v145, 0xc0c0004
	v_lshl_or_b32 v122, v130, 16, v129
	v_lshl_or_b32 v121, v121, 16, v123
	v_lshl_or_b32 v126, v136, 16, v135
	v_lshl_or_b32 v125, v125, 16, v127
	v_lshl_or_b32 v124, v131, 16, v124
	v_lshl_or_b32 v123, v134, 16, v133
	v_lshl_or_b32 v128, v132, 16, v128
	v_lshl_or_b32 v127, v138, 16, v137
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[121:122], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[125:126], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[125:126], v[9:16] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s23, s24
	.loc	1 1167 35                       ; ragged.py:1167:35
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[123:124], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[123:124], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[117:118], v[127:128], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[127:128], v[9:16] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s24, s45, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s30, s24, 16
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s23, s30
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1179 30 is_stmt 1             ; ragged.py:1179:30
	s_add_i32 s38, s23, s3
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v134, 0, v0
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v114, s38, v89
	v_or_b32_e32 v115, s38, v92
	v_or_b32_e32 v116, s38, v93
	v_or_b32_e32 v113, s38, v33
	v_or_b32_e32 v117, s38, v94
	v_or_b32_e32 v118, s38, v95
	v_or_b32_e32 v119, s38, v96
	v_or_b32_e32 v120, s38, v98
	v_or_b32_e32 v121, s38, v100
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v122, s3, v114
	.loc	1 1190 46                       ; ragged.py:1190:46
	s_add_i32 s29, s38, s59
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v123, s3, v115
	.loc	1 1190 46                       ; ragged.py:1190:46
	s_mul_i32 s39, s29, s34
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v124, s3, v116
	v_subrev_nc_u32_e32 v125, s3, v117
	v_subrev_nc_u32_e32 v126, s3, v118
	v_subrev_nc_u32_e32 v127, s3, v119
	v_subrev_nc_u32_e32 v128, s3, v120
	v_subrev_nc_u32_e32 v129, s3, v121
	v_subrev_nc_u32_e32 v130, s3, v113
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s3, s30, v122
	.loc	1 1190 46 is_stmt 1             ; ragged.py:1190:46
	s_add_i32 s39, s39, s56
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s23, s30, v123
	v_add_nc_u32_e32 v122, s39, v34
	v_cmp_gt_i32_e64 s24, s30, v124
	v_add_nc_u32_e32 v123, s39, v101
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s3
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s25, s30, v125
	v_add_nc_u32_e32 v124, s39, v102
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v122, 0x80000000, v122, s3
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s23
	.loc	1 1188 34 is_stmt 1             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s26, s30, v126
	v_add_nc_u32_e32 v125, s39, v35
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v123, 0x80000000, v123, s3
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s24
	.loc	1 1188 34 is_stmt 1             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s27, s30, v127
	v_add_nc_u32_e32 v126, s39, v103
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v124, 0x80000000, v124, s3
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s25
	.loc	1 1188 34 is_stmt 1             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s28, s30, v128
	v_add_nc_u32_e32 v127, s39, v36
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v125, 0x80000000, v125, s3
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s26
	.loc	1 1188 34 is_stmt 1             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s29, s30, v129
	v_add_nc_u32_e32 v128, s39, v37
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v126, 0x80000000, v126, s3
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s27
	.loc	1 1188 34 is_stmt 1             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s30, s30, v130
	v_add_nc_u32_e32 v129, s39, v39
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_add_i32 s38, s38, s61
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v127, 0x80000000, v127, s3
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s28
	v_add_nc_u32_e32 v130, s38, v38
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v128, 0x80000000, v128, s3
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s3, vcc_lo, s29
	v_add_nc_u32_e32 v131, s38, v104
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v129, 0x80000000, v129, s3
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s3, s2, s30
	v_add_nc_u32_e32 v132, s38, v105
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	v_cndmask_b32_e64 v130, 0x80000000, v130, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s22, s30
	v_add_nc_u32_e32 v133, s38, v40
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v131, 0x80000000, v131, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s4, s30
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s38, s50
	v_cndmask_b32_e64 v132, 0x80000000, v132, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s5, s30
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s39, s51
	v_cndmask_b32_e64 v133, 0x80000000, v133, s3
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	s_clause 0x7
	buffer_load_u8 v122, v122, s[48:51], 0 offen
	buffer_load_u8 v123, v123, s[48:51], 0 offen
	buffer_load_u8 v124, v124, s[48:51], 0 offen
	buffer_load_u8 v125, v125, s[48:51], 0 offen
	buffer_load_u8 v126, v126, s[48:51], 0 offen
	buffer_load_u8 v127, v127, s[48:51], 0 offen
	buffer_load_u8 v128, v128, s[48:51], 0 offen
	buffer_load_u8 v129, v129, s[48:51], 0 offen
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0x3
	buffer_load_u8 v130, v130, s[36:39], 0 offen
	buffer_load_u8 v131, v131, s[36:39], 0 offen
	buffer_load_u8 v132, v132, s[36:39], 0 offen
	buffer_load_u8 v133, v133, s[36:39], 0 offen
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s3, s63, v114
	v_cmp_eq_u32_e64 s23, s63, v115
	v_cmp_eq_u32_e64 s24, s63, v116
	v_cmp_eq_u32_e64 s30, s63, v113
	v_cmp_eq_u32_e64 s26, s63, v118
	v_cmp_eq_u32_e64 s27, s63, v119
	v_cmp_eq_u32_e64 s25, s63, v117
	v_cmp_eq_u32_e64 s28, s63, v120
	v_cmp_eq_u32_e64 s29, s63, v121
	.loc	1 1189 36 is_stmt 0             ; ragged.py:1189:36
	s_and_b32 s3, s3, s62
	s_and_b32 s23, s23, s62
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v137, 0, v63
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s24, s24, s62
	s_and_b32 s26, s26, s62
	s_and_b32 s27, s27, s62
	s_and_b32 s25, s25, s62
	s_and_b32 s28, s28, s62
	s_and_b32 s29, s29, s62
	s_and_b32 s30, s30, s62
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v135, 0, v106
	v_add_nc_u32_e32 v136, 0, v108
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_add_nc_u32_e32 v138, 0, v109
	v_add_nc_u32_e32 v139, 0, v107
	v_add_nc_u32_e32 v140, 0, v110
	.loc	1 1192 66                       ; ragged.py:1192:66
	s_waitcnt vmcnt(11)
	v_and_b16 v113.l, v122.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v113.h, v123.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v114.l, v124.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v114.h, v125.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v115.l, v126.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v115.h, v127.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v116.l, v128.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v116.h, v129.l, 15
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(3)
	v_and_b16 v117.l, v130.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v117.h, v131.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v118.l, v132.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v118.h, v133.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v113.l, v122.l, v113.l, s3
	v_cndmask_b16 v113.h, v123.l, v113.h, s23
	v_cndmask_b16 v114.l, v124.l, v114.l, s24
	v_cndmask_b16 v115.l, v126.l, v115.l, s26
	v_cndmask_b16 v115.h, v127.l, v115.h, s27
	v_cndmask_b16 v114.h, v125.l, v114.h, s25
	v_cndmask_b16 v116.l, v128.l, v116.l, s28
	v_cndmask_b16 v116.h, v129.l, v116.h, s29
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v117.l, v130.l, v117.l, s30
	v_cndmask_b16 v117.h, v131.l, v117.h, s30
	v_cndmask_b16 v118.l, v132.l, v118.l, s30
	v_cndmask_b16 v118.h, v133.l, v118.h, s30
	.loc	1 1192 38                       ; ragged.py:1192:38
	ds_store_b8 v134, v113
	ds_store_b8_d16_hi v134, v113 offset:256
	ds_store_b8 v134, v114 offset:512
	ds_store_b8 v134, v115 offset:1024
	ds_store_b8_d16_hi v134, v115 offset:1280
	ds_store_b8_d16_hi v135, v114
	ds_store_b8 v134, v116 offset:1536
	ds_store_b8_d16_hi v136, v116
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v121, v137 offset:384
	ds_load_u8 v122, v137 offset:256
	ds_load_u8 v123, v137 offset:128
	ds_load_u8 v124, v137
	ds_load_u8 v125, v137 offset:448
	ds_load_u8 v126, v137 offset:320
	ds_load_u8 v127, v137 offset:192
	ds_load_u8 v128, v137 offset:64
	ds_load_u8 v129, v137 offset:896
	ds_load_u8 v130, v137 offset:768
	ds_load_u8 v131, v137 offset:640
	ds_load_u8 v132, v137 offset:512
	ds_load_u8 v133, v137 offset:960
	ds_load_u8 v134, v137 offset:832
	ds_load_u8 v135, v137 offset:704
	ds_load_u8 v136, v137 offset:576
	ds_load_u8 v141, v137 offset:1408
	ds_load_u8 v142, v137 offset:1280
	ds_load_u8 v143, v137 offset:1152
	ds_load_u8 v144, v137 offset:1024
	ds_load_u8 v145, v137 offset:1472
	ds_load_u8 v146, v137 offset:1344
	ds_load_u8 v147, v137 offset:1216
	ds_load_u8 v148, v137 offset:1088
	ds_load_u8 v149, v137 offset:1920
	ds_load_u8 v150, v137 offset:1664
	ds_load_u8 v151, v137 offset:1536
	ds_load_u8 v152, v137 offset:1792
	ds_load_u8 v153, v137 offset:1984
	ds_load_u8 v154, v137 offset:1856
	ds_load_u8 v155, v137 offset:1728
	ds_load_u8 v137, v137 offset:1600
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v138, v117
	ds_store_b8_d16_hi v138, v117 offset:256
	ds_store_b8 v138, v118 offset:512
	ds_store_b8_d16_hi v138, v118 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[113:116], v139 offset1:1
	ds_load_2addr_stride64_b64 v[117:120], v140 offset1:1
	.loc	1 1194 35                       ; ragged.py:1194:35
	v_perm_b32 v131, v132, v131, 0xc0c0004
	v_perm_b32 v129, v130, v129, 0xc0c0004
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v121, v122, v121, 0xc0c0004
	v_perm_b32 v124, v136, v135, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v127, v128, v127, 0xc0c0004
	v_perm_b32 v125, v126, v125, 0xc0c0004
	v_perm_b32 v130, v151, v150, 0xc0c0004
	v_perm_b32 v132, v152, v149, 0xc0c0004
	v_perm_b32 v138, v144, v143, 0xc0c0004
	v_perm_b32 v139, v142, v141, 0xc0c0004
	v_perm_b32 v134, v154, v153, 0xc0c0004
	v_perm_b32 v128, v137, v155, 0xc0c0004
	v_perm_b32 v135, v148, v147, 0xc0c0004
	v_perm_b32 v136, v146, v145, 0xc0c0004
	v_lshl_or_b32 v122, v129, 16, v131
	v_lshl_or_b32 v121, v121, 16, v123
	v_lshl_or_b32 v124, v133, 16, v124
	v_lshl_or_b32 v123, v125, 16, v127
	v_lshl_or_b32 v126, v132, 16, v130
	v_lshl_or_b32 v125, v139, 16, v138
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[113:114], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[115:116], v[121:122], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[113:114], v[123:124], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v114, v134, 16, v128
	v_lshl_or_b32 v113, v136, 16, v135
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[123:124], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[125:126], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[117:118], v[113:114], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[113:114], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge31
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v1, v99, 16, 1
	v_bfe_u32 v6, v90, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v99, v99
	v_bfe_u32 v4, v97, 16, 1
	v_bfe_u32 v5, v91, 16, 1
	v_add3_u32 v1, v99, v1, 0x7fff
	v_add3_u32 v6, v90, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v90, v90
	v_bfe_u32 v10, v85, 16, 1
	v_mov_b16_e32 v3.h, 0
	v_cmp_o_f32_e64 s0, v97, v97
	v_add3_u32 v4, v97, v4, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_add3_u32 v5, v91, v5, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_bfe_u32 v8, v87, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_bfe_u32 v9, v86, 16, 1
	v_add3_u32 v10, v85, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v85, v85
	v_bfe_u32 v14, v65, 16, 1
	v_mov_b16_e32 v3.l, v57.h
	v_bfe_u32 v7, v88, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s0
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v8, v87, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	v_add3_u32 v9, v86, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v86, v86
	v_bfe_u32 v12, v68, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_bfe_u32 v13, v66, 16, 1
	v_add3_u32 v14, v65, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v65, v65
	v_mov_b16_e32 v18.h, v3.h
	v_and_b32_e32 v3, 1, v3
	v_add3_u32 v7, v88, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v88, v88
	v_bfe_u32 v11, v84, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_add3_u32 v12, v68, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v68, v68
	v_add3_u32 v13, v66, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v66, v66
	v_bfe_u32 v16, v62, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_bfe_u32 v17, v61, 16, 1
	v_mov_b16_e32 v18.l, v56.h
	v_add3_u32 v3, v57, v3, 0x7fff
	v_cmp_o_f32_e64 s1, v57, v57
	v_bfe_u32 v20, v59, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v11, v84, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v84, v84
	v_bfe_u32 v15, v64, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v16, v62, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v62, v62
	v_add3_u32 v17, v61, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v61, v61
	v_and_b32_e32 v18, 1, v18
	v_cndmask_b16 v19.h, 0x7fff, v3.h, s1
	v_add3_u32 v20, v59, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_add3_u32 v15, v64, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_cndmask_b16 v3.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_add3_u32 v17, v56, v18, 0x7fff
	v_bfe_u32 v18, v60, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_bfe_u32 v21, v58, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v53, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v18, v60, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v60, v60
	v_add3_u32 v21, v58, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v58, v58
	v_cndmask_b16 v19.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v55, 16, 1
	v_add3_u32 v20, v53, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v53, v53
	v_cndmask_b16 v1.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v5.h, 0x7fff, v21.h, s2
	v_bfe_u32 v18, v54, 16, 1
	v_add3_u32 v17, v55, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_bfe_u32 v21, v52, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v20.h, s1
	v_bfe_u32 v20, v49, 16, 1
	v_add3_u32 v18, v54, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_add3_u32 v21, v52, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_cndmask_b16 v6.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v51, 16, 1
	v_add3_u32 v20, v49, v20, 0x7fff
	v_cmp_o_f32_e64 s1, v49, v49
	v_cndmask_b16 v7.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v9.h, 0x7fff, v21.h, s2
	v_bfe_u32 v18, v50, 16, 1
	v_add3_u32 v17, v51, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_bfe_u32 v21, v48, 16, 1
	v_cndmask_b16 v12.h, 0x7fff, v20.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_and_b32_e32 v20, 31, v0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v18, v50, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_add3_u32 v21, v48, v21, 0x7fff
	v_cmp_o_f32_e64 s2, v48, v48
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v47, 16, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v22, 2, v20
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v11.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v13.h, 0x7fff, v21.h, s2
	v_bfe_u32 v18, v46, 16, 1
	v_add3_u32 v17, v47, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_bfe_u32 v21, v45, 16, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v22, v33, 9, v22
	v_lshl_or_b32 v24, v43, 1, v44
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v18, v46, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_add3_u32 v21, v45, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v45, v45
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v17, v22, v24
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v23, v41, 16, 1
	v_cndmask_b16 v15.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 0xe0, v0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v18, 0, v17
	v_xad_u32 v21, v17, 4, 0
	v_xad_u32 v26, 0x2040, v17, 0
	v_xad_u32 v29, 0x2044, v17, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v23, v41, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v41, v41
	.loc	1 1228 34                       ; ragged.py:1228:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v22, v17, 8, 0
	ds_store_b32 v18, v19
	ds_store_b32 v26, v10
	ds_store_b32 v21, v1
	ds_store_b32 v29, v11
	v_lshlrev_b32_e32 v1, 2, v33
	v_xad_u32 v10, 0x2048, v17, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s2
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v23, v17, 12, 0
	ds_store_b32 v22, v4
	ds_store_b32 v10, v12
	v_lshrrev_b32_e32 v4, 3, v2
	v_lshl_or_b32 v1, v2, 4, v1
	v_cmp_eq_u32_e32 vcc_lo, 0, v42
	v_xad_u32 v11, 0x204c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v11, v13
	v_cndmask_b32_e64 v5, 0x2040, 0, vcc_lo
	v_xor_b32_e32 v1, v1, v4
	v_xad_u32 v24, v17, 16, 0
	v_xad_u32 v2, 0x2050, v17, 0
	v_xad_u32 v25, v17, 20, 0
	v_xad_u32 v4, 0x2054, v17, 0
	v_xad_u32 v27, v17, 24, 0
	v_or_b32_e32 v1, v1, v5
	ds_store_b32 v24, v6
	ds_store_b32 v2, v14
	v_xad_u32 v2, 0x2058, v17, 0
	v_xad_u32 v28, v17, 28, 0
	ds_store_b32 v25, v7
	ds_store_b32 v4, v15
	v_xad_u32 v4, 0x205c, v17, 0
	ds_store_b32 v27, v8
	ds_store_b32 v2, v3
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	ds_store_b32 v28, v9
	ds_store_b32 v4, v16
	v_xad_u32 v4, 0x1020, v1, 0
	v_xad_u32 v17, 0x1060, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v2 offset1:32
	ds_load_2addr_b32 v[5:6], v2 offset0:64 offset1:96
	ds_load_2addr_b32 v[15:16], v3 offset1:32
	ds_load_2addr_b32 v[7:8], v3 offset0:64 offset1:96
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v4 offset0:64 offset1:96
	ds_load_2addr_b32 v[11:12], v17 offset1:32
	ds_load_2addr_b32 v[3:4], v17 offset0:64 offset1:96
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s56, v0
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v0, s33, 5, v20
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v17
	.loc	1 1236 54                       ; ragged.py:1236:54
	v_cmp_gt_i32_e32 vcc_lo, s1, v0
	.loc	1 1236 33 is_stmt 0             ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1237 17 is_stmt 1             ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_10
; %bb.9:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s31, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_10:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 8, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v9, v11, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 16, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_14:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 24, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v20, v10, v12, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 32, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_18:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 40, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v1, v3, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 48, v17
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
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_22:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v20, v2, v4, 0x1000504
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_24:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 64, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v18, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v13, off
.LBB0_26:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 0x48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v13, s31, v13
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v9, v11, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[18:19], null, v13, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v9, off
.LBB0_28:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v9, 0x50, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s31, v9
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v9, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v9, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v9, 0x58, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s31, v9
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v11, v10, v12, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[13:14], null, v9, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s46, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v14, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v11, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v9, 0x60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s31, v9
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[9:10], null, v9, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v5, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v5, 0x68, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v5, s31, v5
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v5, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v9, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(2)
	v_or_b32_e32 v1, 0x70, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s46, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s47, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v1, off
.LBB0_38:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, 0x78, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s31, v1
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v2, v4, 0x3020706
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_mad_u64_u32 v[0:1], null, v1, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s46, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s47, v1, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_40:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 156
		.amdhsa_next_free_sgpr 65
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_vgpr, 156
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.numbered_sgpr, 65
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9060
; TotalNumSgprs: 67
; NumVgprs: 156
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 67
; NumVGPRsForWavesPerEU: 156
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_maskk_bfloat16_paired_bm128_bn64_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     156
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
