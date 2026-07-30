	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x30
	s_load_b128 s[44:47], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s60, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s61, 63
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
	s_ashr_i32 s6, s5, 6
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v89, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v91, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v47, 15, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v48, 64, v0
	v_and_b32_e32 v46, 16, v0
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v49, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 998 20                        ; ragged.py:998:20
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
	s_sub_i32 s20, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s20, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s8, s2, s6
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s5, s5, s9
	s_mul_hi_u32 s4, s9, s5
	s_abs_i32 s5, s2
	s_add_i32 s9, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s9
	s_mul_i32 s9, s4, s7
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_ashr_i32 s21, s20, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[20:21], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s63, s7, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s62, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s44, s4
	s_addc_u32 s5, s45, s5
	s_mov_b32 s45, 0
	s_load_b32 s21, s[4:5], 0x0
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s44, s20, s60
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s18, s21, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lt_i32 s18, 2
	s_cbranch_scc1 .LBB0_8
; %bb.1:                                ; %.lr.ph38
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 2, v48
	v_dual_mov_b32 v104, 0 :: v_dual_and_b32 v1, 63, v0
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[22:23], s[0:1], 0x38
	v_or_b32_e32 v2, v2, v47
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v92, 6, v48
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 4, v46
	v_lshrrev_b32_e32 v4, 1, v49
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s24, s18, 31
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s2, s62, 6
	v_mad_u64_u32 v[33:34], null, s60, v92, v[1:2]
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_add_i32 s24, s18, s24
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or3_b32 v69, v3, v4, s2
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s63, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s2, v1
	v_mul_lo_u32 v1, s61, v92
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_ashr_i32 s64, s24, 1
	v_mad_u64_u32 v[34:35], null, s60, 6, v[33:34]
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_lshr_b32 s24, s21, 31
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 32, v2
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_add_i32 s24, s21, s24
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s65, s3, 5
	.loc	1 1150 55                       ; ragged.py:1150:55
	s_ashr_i32 s66, s24, 1
	.loc	1 1158 43                       ; ragged.py:1158:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s67, s20, s22
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s68, s20, s23
	s_and_b32 s49, s37, 0xffff
	s_lshl_b32 s3, s61, 1
	s_lshl_b32 s20, s61, 2
	s_lshl_b32 s24, s61, 3
	s_lshl_b32 s28, s61, 4
	s_and_b32 s53, s39, 0xffff
	s_bitcmp1_b32 s21, 0
	v_mad_u64_u32 v[35:36], null, s60, 10, v[33:34]
	v_mad_u64_u32 v[36:37], null, s60, 12, v[33:34]
	s_mov_b32 s48, s36
	s_mul_i32 s22, s61, 6
	s_mul_i32 s25, s61, 10
	s_mul_i32 s26, s61, 12
	s_mul_i32 s27, s61, 14
	s_mul_i32 s29, s61, 18
	s_mul_i32 s30, s61, 20
	s_mul_i32 s31, s61, 22
	s_mul_i32 s33, s61, 24
	s_mul_i32 s34, s61, 26
	s_mul_i32 s35, s61, 28
	s_mul_i32 s36, s61, 30
	v_add3_u32 v110, v1, s3, v8
	s_cselect_b32 s37, -1, 0
	s_add_i32 s3, s63, s44
	v_mad_u64_u32 v[37:38], null, s60, 14, v[33:34]
	v_mad_u64_u32 v[38:39], null, s60, 18, v[33:34]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e32 vcc_lo, s60, v3
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v109, v8, v1
	v_add3_u32 v111, v1, s20, v8
	v_add3_u32 v112, v1, s22, v8
	v_add3_u32 v113, v1, s24, v8
	v_add3_u32 v114, v1, s25, v8
	v_add3_u32 v115, v1, s26, v8
	v_add3_u32 v116, v1, s27, v8
	v_add3_u32 v117, v1, s28, v8
	v_add3_u32 v118, v1, s29, v8
	v_add3_u32 v119, v1, s30, v8
	v_add3_u32 v120, v1, s31, v8
	v_add3_u32 v121, v1, s33, v8
	v_add3_u32 v122, v1, s34, v8
	v_add3_u32 v123, v1, s35, v8
	v_add3_u32 v124, v1, s36, v8
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v1, s3, v2
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v3, s3, v5
	v_mad_u64_u32 v[39:40], null, s60, 20, v[33:34]
	v_mad_u64_u32 v[40:41], null, s60, 22, v[33:34]
	v_mad_u64_u32 v[41:42], null, s60, 24, v[33:34]
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v6, s63, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v72, 2, v69
	v_or_b32_e32 v73, 4, v69
	v_or_b32_e32 v74, 6, v69
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v7, s63, v5
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v75, 8, v69
	v_or_b32_e32 v77, 10, v69
	v_or_b32_e32 v78, 12, v69
	v_or_b32_e32 v79, 14, v69
	v_or_b32_e32 v80, 32, v69
	v_or_b32_e32 v81, 34, v69
	v_or_b32_e32 v82, 36, v69
	v_or_b32_e32 v83, 38, v69
	v_or_b32_e32 v84, 40, v69
	v_or_b32_e32 v85, 42, v69
	v_or_b32_e32 v86, 44, v69
	v_or_b32_e32 v87, 46, v69
	v_mad_u64_u32 v[42:43], null, s60, 26, v[33:34]
	v_mad_u64_u32 v[43:44], null, s60, 28, v[33:34]
	v_mul_lo_u32 v129, v1, s23
	v_mul_lo_u32 v130, v3, s23
	v_mad_u64_u32 v[44:45], null, s60, 30, v[33:34]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v6
	v_cmp_gt_i32_e64 s1, s60, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s2, s61, v69
	v_cmp_gt_i32_e64 s19, s61, v72
	v_cmp_gt_i32_e64 s4, s61, v73
	v_cmp_gt_i32_e64 s5, s61, v74
	v_cmp_gt_i32_e64 s6, s61, v75
	v_cmp_gt_i32_e64 s7, s61, v77
	v_cmp_gt_i32_e64 s8, s61, v78
	v_cmp_gt_i32_e64 s9, s61, v79
	v_cmp_gt_i32_e64 s10, s61, v80
	v_cmp_gt_i32_e64 s11, s61, v81
	v_cmp_gt_i32_e64 s12, s61, v82
	v_cmp_gt_i32_e64 s13, s61, v83
	v_cmp_gt_i32_e64 s14, s61, v84
	v_cmp_gt_i32_e64 s15, s61, v85
	v_cmp_gt_i32_e64 s16, s61, v86
	v_cmp_gt_i32_e64 s17, s61, v87
	v_cmp_gt_i32_e64 s18, s61, v8
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v96, 18, v92
	v_or_b32_e32 v97, 20, v92
	v_or_b32_e32 v98, 22, v92
	v_or_b32_e32 v99, 24, v92
	v_or_b32_e32 v101, 26, v92
	v_or_b32_e32 v102, 28, v92
	v_or_b32_e32 v103, 30, v92
	v_lshl_add_u32 v105, s60, 1, v33
	v_lshl_add_u32 v106, s60, 2, v33
	v_lshl_add_u32 v107, s60, 3, v33
	v_lshl_add_u32 v108, s60, 4, v33
	v_or_b32_e32 v125, 0x380, v0
	v_or_b32_e32 v126, 0x780, v0
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v127, 0, v2
	v_add3_u32 v128, 0, v4, v47
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v64, 0
	v_mov_b32_e32 v51, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v61, 0
	s_mov_b32 s52, s38
	s_add_i32 s38, s64, -1
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s57, s43, 0xffff
	s_mov_b32 s56, s42
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s39, s38, 7
	s_mov_b32 s3, 0
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v131, v129, s45, 1
	v_add_lshl_u32 v132, v130, s45, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s45, s68
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s42, s50
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s3, s3, s61
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v131, 0x80000000, v131, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	s_mov_b32 s43, s51
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v133, v69, s3, 1
	v_add_lshl_u32 v141, v80, s3, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v131, v131, s[40:43], 0 offen
	buffer_load_u16 v132, v132, s[40:43], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v134, v72, s3, 1
	v_add_lshl_u32 v142, v81, s3, 1
	v_add_lshl_u32 v135, v73, s3, 1
	v_add_lshl_u32 v143, v82, s3, 1
	v_add_lshl_u32 v136, v74, s3, 1
	v_add_lshl_u32 v144, v83, s3, 1
	v_add_lshl_u32 v137, v75, s3, 1
	v_add_lshl_u32 v138, v77, s3, 1
	v_add_lshl_u32 v139, v78, s3, 1
	v_add_lshl_u32 v140, v79, s3, 1
	v_add_lshl_u32 v145, v84, s3, 1
	v_add_lshl_u32 v146, v85, s3, 1
	v_add_lshl_u32 v147, v86, s3, 1
	v_add_lshl_u32 v148, v87, s3, 1
	v_cndmask_b32_e64 v133, 0x80000000, v133, s2
	v_cndmask_b32_e64 v141, 0x80000000, v141, s10
	v_cndmask_b32_e64 v134, 0x80000000, v134, s19
	v_cndmask_b32_e64 v142, 0x80000000, v142, s11
	v_cndmask_b32_e64 v135, 0x80000000, v135, s4
	v_cndmask_b32_e64 v143, 0x80000000, v143, s12
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	v_cndmask_b32_e64 v136, 0x80000000, v136, s5
	v_cndmask_b32_e64 v144, 0x80000000, v144, s13
	v_cndmask_b32_e64 v137, 0x80000000, v137, s6
	v_cndmask_b32_e64 v138, 0x80000000, v138, s7
	v_cndmask_b32_e64 v139, 0x80000000, v139, s8
	v_cndmask_b32_e64 v140, 0x80000000, v140, s9
	v_cndmask_b32_e64 v145, 0x80000000, v145, s14
	v_cndmask_b32_e64 v146, 0x80000000, v146, s15
	v_cndmask_b32_e64 v147, 0x80000000, v147, s16
	v_cndmask_b32_e64 v148, 0x80000000, v148, s17
	s_clause 0xf
	buffer_load_u16 v133, v133, s[56:59], 0 offen
	buffer_load_u16 v134, v134, s[56:59], 0 offen
	buffer_load_u16 v135, v135, s[56:59], 0 offen
	buffer_load_u16 v136, v136, s[56:59], 0 offen
	buffer_load_u16 v137, v137, s[56:59], 0 offen
	buffer_load_u16 v138, v138, s[56:59], 0 offen
	buffer_load_u16 v139, v139, s[56:59], 0 offen
	buffer_load_u16 v140, v140, s[56:59], 0 offen
	buffer_load_u16 v141, v141, s[56:59], 0 offen
	buffer_load_u16 v142, v142, s[56:59], 0 offen
	buffer_load_u16 v143, v143, s[56:59], 0 offen
	buffer_load_u16 v144, v144, s[56:59], 0 offen
	buffer_load_u16 v145, v145, s[56:59], 0 offen
	buffer_load_u16 v146, v146, s[56:59], 0 offen
	buffer_load_u16 v147, v147, s[56:59], 0 offen
	buffer_load_u16 v148, v148, s[56:59], 0 offen
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v1, v1
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
	s_add_i32 s20, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s3, s20, 7
	s_cmp_lg_u32 s45, s39
	s_mov_b32 s45, s20
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v27, v131, v27 :: v_dual_lshlrev_b32 v132, 16, v132
	v_mul_f32_e32 v2, v132, v2
	v_mul_f32_e32 v26, v131, v26
	v_mul_f32_e32 v28, v131, v28
	v_mul_f32_e32 v29, v131, v29
	v_mul_f32_e32 v30, v131, v30
	v_mul_f32_e32 v31, v131, v31
	v_mul_f32_e32 v32, v131, v32
	v_mul_f32_e32 v17, v131, v17
	v_mul_f32_e32 v18, v131, v18
	v_mul_f32_e32 v19, v131, v19
	v_mul_f32_e32 v20, v131, v20
	v_mul_f32_e32 v21, v131, v21
	v_mul_f32_e32 v22, v131, v22
	v_mul_f32_e32 v23, v131, v23
	v_mul_f32_e32 v24, v131, v24
	v_mul_f32_e32 v1, v1, v132
	v_mul_f32_e32 v25, v25, v131
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v133, 16, v133
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v134, 16, v134
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v135, 16, v135
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v136, 16, v136
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v137, 16, v137
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v138, 16, v138
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v139, 16, v139
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v140, 16, v140
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v141, 16, v141
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v142, 16, v142
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v143, 16, v143
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v146, 16, v146
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v147, 16, v147
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v3, v132, v3 :: v_dual_lshlrev_b32 v148, 16, v148
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v104, v26, v134
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v4, v132, v4 :: v_dual_fmac_f32 v93, v30, v138
	v_dual_mul_f32 v5, v132, v5 :: v_dual_fmac_f32 v100, v27, v135
	v_dual_mul_f32 v6, v132, v6 :: v_dual_fmac_f32 v91, v31, v139
	v_dual_mul_f32 v7, v132, v7 :: v_dual_fmac_f32 v94, v29, v137
	v_dual_mul_f32 v8, v132, v8 :: v_dual_fmac_f32 v89, v17, v141
	v_dual_mul_f32 v9, v132, v9 :: v_dual_fmac_f32 v88, v18, v142
	v_dual_mul_f32 v10, v132, v10 :: v_dual_fmac_f32 v67, v23, v147
	v_dual_mul_f32 v11, v132, v11 :: v_dual_fmac_f32 v70, v21, v145
	v_dual_mul_f32 v12, v132, v12 :: v_dual_fmac_f32 v61, v25, v133
	v_dual_mul_f32 v13, v132, v13 :: v_dual_fmac_f32 v76, v19, v143
	v_dual_mul_f32 v14, v132, v14 :: v_dual_fmac_f32 v63, v3, v135
	v_dual_mul_f32 v15, v132, v15 :: v_dual_fmac_f32 v68, v22, v146
	v_dual_mul_f32 v16, v132, v16 :: v_dual_fmac_f32 v65, v2, v134
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v95, v28, v136 :: v_dual_fmac_f32 v64, v1, v133
	v_dual_fmac_f32 v90, v32, v140 :: v_dual_fmac_f32 v59, v6, v138
	v_dual_fmac_f32 v71, v20, v144 :: v_dual_fmac_f32 v60, v5, v137
	v_dual_fmac_f32 v66, v24, v148 :: v_dual_fmac_f32 v55, v10, v142
	v_dual_fmac_f32 v62, v4, v136 :: v_dual_fmac_f32 v51, v14, v146
	v_dual_fmac_f32 v58, v7, v139 :: v_dual_fmac_f32 v57, v8, v140
	v_dual_fmac_f32 v56, v9, v141 :: v_dual_fmac_f32 v53, v12, v144
	v_dual_fmac_f32 v54, v11, v143 :: v_dual_fmac_f32 v45, v16, v148
	v_fmac_f32_e32 v52, v13, v145
	v_fmac_f32_e32 v50, v15, v147
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_8
.LBB0_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 1150 54                       ; ragged.py:1150:54
	s_sub_i32 s20, s66, s3
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v16, 0
	.loc	1 1148 45                       ; ragged.py:1148:45
	v_med3_i32 v2, s20, 0, 0x80
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1152 41                       ; ragged.py:1152:41
	v_readfirstlane_b32 s20, v2
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
	s_and_b32 s21, s20, 0xe0
	s_mov_b32 s20, s65
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_ge_i32 s65, s21
	s_cbranch_scc1 .LBB0_6
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v25, 0
	s_add_i32 s22, s3, s67
	s_mov_b32 s20, s65
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
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1165 46 is_stmt 1             ; ragged.py:1165:46
	s_add_i32 s23, s22, s20
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_mov_b32 s54, s50
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_mul_i32 s24, s23, s60
	.loc	1 1166 46                       ; ragged.py:1166:46
	s_mul_i32 s23, s23, s61
	.loc	1 1165 46                       ; ragged.py:1165:46
	s_add_i32 s24, s24, s63
	.loc	1 1166 46                       ; ragged.py:1166:46
	v_add_nc_u32_e32 v131, s23, v109
	v_add_nc_u32_e32 v132, s23, v110
	v_add_nc_u32_e32 v133, s23, v111
	v_add_nc_u32_e32 v134, s23, v112
	v_add_nc_u32_e32 v135, s23, v113
	v_add_nc_u32_e32 v136, s23, v114
	v_add_nc_u32_e32 v137, s23, v115
	v_add_nc_u32_e32 v138, s23, v116
	v_add_nc_u32_e32 v139, s23, v117
	v_add_nc_u32_e32 v140, s23, v118
	v_add_nc_u32_e32 v141, s23, v119
	v_add_nc_u32_e32 v142, s23, v120
	v_add_nc_u32_e32 v143, s23, v121
	v_add_nc_u32_e32 v144, s23, v122
	v_add_nc_u32_e32 v145, s23, v123
	v_add_nc_u32_e32 v146, s23, v124
	.loc	1 1166 38 is_stmt 0             ; ragged.py:1166:38
	v_cndmask_b32_e64 v131, 0x80000000, v131, s18
	v_add_nc_u32_e32 v147, s24, v33
	v_add_nc_u32_e32 v148, s24, v105
	v_add_nc_u32_e32 v149, s24, v106
	v_add_nc_u32_e32 v150, s24, v34
	v_add_nc_u32_e32 v151, s24, v107
	v_add_nc_u32_e32 v152, s24, v35
	v_add_nc_u32_e32 v153, s24, v36
	v_add_nc_u32_e32 v154, s24, v37
	v_add_nc_u32_e32 v155, s24, v108
	v_add_nc_u32_e32 v156, s24, v38
	v_add_nc_u32_e32 v157, s24, v39
	v_add_nc_u32_e32 v158, s24, v40
	v_add_nc_u32_e32 v159, s24, v41
	v_add_nc_u32_e32 v160, s24, v42
	v_add_nc_u32_e32 v161, s24, v43
	v_add_nc_u32_e32 v162, s24, v44
	v_cndmask_b32_e64 v132, 0x80000000, v132, s18
	v_cndmask_b32_e64 v133, 0x80000000, v133, s18
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v134, 0x80000000, v134, s18
	v_cndmask_b32_e64 v135, 0x80000000, v135, s18
	v_cndmask_b32_e64 v136, 0x80000000, v136, s18
	v_cndmask_b32_e64 v137, 0x80000000, v137, s18
	v_cndmask_b32_e64 v138, 0x80000000, v138, s18
	v_cndmask_b32_e64 v139, 0x80000000, v139, s18
	v_cndmask_b32_e64 v140, 0x80000000, v140, s18
	v_cndmask_b32_e64 v141, 0x80000000, v141, s18
	v_cndmask_b32_e64 v142, 0x80000000, v142, s18
	v_cndmask_b32_e64 v143, 0x80000000, v143, s18
	v_cndmask_b32_e64 v144, 0x80000000, v144, s18
	v_cndmask_b32_e64 v145, 0x80000000, v145, s18
	v_cndmask_b32_e64 v146, 0x80000000, v146, s18
	.loc	1 1165 38 is_stmt 1             ; ragged.py:1165:38
	v_dual_cndmask_b32 v147, 0x80000000, v147 :: v_dual_cndmask_b32 v148, 0x80000000, v148
	v_dual_cndmask_b32 v149, 0x80000000, v149 :: v_dual_cndmask_b32 v150, 0x80000000, v150
	v_dual_cndmask_b32 v151, 0x80000000, v151 :: v_dual_cndmask_b32 v152, 0x80000000, v152
	v_dual_cndmask_b32 v153, 0x80000000, v153 :: v_dual_cndmask_b32 v154, 0x80000000, v154
	v_dual_cndmask_b32 v155, 0x80000000, v155 :: v_dual_cndmask_b32 v156, 0x80000000, v156
	v_dual_cndmask_b32 v157, 0x80000000, v157 :: v_dual_cndmask_b32 v158, 0x80000000, v158
	v_dual_cndmask_b32 v159, 0x80000000, v159 :: v_dual_cndmask_b32 v160, 0x80000000, v160
	v_dual_cndmask_b32 v161, 0x80000000, v161 :: v_dual_cndmask_b32 v162, 0x80000000, v162
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_clause 0xf
	buffer_load_u8 v187, v131, s[52:55], 0 offen
	buffer_load_u8 v188, v132, s[52:55], 0 offen
	buffer_load_u8 v189, v133, s[52:55], 0 offen
	buffer_load_u8 v190, v134, s[52:55], 0 offen
	buffer_load_u8 v191, v135, s[52:55], 0 offen
	buffer_load_u8 v192, v136, s[52:55], 0 offen
	buffer_load_u8 v193, v137, s[52:55], 0 offen
	buffer_load_u8 v194, v138, s[52:55], 0 offen
	buffer_load_u8 v195, v139, s[52:55], 0 offen
	buffer_load_u8 v196, v140, s[52:55], 0 offen
	buffer_load_u8 v197, v141, s[52:55], 0 offen
	buffer_load_u8 v198, v142, s[52:55], 0 offen
	buffer_load_u8 v199, v143, s[52:55], 0 offen
	buffer_load_u8 v200, v144, s[52:55], 0 offen
	buffer_load_u8 v201, v145, s[52:55], 0 offen
	buffer_load_u8 v202, v146, s[52:55], 0 offen
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_clause 0xf
	buffer_load_u8 v131, v147, s[48:51], 0 offen
	buffer_load_u8 v132, v148, s[48:51], 0 offen
	buffer_load_u8 v133, v149, s[48:51], 0 offen
	buffer_load_u8 v134, v150, s[48:51], 0 offen
	buffer_load_u8 v135, v151, s[48:51], 0 offen
	buffer_load_u8 v136, v152, s[48:51], 0 offen
	buffer_load_u8 v137, v153, s[48:51], 0 offen
	buffer_load_u8 v138, v155, s[48:51], 0 offen
	buffer_load_u8 v139, v156, s[48:51], 0 offen
	buffer_load_u8 v140, v157, s[48:51], 0 offen
	buffer_load_u8 v141, v158, s[48:51], 0 offen
	buffer_load_u8 v142, v159, s[48:51], 0 offen
	buffer_load_u8 v143, v160, s[48:51], 0 offen
	buffer_load_u8 v144, v154, s[48:51], 0 offen
	buffer_load_u8 v145, v161, s[48:51], 0 offen
	buffer_load_u8 v146, v162, s[48:51], 0 offen
	v_add_nc_u32_e32 v203, 0, v0
	v_add_nc_u32_e32 v204, 0, v125
	v_add_nc_u32_e32 v205, 0, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1177 25                       ; ragged.py:1177:25
	s_add_i32 s20, s20, 32
	.loc	1 1165 38                       ; ragged.py:1165:38
	s_waitcnt vmcnt(15)
	ds_store_b8 v203, v131
	s_waitcnt vmcnt(14)
	ds_store_b8 v203, v132 offset:128
	s_waitcnt vmcnt(13)
	ds_store_b8 v203, v133 offset:256
	s_waitcnt vmcnt(12)
	ds_store_b8 v203, v134 offset:384
	s_waitcnt vmcnt(11)
	ds_store_b8 v203, v135 offset:512
	s_waitcnt vmcnt(10)
	ds_store_b8 v203, v136 offset:640
	s_waitcnt vmcnt(9)
	ds_store_b8 v203, v137 offset:768
	s_waitcnt vmcnt(8)
	ds_store_b8 v203, v138 offset:1024
	s_waitcnt vmcnt(7)
	ds_store_b8 v203, v139 offset:1152
	s_waitcnt vmcnt(6)
	ds_store_b8 v203, v140 offset:1280
	s_waitcnt vmcnt(5)
	ds_store_b8 v203, v141 offset:1408
	s_waitcnt vmcnt(4)
	ds_store_b8 v203, v142 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v203, v143 offset:1664
	s_waitcnt vmcnt(2)
	ds_store_b8 v204, v144
	s_waitcnt vmcnt(1)
	ds_store_b8 v203, v145 offset:1792
	s_waitcnt vmcnt(0)
	ds_store_b8 v205, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	ds_load_u8 v206, v127 offset:448
	ds_load_u8 v207, v127 offset:384
	ds_load_u8 v208, v127 offset:320
	ds_load_u8 v209, v127 offset:256
	ds_load_u8 v179, v127 offset:480
	ds_load_u8 v180, v127 offset:416
	ds_load_u8 v181, v127 offset:352
	ds_load_u8 v182, v127 offset:288
	ds_load_u8 v210, v127 offset:192
	ds_load_u8 v211, v127 offset:128
	ds_load_u8 v212, v127 offset:64
	ds_load_u8 v183, v127 offset:224
	ds_load_u8 v184, v127 offset:160
	ds_load_u8 v185, v127 offset:96
	ds_load_u8 v213, v127
	ds_load_u8 v186, v127 offset:32
	ds_load_u8 v171, v127 offset:704
	ds_load_u8 v172, v127 offset:640
	ds_load_u8 v173, v127 offset:576
	ds_load_u8 v174, v127 offset:512
	ds_load_u8 v156, v127 offset:736
	ds_load_u8 v158, v127 offset:672
	ds_load_u8 v160, v127 offset:608
	ds_load_u8 v162, v127 offset:544
	ds_load_u8 v175, v127 offset:960
	ds_load_u8 v176, v127 offset:896
	ds_load_u8 v177, v127 offset:832
	ds_load_u8 v178, v127 offset:768
	ds_load_u8 v164, v127 offset:992
	ds_load_u8 v166, v127 offset:928
	ds_load_u8 v168, v127 offset:864
	ds_load_u8 v170, v127 offset:800
	ds_load_u8 v155, v127 offset:1216
	ds_load_u8 v157, v127 offset:1152
	ds_load_u8 v159, v127 offset:1088
	ds_load_u8 v161, v127 offset:1024
	ds_load_u8 v140, v127 offset:1248
	ds_load_u8 v142, v127 offset:1184
	ds_load_u8 v144, v127 offset:1120
	ds_load_u8 v146, v127 offset:1056
	ds_load_u8 v163, v127 offset:1472
	ds_load_u8 v165, v127 offset:1408
	ds_load_u8 v167, v127 offset:1344
	ds_load_u8 v169, v127 offset:1280
	ds_load_u8 v148, v127 offset:1504
	ds_load_u8 v150, v127 offset:1440
	ds_load_u8 v152, v127 offset:1376
	ds_load_u8 v154, v127 offset:1312
	ds_load_u8 v139, v127 offset:1728
	ds_load_u8 v141, v127 offset:1664
	ds_load_u8 v143, v127 offset:1600
	ds_load_u8 v145, v127 offset:1536
	ds_load_u8 v131, v127 offset:1760
	ds_load_u8 v132, v127 offset:1696
	ds_load_u8 v133, v127 offset:1632
	ds_load_u8 v134, v127 offset:1568
	ds_load_u8 v147, v127 offset:1984
	ds_load_u8 v149, v127 offset:1920
	ds_load_u8 v151, v127 offset:1856
	ds_load_u8 v153, v127 offset:1792
	ds_load_u8 v135, v127 offset:2016
	ds_load_u8 v136, v127 offset:1952
	ds_load_u8 v137, v127 offset:1888
	ds_load_u8 v138, v127 offset:1824
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v203, v196 offset:1152
	ds_store_b8 v203, v198 offset:1408
	ds_store_b8 v203, v200 offset:1664
	ds_store_b8 v204, v194
	ds_store_b8 v203, v187
	ds_store_b8 v203, v188 offset:128
	ds_store_b8 v203, v189 offset:256
	ds_store_b8 v203, v190 offset:384
	ds_store_b8 v203, v191 offset:512
	ds_store_b8 v203, v192 offset:640
	ds_store_b8 v203, v193 offset:768
	ds_store_b8 v203, v195 offset:1024
	ds_store_b8 v203, v197 offset:1280
	ds_store_b8 v203, v199 offset:1536
	ds_store_b8 v203, v201 offset:1792
	ds_store_b8 v205, v202
	.loc	1 1167 35                       ; ragged.py:1167:35
	v_perm_b32 v187, v209, v208, 0xc0c0004
	v_perm_b32 v188, v207, v206, 0xc0c0004
	v_perm_b32 v189, v213, v212, 0xc0c0004
	v_perm_b32 v190, v211, v210, 0xc0c0004
	.loc	1 1166 38                       ; ragged.py:1166:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1167 35                       ; ragged.py:1167:35
	v_lshl_or_b32 v188, v188, 16, v187
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_lshl_or_b32 v187, v190, 16, v189
	ds_load_u8 v189, v128 offset:320
	ds_load_u8 v190, v128 offset:256
	ds_load_u8 v191, v128 offset:480
	ds_load_u8 v192, v128 offset:416
	ds_load_u8 v193, v128 offset:352
	ds_load_u8 v194, v128 offset:288
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_perm_b32 v173, v174, v173, 0xc0c0004
	v_perm_b32 v171, v172, v171, 0xc0c0004
	v_perm_b32 v181, v182, v181, 0xc0c0004
	v_perm_b32 v179, v180, v179, 0xc0c0004
	v_lshl_or_b32 v172, v175, 16, v177
	v_perm_b32 v182, v186, v185, 0xc0c0004
	v_lshl_or_b32 v171, v171, 16, v173
	ds_load_u8 v173, v128 offset:832
	ds_load_u8 v174, v128 offset:768
	ds_load_u8 v175, v128 offset:992
	ds_load_u8 v176, v128 offset:928
	ds_load_u8 v177, v128 offset:864
	ds_load_u8 v178, v128 offset:800
	v_perm_b32 v183, v184, v183, 0xc0c0004
	v_lshl_or_b32 v180, v179, 16, v181
	v_perm_b32 v160, v162, v160, 0xc0c0004
	v_perm_b32 v156, v158, v156, 0xc0c0004
	v_perm_b32 v158, v165, v163, 0xc0c0004
	v_lshl_or_b32 v179, v183, 16, v182
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	ds_load_u8 v190, v128 offset:448
	ds_load_u8 v195, v128 offset:384
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_perm_b32 v159, v161, v159, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v193, v194, v193, 0xc0c0004
	v_perm_b32 v155, v157, v155, 0xc0c0004
	v_perm_b32 v168, v170, v168, 0xc0c0004
	v_perm_b32 v164, v166, v164, 0xc0c0004
	v_perm_b32 v144, v146, v144, 0xc0c0004
	v_lshl_or_b32 v192, v191, 16, v193
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v175, v176, v175, 0xc0c0004
	v_lshl_or_b32 v155, v155, 16, v159
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v177, v178, v177, 0xc0c0004
	v_perm_b32 v140, v142, v140, 0xc0c0004
	v_perm_b32 v142, v149, v147, 0xc0c0004
	v_perm_b32 v143, v145, v143, 0xc0c0004
	v_perm_b32 v139, v141, v139, 0xc0c0004
	v_lshl_or_b32 v176, v175, 16, v177
	v_lshl_or_b32 v177, v156, 16, v160
	v_perm_b32 v156, v169, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v190, v195, v190, 0xc0c0004
	ds_load_u8 v195, v128 offset:64
	ds_load_u8 v196, v128
	ds_load_u8 v197, v128 offset:224
	ds_load_u8 v198, v128 offset:160
	ds_load_u8 v199, v128 offset:96
	ds_load_u8 v200, v128 offset:32
	v_lshl_or_b32 v139, v139, 16, v143
	v_perm_b32 v152, v154, v152, 0xc0c0004
	v_lshl_or_b32 v156, v158, 16, v156
	v_lshl_or_b32 v190, v190, 16, v189
	ds_load_u8 v157, v128 offset:1344
	ds_load_u8 v158, v128 offset:1280
	ds_load_u8 v159, v128 offset:1504
	ds_load_u8 v160, v128 offset:1440
	ds_load_u8 v161, v128 offset:1376
	ds_load_u8 v162, v128 offset:1312
	v_perm_b32 v148, v150, v148, 0xc0c0004
	v_perm_b32 v137, v138, v137, 0xc0c0004
	v_perm_b32 v135, v136, v135, 0xc0c0004
	v_perm_b32 v133, v134, v133, 0xc0c0004
	v_perm_b32 v131, v132, v131, 0xc0c0004
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cmp_lt_i32 s20, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1167 35                       ; ragged.py:1167:35
	v_lshl_or_b32 v132, v135, 16, v137
	v_lshl_or_b32 v131, v131, 16, v133
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v195, v196, v195, 0xc0c0004
	ds_load_u8 v196, v128 offset:192
	ds_load_u8 v201, v128 offset:128
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v194, v200, v199, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	ds_load_u8 v158, v128 offset:1472
	ds_load_u8 v163, v128 offset:1408
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v160, v159, 16, v161
	v_lshl_or_b32 v161, v140, 16, v144
	v_perm_b32 v140, v153, v151, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v196, v201, v196, 0xc0c0004
	v_lshl_or_b32 v140, v142, 16, v140
	ds_load_u8 v141, v128 offset:1856
	ds_load_u8 v142, v128 offset:1792
	ds_load_u8 v143, v128 offset:2016
	ds_load_u8 v144, v128 offset:1952
	ds_load_u8 v145, v128 offset:1888
	ds_load_u8 v146, v128 offset:1824
	v_lshl_or_b32 v189, v196, 16, v195
	v_perm_b32 v195, v198, v197, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v158, v163, v158, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[189:190], v[179:180], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v191, v195, 16, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v158, v158, 16, v157
	v_wmma_i32_16x16x16_iu4 v[25:32], v[189:190], v[187:188], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[191:192], v[179:180], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v174, v128 offset:960
	ds_load_u8 v179, v128 offset:896
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v128 offset:1984
	ds_load_u8 v147, v128 offset:1920
	v_wmma_i32_16x16x16_iu4 v[17:24], v[191:192], v[187:188], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v143, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v144, v143, 16, v145
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v174, v179, v174, 0xc0c0004
	ds_load_u8 v179, v128 offset:576
	ds_load_u8 v180, v128 offset:512
	ds_load_u8 v181, v128 offset:736
	ds_load_u8 v182, v128 offset:672
	ds_load_u8 v183, v128 offset:608
	ds_load_u8 v184, v128 offset:544
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v142, v147, v142, 0xc0c0004
	v_lshl_or_b32 v174, v174, 16, v173
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v142, v142, 16, v141
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v179, v180, v179, 0xc0c0004
	ds_load_u8 v180, v128 offset:704
	ds_load_u8 v185, v128 offset:640
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v178, v184, v183, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v185, v180, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v173, v180, 16, v179
	v_perm_b32 v179, v182, v181, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[173:174], v[171:172], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v175, v179, 16, v178
	v_lshl_or_b32 v178, v164, 16, v168
	ds_load_u8 v163, v128 offset:1088
	ds_load_u8 v164, v128 offset:1024
	ds_load_u8 v165, v128 offset:1248
	ds_load_u8 v166, v128 offset:1184
	ds_load_u8 v167, v128 offset:1120
	ds_load_u8 v168, v128 offset:1056
	v_wmma_i32_16x16x16_iu4 v[17:24], v[175:176], v[171:172], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[173:174], v[177:178], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[175:176], v[177:178], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	ds_load_u8 v164, v128 offset:1216
	ds_load_u8 v169, v128 offset:1152
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v162, v168, v167, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v169, v164, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v157, v164, 16, v163
	v_perm_b32 v163, v166, v165, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[157:158], v[155:156], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v159, v163, 16, v162
	v_lshl_or_b32 v162, v148, 16, v152
	ds_load_u8 v147, v128 offset:1600
	ds_load_u8 v148, v128 offset:1536
	ds_load_u8 v149, v128 offset:1760
	ds_load_u8 v150, v128 offset:1696
	ds_load_u8 v151, v128 offset:1632
	ds_load_u8 v152, v128 offset:1568
	v_wmma_i32_16x16x16_iu4 v[17:24], v[159:160], v[155:156], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[157:158], v[161:162], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[159:160], v[161:162], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v128 offset:1728
	ds_load_u8 v153, v128 offset:1664
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v146, v152, v151, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v153, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v141, v148, 16, v147
	v_perm_b32 v147, v150, v149, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[139:140], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v143, v147, 16, v146
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[143:144], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[143:144], v[131:132], v[9:16] neg_lo:[1,1,0]
	.loc	1 1155 27                       ; ragged.py:1155:27
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1146 25                       ; ragged.py:1146:25
	s_sub_i32 s21, s64, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1144 42                       ; ragged.py:1144:42
	s_min_i32 s35, s21, 0x80
	.loc	1 1178 24                       ; ragged.py:1178:24
	s_cmp_ge_i32 s20, s35
	.loc	1 1178 21 is_stmt 0             ; ragged.py:1178:21
	s_cbranch_scc1 .LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1113 28 is_stmt 1             ; ragged.py:1113:28
	v_or_b32_e32 v131, 2, v92
	.loc	1 1179 30                       ; ragged.py:1179:30
	s_add_i32 s33, s20, s3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v132, 4, v92
	v_or_b32_e32 v133, 6, v92
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v134, s33, v92
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v135, 8, v92
	v_or_b32_e32 v136, 10, v92
	v_or_b32_e32 v137, 12, v92
	v_or_b32_e32 v138, 14, v92
	v_or_b32_e32 v139, 16, v92
	.loc	1 1179 30                       ; ragged.py:1179:30
	v_or_b32_e32 v131, s33, v131
	v_or_b32_e32 v132, s33, v132
	v_or_b32_e32 v133, s33, v133
	v_or_b32_e32 v135, s33, v135
	v_or_b32_e32 v136, s33, v136
	v_or_b32_e32 v137, s33, v137
	v_or_b32_e32 v138, s33, v138
	v_or_b32_e32 v139, s33, v139
	v_or_b32_e32 v140, s33, v96
	v_or_b32_e32 v141, s33, v97
	v_or_b32_e32 v142, s33, v98
	v_or_b32_e32 v143, s33, v99
	v_or_b32_e32 v144, s33, v101
	v_or_b32_e32 v145, s33, v102
	v_or_b32_e32 v146, s33, v103
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v147, s3, v134
	.loc	1 1190 46                       ; ragged.py:1190:46
	s_add_i32 s42, s33, s67
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v148, s3, v131
	.loc	1 1190 46                       ; ragged.py:1190:46
	s_mul_i32 s36, s42, s60
	.loc	1 1188 35                       ; ragged.py:1188:35
	v_subrev_nc_u32_e32 v149, s3, v132
	v_subrev_nc_u32_e32 v150, s3, v133
	v_subrev_nc_u32_e32 v151, s3, v135
	v_subrev_nc_u32_e32 v152, s3, v136
	v_subrev_nc_u32_e32 v153, s3, v137
	v_subrev_nc_u32_e32 v154, s3, v138
	v_subrev_nc_u32_e32 v155, s3, v139
	v_subrev_nc_u32_e32 v156, s3, v140
	v_subrev_nc_u32_e32 v157, s3, v141
	v_subrev_nc_u32_e32 v158, s3, v142
	v_subrev_nc_u32_e32 v159, s3, v143
	v_subrev_nc_u32_e32 v160, s3, v144
	v_subrev_nc_u32_e32 v161, s3, v145
	v_subrev_nc_u32_e32 v162, s3, v146
	.loc	1 1188 34 is_stmt 0             ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s24, s35, v147
	.loc	1 1190 46 is_stmt 1             ; ragged.py:1190:46
	s_add_i32 s36, s36, s63
	.loc	1 1188 34                       ; ragged.py:1188:34
	v_cmp_gt_i32_e64 s25, s35, v148
	v_add_nc_u32_e32 v147, s36, v33
	v_cmp_gt_i32_e64 s26, s35, v149
	v_add_nc_u32_e32 v148, s36, v105
	v_cmp_gt_i32_e64 s27, s35, v150
	v_cmp_gt_i32_e64 s28, s35, v151
	v_cmp_gt_i32_e64 s29, s35, v152
	v_cmp_gt_i32_e64 s30, s35, v153
	v_cmp_gt_i32_e64 s31, s35, v154
	v_cmp_gt_i32_e64 s23, s35, v155
	v_cmp_gt_i32_e64 s22, s35, v156
	v_cmp_gt_i32_e64 s21, s35, v157
	v_cmp_gt_i32_e64 s20, s35, v158
	v_cmp_gt_i32_e64 s3, s35, v159
	v_cmp_gt_i32_e64 s33, s35, v160
	v_cmp_gt_i32_e64 s34, s35, v161
	v_cmp_gt_i32_e64 s35, s35, v162
	v_add_nc_u32_e32 v149, s36, v106
	v_add_nc_u32_e32 v150, s36, v34
	v_add_nc_u32_e32 v151, s36, v107
	v_add_nc_u32_e32 v152, s36, v35
	v_add_nc_u32_e32 v153, s36, v36
	v_add_nc_u32_e32 v154, s36, v37
	v_add_nc_u32_e32 v155, s36, v108
	v_add_nc_u32_e32 v156, s36, v38
	v_add_nc_u32_e32 v157, s36, v39
	v_add_nc_u32_e32 v158, s36, v40
	v_add_nc_u32_e32 v159, s36, v41
	v_add_nc_u32_e32 v160, s36, v42
	v_add_nc_u32_e32 v161, s36, v43
	v_add_nc_u32_e32 v162, s36, v44
	.loc	1 1190 70                       ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s24
	.loc	1 1191 46                       ; ragged.py:1191:46
	s_mul_i32 s42, s42, s61
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v147, 0x80000000, v147, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s25
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v163, s42, v109
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v148, 0x80000000, v148, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s26
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v164, s42, v110
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v149, 0x80000000, v149, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s27
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s24, s18, s24
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v150, 0x80000000, v150, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s28
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v165, s42, v111
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v151, 0x80000000, v151, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s29
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s24
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v152, 0x80000000, v152, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s30
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s24, s18, s25
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v153, 0x80000000, v153, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s31
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v166, s42, v112
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v154, 0x80000000, v154, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s23
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	v_cndmask_b32_e64 v164, 0x80000000, v164, s24
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v155, 0x80000000, v155, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s22
	.loc	1 1191 70 is_stmt 1             ; ragged.py:1191:70
	s_and_b32 s24, s18, s26
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v156, 0x80000000, v156, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s21
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v167, s42, v113
	v_add_nc_u32_e32 v175, s42, v121
	.loc	1 1190 38                       ; ragged.py:1190:38
	v_cndmask_b32_e64 v157, 0x80000000, v157, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s20
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	v_cndmask_b32_e64 v165, 0x80000000, v165, s24
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s24, s18, s27
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v168, s42, v114
	v_add_nc_u32_e32 v171, s42, v117
	v_add_nc_u32_e32 v176, s42, v122
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	v_cndmask_b32_e64 v158, 0x80000000, v158, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s3
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v172, s42, v118
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	v_cndmask_b32_e64 v166, 0x80000000, v166, s24
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s24, s18, s28
	s_and_b32 s3, s18, s3
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v169, s42, v115
	v_add_nc_u32_e32 v173, s42, v119
	v_add_nc_u32_e32 v177, s42, v123
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s33
	.loc	1 1191 46 is_stmt 1             ; ragged.py:1191:46
	v_add_nc_u32_e32 v174, s42, v120
	.loc	1 1191 38 is_stmt 0             ; ragged.py:1191:38
	v_cndmask_b32_e64 v167, 0x80000000, v167, s24
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s24, s18, s29
	s_and_b32 s23, s18, s23
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v175, 0x80000000, v175, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s18, s33
	.loc	1 1191 46                       ; ragged.py:1191:46
	v_add_nc_u32_e32 v170, s42, v116
	v_add_nc_u32_e32 v178, s42, v124
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s22, s18, s22
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	v_cndmask_b32_e64 v160, 0x80000000, v160, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s34
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	v_cndmask_b32_e64 v168, 0x80000000, v168, s24
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s24, s18, s30
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v171, 0x80000000, v171, s23
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s21, s18, s21
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v176, 0x80000000, v176, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s18, s34
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v172, 0x80000000, v172, s22
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s20, s18, s20
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	v_cndmask_b32_e64 v161, 0x80000000, v161, s36
	.loc	1 1190 70 is_stmt 0             ; ragged.py:1190:70
	s_and_b32 s36, vcc_lo, s35
	.loc	1 1191 38 is_stmt 1             ; ragged.py:1191:38
	v_cndmask_b32_e64 v169, 0x80000000, v169, s24
	.loc	1 1191 70 is_stmt 0             ; ragged.py:1191:70
	s_and_b32 s24, s18, s31
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v173, 0x80000000, v173, s21
	v_cndmask_b32_e64 v177, 0x80000000, v177, s3
	.loc	1 1191 70                       ; ragged.py:1191:70
	s_and_b32 s3, s18, s35
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	v_cndmask_b32_e64 v174, 0x80000000, v174, s20
	.loc	1 1190 38 is_stmt 1             ; ragged.py:1190:38
	s_clause 0x7
	buffer_load_u8 v147, v147, s[48:51], 0 offen
	buffer_load_u8 v148, v148, s[48:51], 0 offen
	buffer_load_u8 v149, v149, s[48:51], 0 offen
	buffer_load_u8 v150, v150, s[48:51], 0 offen
	buffer_load_u8 v151, v151, s[48:51], 0 offen
	buffer_load_u8 v152, v152, s[48:51], 0 offen
	buffer_load_u8 v153, v153, s[48:51], 0 offen
	buffer_load_u8 v154, v154, s[48:51], 0 offen
	v_cndmask_b32_e64 v162, 0x80000000, v162, s36
	.loc	1 1191 38                       ; ragged.py:1191:38
	v_cndmask_b32_e64 v170, 0x80000000, v170, s24
	v_cndmask_b32_e64 v178, 0x80000000, v178, s3
	.loc	1 1190 38                       ; ragged.py:1190:38
	s_clause 0x7
	buffer_load_u8 v155, v155, s[48:51], 0 offen
	buffer_load_u8 v156, v156, s[48:51], 0 offen
	buffer_load_u8 v157, v157, s[48:51], 0 offen
	buffer_load_u8 v158, v158, s[48:51], 0 offen
	buffer_load_u8 v159, v159, s[48:51], 0 offen
	buffer_load_u8 v160, v160, s[48:51], 0 offen
	buffer_load_u8 v161, v161, s[48:51], 0 offen
	buffer_load_u8 v162, v162, s[48:51], 0 offen
	.loc	1 1191 38                       ; ragged.py:1191:38
	s_clause 0xf
	buffer_load_u8 v163, v163, s[52:55], 0 offen
	buffer_load_u8 v164, v164, s[52:55], 0 offen
	buffer_load_u8 v165, v165, s[52:55], 0 offen
	buffer_load_u8 v166, v166, s[52:55], 0 offen
	buffer_load_u8 v167, v167, s[52:55], 0 offen
	buffer_load_u8 v168, v168, s[52:55], 0 offen
	buffer_load_u8 v169, v169, s[52:55], 0 offen
	buffer_load_u8 v170, v170, s[52:55], 0 offen
	buffer_load_u8 v171, v171, s[52:55], 0 offen
	buffer_load_u8 v172, v172, s[52:55], 0 offen
	buffer_load_u8 v173, v173, s[52:55], 0 offen
	buffer_load_u8 v174, v174, s[52:55], 0 offen
	buffer_load_u8 v175, v175, s[52:55], 0 offen
	buffer_load_u8 v176, v176, s[52:55], 0 offen
	buffer_load_u8 v177, v177, s[52:55], 0 offen
	buffer_load_u8 v178, v178, s[52:55], 0 offen
	.loc	1 1189 60                       ; ragged.py:1189:60
	v_cmp_eq_u32_e64 s3, s38, v134
	v_cmp_eq_u32_e64 s27, s38, v131
	v_cmp_eq_u32_e64 s28, s38, v132
	v_cmp_eq_u32_e64 s29, s38, v133
	v_cmp_eq_u32_e64 s20, s38, v140
	v_cmp_eq_u32_e64 s21, s38, v141
	v_cmp_eq_u32_e64 s22, s38, v142
	v_cmp_eq_u32_e64 s23, s38, v143
	v_cmp_eq_u32_e64 s24, s38, v144
	v_cmp_eq_u32_e64 s25, s38, v145
	v_cmp_eq_u32_e64 s30, s38, v135
	v_cmp_eq_u32_e64 s31, s38, v136
	v_cmp_eq_u32_e64 s33, s38, v137
	v_cmp_eq_u32_e64 s34, s38, v138
	v_cmp_eq_u32_e64 s35, s38, v139
	v_cmp_eq_u32_e64 s26, s38, v146
	.loc	1 1189 36 is_stmt 0             ; ragged.py:1189:36
	s_and_b32 s3, s3, s37
	s_and_b32 s27, s27, s37
	.loc	1 1192 38 is_stmt 1             ; ragged.py:1192:38
	v_add_nc_u32_e32 v179, 0, v0
	.loc	1 1189 36                       ; ragged.py:1189:36
	s_and_b32 s28, s28, s37
	s_and_b32 s29, s29, s37
	s_and_b32 s20, s20, s37
	s_and_b32 s21, s21, s37
	s_and_b32 s22, s22, s37
	s_and_b32 s23, s23, s37
	s_and_b32 s24, s24, s37
	s_and_b32 s25, s25, s37
	s_and_b32 s30, s30, s37
	s_and_b32 s31, s31, s37
	s_and_b32 s33, s33, s37
	s_and_b32 s34, s34, s37
	s_and_b32 s35, s35, s37
	s_and_b32 s26, s26, s37
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_add_nc_u32_e32 v180, 0, v125
	v_add_nc_u32_e32 v181, 0, v126
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1192 66 is_stmt 0             ; ragged.py:1192:66
	s_waitcnt vmcnt(31)
	v_and_b16 v131.l, v147.l, 15
	s_waitcnt vmcnt(30)
	v_and_b16 v132.l, v148.l, 15
	s_waitcnt vmcnt(29)
	v_and_b16 v132.h, v149.l, 15
	s_waitcnt vmcnt(28)
	v_and_b16 v133.l, v150.l, 15
	s_waitcnt vmcnt(27)
	v_and_b16 v133.h, v151.l, 15
	.loc	1 1193 66 is_stmt 1             ; ragged.py:1193:66
	s_waitcnt vmcnt(15)
	v_and_b16 v131.h, v163.l, 15
	s_waitcnt vmcnt(14)
	v_and_b16 v139.h, v164.l, 15
	s_waitcnt vmcnt(13)
	v_and_b16 v140.l, v165.l, 15
	.loc	1 1192 66                       ; ragged.py:1192:66
	v_and_b16 v134.l, v152.l, 15
	v_and_b16 v134.h, v153.l, 15
	v_and_b16 v135.l, v154.l, 15
	v_and_b16 v135.h, v155.l, 15
	v_and_b16 v136.l, v156.l, 15
	v_and_b16 v136.h, v157.l, 15
	v_and_b16 v137.l, v158.l, 15
	v_and_b16 v137.h, v159.l, 15
	v_and_b16 v138.l, v160.l, 15
	v_and_b16 v138.h, v161.l, 15
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(12)
	v_and_b16 v140.h, v166.l, 15
	.loc	1 1192 66                       ; ragged.py:1192:66
	v_and_b16 v139.l, v162.l, 15
	.loc	1 1193 66                       ; ragged.py:1193:66
	s_waitcnt vmcnt(11)
	v_and_b16 v141.l, v167.l, 15
	s_waitcnt vmcnt(10)
	v_and_b16 v141.h, v168.l, 15
	s_waitcnt vmcnt(9)
	v_and_b16 v142.l, v169.l, 15
	s_waitcnt vmcnt(8)
	v_and_b16 v142.h, v170.l, 15
	s_waitcnt vmcnt(7)
	v_and_b16 v143.l, v171.l, 15
	s_waitcnt vmcnt(6)
	v_and_b16 v143.h, v172.l, 15
	s_waitcnt vmcnt(5)
	v_and_b16 v144.l, v173.l, 15
	s_waitcnt vmcnt(4)
	v_and_b16 v144.h, v174.l, 15
	s_waitcnt vmcnt(3)
	v_and_b16 v145.l, v175.l, 15
	s_waitcnt vmcnt(2)
	v_and_b16 v145.h, v176.l, 15
	s_waitcnt vmcnt(1)
	v_and_b16 v146.l, v177.l, 15
	s_waitcnt vmcnt(0)
	v_and_b16 v146.h, v178.l, 15
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v131.l, v147.l, v131.l, s3
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v131.h, v163.l, v131.h, s3
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v132.l, v148.l, v132.l, s27
	v_cndmask_b16 v132.h, v149.l, v132.h, s28
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v139.h, v164.l, v139.h, s27
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v133.l, v150.l, v133.l, s29
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v140.l, v165.l, v140.l, s28
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v133.h, v151.l, v133.h, s30
	v_cndmask_b16 v134.l, v152.l, v134.l, s31
	v_cndmask_b16 v134.h, v153.l, v134.h, s33
	v_cndmask_b16 v135.l, v154.l, v135.l, s34
	v_cndmask_b16 v135.h, v155.l, v135.h, s35
	v_cndmask_b16 v136.l, v156.l, v136.l, s20
	v_cndmask_b16 v136.h, v157.l, v136.h, s21
	v_cndmask_b16 v137.l, v158.l, v137.l, s22
	v_cndmask_b16 v137.h, v159.l, v137.h, s23
	v_cndmask_b16 v138.l, v160.l, v138.l, s24
	v_cndmask_b16 v138.h, v161.l, v138.h, s25
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v140.h, v166.l, v140.h, s29
	.loc	1 1192 38                       ; ragged.py:1192:38
	v_cndmask_b16 v139.l, v162.l, v139.l, s26
	.loc	1 1193 38                       ; ragged.py:1193:38
	v_cndmask_b16 v141.l, v167.l, v141.l, s30
	v_cndmask_b16 v141.h, v168.l, v141.h, s31
	v_cndmask_b16 v142.l, v169.l, v142.l, s33
	v_cndmask_b16 v142.h, v170.l, v142.h, s34
	v_cndmask_b16 v143.l, v171.l, v143.l, s35
	v_cndmask_b16 v143.h, v172.l, v143.h, s20
	v_cndmask_b16 v144.l, v173.l, v144.l, s21
	v_cndmask_b16 v144.h, v174.l, v144.h, s22
	v_cndmask_b16 v145.l, v175.l, v145.l, s23
	v_cndmask_b16 v145.h, v176.l, v145.h, s24
	v_cndmask_b16 v146.l, v177.l, v146.l, s25
	v_cndmask_b16 v146.h, v178.l, v146.h, s26
	.loc	1 1192 38                       ; ragged.py:1192:38
	ds_store_b8 v179, v131
	ds_store_b8 v179, v132 offset:128
	ds_store_b8_d16_hi v179, v132 offset:256
	ds_store_b8 v179, v133 offset:384
	ds_store_b8_d16_hi v179, v133 offset:512
	ds_store_b8 v179, v134 offset:640
	ds_store_b8_d16_hi v179, v134 offset:768
	ds_store_b8_d16_hi v179, v135 offset:1024
	ds_store_b8 v179, v136 offset:1152
	ds_store_b8_d16_hi v179, v136 offset:1280
	ds_store_b8 v179, v137 offset:1408
	ds_store_b8_d16_hi v179, v137 offset:1536
	ds_store_b8 v179, v138 offset:1664
	ds_store_b8 v180, v135
	ds_store_b8_d16_hi v179, v138 offset:1792
	ds_store_b8 v181, v139
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	ds_load_u8 v132, v127 offset:448
	ds_load_u8 v133, v127 offset:384
	ds_load_u8 v134, v127 offset:320
	ds_load_u8 v135, v127 offset:256
	ds_load_u8 v149, v127 offset:480
	ds_load_u8 v150, v127 offset:416
	ds_load_u8 v151, v127 offset:352
	ds_load_u8 v152, v127 offset:288
	ds_load_u8 v136, v127 offset:192
	ds_load_u8 v137, v127 offset:128
	ds_load_u8 v138, v127 offset:64
	ds_load_u8 v153, v127 offset:224
	ds_load_u8 v154, v127 offset:160
	ds_load_u8 v155, v127 offset:96
	ds_load_u8 v147, v127
	ds_load_u8 v156, v127 offset:32
	ds_load_u8 v148, v127 offset:704
	ds_load_u8 v157, v127 offset:640
	ds_load_u8 v158, v127 offset:576
	ds_load_u8 v159, v127 offset:512
	ds_load_u8 v160, v127 offset:736
	ds_load_u8 v161, v127 offset:672
	ds_load_u8 v162, v127 offset:608
	ds_load_u8 v163, v127 offset:544
	ds_load_u8 v164, v127 offset:960
	ds_load_u8 v165, v127 offset:896
	ds_load_u8 v166, v127 offset:832
	ds_load_u8 v167, v127 offset:768
	ds_load_u8 v168, v127 offset:992
	ds_load_u8 v169, v127 offset:928
	ds_load_u8 v170, v127 offset:864
	ds_load_u8 v171, v127 offset:800
	ds_load_u8 v172, v127 offset:1216
	ds_load_u8 v173, v127 offset:1152
	ds_load_u8 v174, v127 offset:1088
	ds_load_u8 v175, v127 offset:1024
	ds_load_u8 v176, v127 offset:1248
	ds_load_u8 v177, v127 offset:1184
	ds_load_u8 v178, v127 offset:1120
	ds_load_u8 v182, v127 offset:1056
	ds_load_u8 v183, v127 offset:1472
	ds_load_u8 v184, v127 offset:1408
	ds_load_u8 v185, v127 offset:1344
	ds_load_u8 v186, v127 offset:1280
	ds_load_u8 v187, v127 offset:1504
	ds_load_u8 v188, v127 offset:1440
	ds_load_u8 v189, v127 offset:1376
	ds_load_u8 v190, v127 offset:1312
	ds_load_u8 v191, v127 offset:1728
	ds_load_u8 v192, v127 offset:1664
	ds_load_u8 v193, v127 offset:1600
	ds_load_u8 v194, v127 offset:1536
	ds_load_u8 v195, v127 offset:1760
	ds_load_u8 v196, v127 offset:1696
	ds_load_u8 v197, v127 offset:1632
	ds_load_u8 v198, v127 offset:1568
	ds_load_u8 v199, v127 offset:1984
	ds_load_u8 v200, v127 offset:1920
	ds_load_u8 v201, v127 offset:1856
	ds_load_u8 v202, v127 offset:1792
	ds_load_u8 v203, v127 offset:2016
	ds_load_u8 v204, v127 offset:1952
	ds_load_u8 v205, v127 offset:1888
	ds_load_u8 v206, v127 offset:1824
	.loc	1 1193 38                       ; ragged.py:1193:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8_d16_hi v179, v131
	ds_store_b8_d16_hi v179, v139 offset:128
	ds_store_b8 v179, v140 offset:256
	ds_store_b8_d16_hi v179, v140 offset:384
	ds_store_b8 v179, v141 offset:512
	ds_store_b8_d16_hi v179, v141 offset:640
	ds_store_b8 v179, v142 offset:768
	ds_store_b8 v179, v143 offset:1024
	ds_store_b8_d16_hi v179, v143 offset:1152
	ds_store_b8 v179, v144 offset:1280
	ds_store_b8_d16_hi v179, v144 offset:1408
	ds_store_b8 v179, v145 offset:1536
	ds_store_b8_d16_hi v179, v145 offset:1664
	ds_store_b8_d16_hi v180, v142
	ds_store_b8 v179, v146 offset:1792
	ds_store_b8_d16_hi v181, v146
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1194 35                       ; ragged.py:1194:35
	v_perm_b32 v134, v135, v134, 0xc0c0004
	ds_load_u8 v135, v128 offset:64
	ds_load_u8 v142, v128
	ds_load_u8 v143, v128 offset:192
	ds_load_u8 v144, v128 offset:128
	ds_load_u8 v131, v128 offset:320
	ds_load_u8 v139, v128 offset:256
	ds_load_u8 v140, v128 offset:448
	ds_load_u8 v141, v128 offset:384
	v_perm_b32 v132, v133, v132, 0xc0c0004
	v_perm_b32 v133, v147, v138, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v145, v128 offset:480
	ds_load_u8 v146, v128 offset:416
	ds_load_u8 v147, v128 offset:352
	ds_load_u8 v179, v128 offset:288
	ds_load_u8 v180, v128 offset:224
	ds_load_u8 v181, v128 offset:160
	ds_load_u8 v207, v128 offset:96
	ds_load_u8 v208, v128 offset:32
	v_lshl_or_b32 v132, v132, 16, v134
	v_perm_b32 v158, v159, v158, 0xc0c0004
	v_perm_b32 v148, v157, v148, 0xc0c0004
	v_perm_b32 v191, v192, v191, 0xc0c0004
	v_perm_b32 v151, v152, v151, 0xc0c0004
	v_perm_b32 v149, v150, v149, 0xc0c0004
	v_perm_b32 v152, v156, v155, 0xc0c0004
	v_perm_b32 v153, v154, v153, 0xc0c0004
	v_perm_b32 v156, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v150, v149, 16, v151
	v_perm_b32 v151, v171, v170, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v137, v139, v131, 0xc0c0004
	v_lshl_or_b32 v131, v136, 16, v133
	v_perm_b32 v133, v142, v135, 0xc0c0004
	v_perm_b32 v135, v144, v143, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v138, v141, v140, 0xc0c0004
	v_perm_b32 v143, v167, v166, 0xc0c0004
	v_perm_b32 v144, v165, v164, 0xc0c0004
	ds_load_u8 v157, v128 offset:992
	ds_load_u8 v159, v128 offset:928
	ds_load_u8 v164, v128 offset:864
	ds_load_u8 v165, v128 offset:800
	v_lshl_or_b32 v133, v135, 16, v133
	ds_load_u8 v135, v128 offset:576
	ds_load_u8 v140, v128 offset:512
	ds_load_u8 v141, v128 offset:704
	ds_load_u8 v142, v128 offset:640
	v_lshl_or_b32 v134, v138, 16, v137
	ds_load_u8 v136, v128 offset:832
	ds_load_u8 v137, v128 offset:768
	ds_load_u8 v138, v128 offset:960
	ds_load_u8 v139, v128 offset:896
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v147, v179, v147, 0xc0c0004
	v_perm_b32 v145, v146, v145, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v179, v208, v207, 0xc0c0004
	v_perm_b32 v180, v181, v180, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[133:134], v[131:132], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v149, v153, 16, v152
	v_lshl_or_b32 v146, v145, 16, v147
	v_perm_b32 v152, v169, v168, 0xc0c0004
	v_lshl_or_b32 v145, v180, 16, v179
	v_perm_b32 v153, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[133:134], v[149:150], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v134, v152, 16, v151
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v157, v159, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[145:146], v[131:132], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v140, v135, 0xc0c0004
	v_lshl_or_b32 v135, v148, 16, v158
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	ds_load_u8 v142, v128 offset:1088
	ds_load_u8 v214, v128 offset:1024
	ds_load_u8 v215, v128 offset:1216
	ds_load_u8 v216, v128 offset:1152
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v128 offset:1344
	ds_load_u8 v166, v128 offset:1280
	ds_load_u8 v167, v128 offset:1472
	ds_load_u8 v209, v128 offset:1408
	ds_load_u8 v210, v128 offset:736
	ds_load_u8 v211, v128 offset:672
	ds_load_u8 v212, v128 offset:608
	ds_load_u8 v213, v128 offset:544
	v_perm_b32 v137, v137, v136, 0xc0c0004
	v_lshl_or_b32 v136, v144, 16, v143
	v_perm_b32 v144, v173, v172, 0xc0c0004
	ds_load_u8 v148, v128 offset:1504
	ds_load_u8 v158, v128 offset:1440
	ds_load_u8 v172, v128 offset:1376
	ds_load_u8 v173, v128 offset:1312
	v_perm_b32 v143, v175, v174, 0xc0c0004
	v_lshl_or_b32 v138, v138, 16, v137
	v_lshl_or_b32 v137, v141, 16, v140
	v_perm_b32 v140, v186, v185, 0xc0c0004
	v_perm_b32 v141, v184, v183, 0xc0c0004
	ds_load_u8 v174, v128 offset:1248
	ds_load_u8 v175, v128 offset:1184
	ds_load_u8 v183, v128 offset:1120
	ds_load_u8 v184, v128 offset:1056
	v_perm_b32 v147, v165, v164, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[135:136], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v133, v156, 16, v153
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v166, v166, v139, 0xc0c0004
	v_lshl_or_b32 v140, v141, 16, v140
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v167, v209, v167, 0xc0c0004
	v_perm_b32 v185, v214, v142, 0xc0c0004
	v_perm_b32 v186, v216, v215, 0xc0c0004
	v_lshl_or_b32 v139, v144, 16, v143
	v_perm_b32 v143, v202, v201, 0xc0c0004
	v_lshl_or_b32 v142, v167, 16, v166
	v_perm_b32 v144, v200, v199, 0xc0c0004
	v_lshl_or_b32 v141, v186, 16, v185
	ds_load_u8 v166, v128 offset:1856
	ds_load_u8 v167, v128 offset:1792
	ds_load_u8 v185, v128 offset:1984
	ds_load_u8 v186, v128 offset:1920
	ds_load_u8 v181, v128 offset:2016
	ds_load_u8 v200, v128 offset:1952
	ds_load_u8 v201, v128 offset:1888
	ds_load_u8 v202, v128 offset:1824
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v159, v213, v212, 0xc0c0004
	v_perm_b32 v164, v211, v210, 0xc0c0004
	v_lshl_or_b32 v144, v144, 16, v143
	v_perm_b32 v143, v194, v193, 0xc0c0004
	ds_load_u8 v192, v128 offset:1600
	ds_load_u8 v193, v128 offset:1536
	ds_load_u8 v194, v128 offset:1728
	ds_load_u8 v199, v128 offset:1664
	v_lshl_or_b32 v132, v157, 16, v147
	v_lshl_or_b32 v131, v164, 16, v159
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v157, v173, v172, 0xc0c0004
	v_perm_b32 v158, v158, v148, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[141:142], v[139:140], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v151, v188, v187, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[135:136], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v135, v184, v183, 0xc0c0004
	v_lshl_or_b32 v136, v158, 16, v157
	v_perm_b32 v157, v175, v174, 0xc0c0004
	v_perm_b32 v153, v182, v178, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v155, v200, v181, 0xc0c0004
	v_perm_b32 v167, v186, v185, 0xc0c0004
	ds_load_u8 v165, v128 offset:1760
	ds_load_u8 v179, v128 offset:1696
	ds_load_u8 v180, v128 offset:1632
	ds_load_u8 v185, v128 offset:1568
	v_lshl_or_b32 v135, v157, 16, v135
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v154, v202, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[145:146], v[149:150], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v186, v193, v192, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v192, v199, v194, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[135:136], v[139:140], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v139, v155, 16, v154
	v_perm_b32 v140, v190, v189, 0xc0c0004
	v_perm_b32 v154, v177, v176, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[137:138], v[133:134], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v137, v206, v205, 0xc0c0004
	v_perm_b32 v145, v198, v197, 0xc0c0004
	v_lshl_or_b32 v152, v151, 16, v140
	v_lshl_or_b32 v151, v154, 16, v153
	v_perm_b32 v140, v204, v203, 0xc0c0004
	v_perm_b32 v146, v196, v195, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[133:134], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v156, v179, v165, 0xc0c0004
	v_lshl_or_b32 v143, v191, 16, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v185, v180, 0xc0c0004
	v_lshl_or_b32 v148, v167, 16, v166
	v_lshl_or_b32 v147, v192, 16, v186
	v_wmma_i32_16x16x16_iu4 v[1:8], v[141:142], v[151:152], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v140, 16, v137
	v_lshl_or_b32 v138, v156, 16, v155
	v_lshl_or_b32 v131, v146, 16, v145
	v_wmma_i32_16x16x16_iu4 v[9:16], v[135:136], v[151:152], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[147:148], v[143:144], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[143:144], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[147:148], v[131:132], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[131:132], v[9:16] neg_lo:[1,1,0]
	s_branch .LBB0_2
.LBB0_8:                                ; %._crit_edge39
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v1, v104, 16, 1
	v_bfe_u32 v6, v94, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_bfe_u32 v3, v100, 16, 1
	v_bfe_u32 v5, v95, 16, 1
	v_add3_u32 v1, v104, v1, 0x7fff
	v_add3_u32 v6, v94, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v94, v94
	v_bfe_u32 v10, v89, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_add3_u32 v3, v100, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_add3_u32 v5, v95, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v95, v95
	v_bfe_u32 v8, v91, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_bfe_u32 v9, v90, 16, 1
	v_add3_u32 v10, v89, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_bfe_u32 v14, v70, 16, 1
	v_mov_b16_e32 v4.l, v64.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_add3_u32 v8, v91, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_add3_u32 v9, v90, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v90, v90
	v_bfe_u32 v12, v76, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_bfe_u32 v13, v71, 16, 1
	v_add3_u32 v14, v70, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v70, v70
	v_mov_b16_e32 v19.h, v4.h
	v_and_b32_e32 v4, 1, v4
	v_bfe_u32 v7, v93, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_add3_u32 v12, v76, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v76, v76
	v_add3_u32 v13, v71, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v71, v71
	v_bfe_u32 v16, v67, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_bfe_u32 v17, v66, 16, 1
	v_mov_b16_e32 v19.l, v61.h
	v_add3_u32 v4, v64, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v64, v64
	v_bfe_u32 v21, v63, 16, 1
	v_add3_u32 v7, v93, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v93, v93
	v_bfe_u32 v11, v88, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v16, v67, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v17, v66, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v66, v66
	v_and_b32_e32 v19, 1, v19
	v_cndmask_b16 v20.h, 0x7fff, v4.h, s1
	v_add3_u32 v21, v63, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v11, v88, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v88, v88
	v_bfe_u32 v15, v68, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_add3_u32 v17, v61, v19, 0x7fff
	v_bfe_u32 v19, v65, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v58, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_add3_u32 v15, v68, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v68, v68
	v_bfe_u32 v22, v62, 16, 1
	v_add3_u32 v19, v65, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v65, v65
	v_cndmask_b16 v20.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v60, 16, 1
	v_add3_u32 v21, v58, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v58, v58
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v22, v62, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v62, v62
	v_cndmask_b16 v1.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v59, 16, 1
	v_add3_u32 v17, v60, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v60, v60
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v54, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v57, 16, 1
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v18, 31, v0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v19, v59, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v59, v59
	v_cndmask_b16 v6.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v56, 16, 1
	v_add3_u32 v21, v54, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v54, v54
	v_add3_u32 v22, v57, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v57, v57
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v55, 16, 1
	v_add3_u32 v17, v56, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_cndmask_b16 v12.h, 0x7fff, v21.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v21, 2, v18
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v9.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v53, 16, 1
	v_add3_u32 v19, v55, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v55, v55
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v52, 16, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v21, v47, 8, v21
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v22, v53, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v53, v53
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v51, 16, 1
	v_add3_u32 v17, v52, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v52, v52
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v21, v21, v49
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v13.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v50, 16, 1
	v_add3_u32 v19, v51, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v51, v51
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v17, v48, 1, v21
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v23, v45, 16, 1
	v_add3_u32 v22, v50, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v50, v50
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v23, v45, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v45, v45
	v_cndmask_b16 v4.h, 0x7fff, v22.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v21, v17, 4, 0
	v_xad_u32 v22, v17, 8, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v29, 0x1044, v17, 0
	ds_store_b32 v19, v20
	ds_store_b32 v26, v10
	v_xad_u32 v10, 0x1048, v17, 0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v16.h, 0x7fff, v23.h, s2
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xad_u32 v23, v17, 12, 0
	ds_store_b32 v21, v1
	ds_store_b32 v29, v11
	ds_store_b32 v22, v3
	ds_store_b32 v10, v12
	v_lshlrev_b32_e32 v3, 2, v47
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	v_xad_u32 v24, v17, 16, 0
	v_xad_u32 v25, v17, 20, 0
	v_xad_u32 v10, 0x1050, v17, 0
	v_xor_b32_e32 v1, v2, v1
	v_cndmask_b32_e64 v5, 0x1040, 0, vcc_lo
	v_xad_u32 v3, 0x1054, v17, 0
	v_xad_u32 v27, v17, 24, 0
	v_xad_u32 v2, 0x1058, v17, 0
	v_xad_u32 v28, v17, 28, 0
	v_or_b32_e32 v1, v1, v5
	ds_store_b32 v24, v6
	ds_store_b32 v10, v14
	ds_store_b32 v25, v7
	ds_store_b32 v3, v15
	v_xad_u32 v3, 0x105c, v17, 0
	ds_store_b32 v27, v8
	ds_store_b32 v2, v4
	ds_store_b32 v28, v9
	ds_store_b32 v3, v16
	v_add_nc_u32_e32 v2, 0, v1
	v_xad_u32 v3, v1, 64, 0
	v_xad_u32 v4, 0x410, v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[13:14], v2 offset1:32
	ds_load_2addr_b32 v[15:16], v3 offset1:32
	ds_load_2addr_b32 v[9:10], v4 offset1:32
	v_xad_u32 v2, 0x450, v1, 0
	v_xad_u32 v3, 0x820, v1, 0
	v_xad_u32 v4, 0x860, v1, 0
	v_xad_u32 v17, 0xc30, v1, 0
	v_xad_u32 v19, 0xc70, v1, 0
	ds_load_2addr_b32 v[11:12], v2 offset1:32
	ds_load_2addr_b32 v[5:6], v3 offset1:32
	ds_load_2addr_b32 v[7:8], v4 offset1:32
	ds_load_2addr_b32 v[1:2], v17 offset1:32
	ds_load_2addr_b32 v[3:4], v19 offset1:32
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v0, 5, v0
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_lshr_b32 s0, s61, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s61, s0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s63, v0
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v0, s62, 5, v18
	.loc	1 1232 37                       ; ragged.py:1232:37
	s_ashr_i32 s1, s0, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v17
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
	v_add_nc_u32_e32 v18, s44, v17
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v13, v15, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_12
; %bb.11:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v9, v11, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
.LBB0_12:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 8, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_14
; %bb.13:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v5, v7, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_16
; %bb.15:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
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
.LBB0_16:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 16, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_18
; %bb.17:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v20, v14, v16, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_20
; %bb.19:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v20, v10, v12, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
.LBB0_20:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 24, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_22
; %bb.21:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v20, v6, v8, 0x1000504
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v18, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_24
; %bb.23:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
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
	v_or_b32_e32 v18, 32, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_26
; %bb.25:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s44, v18
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v13, v13, v15, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
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
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v13
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_28
; %bb.27:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v13, s44, v13
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v9, v9, v11, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
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
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_30
; %bb.29:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s44, v9
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v5, v5, v7, 0x3020706
	.loc	1 1232 21                       ; ragged.py:1232:21
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[18:19], null, v9, s1, v[0:1]
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v5, off
.LBB0_30:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v5
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_32
; %bb.31:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v5, s44, v5
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v5, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v1, v1, v3, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v1, off
.LBB0_32:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_34
; %bb.33:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s46, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s47, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v1, off
.LBB0_34:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_36
; %bb.35:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s44, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s46, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s47, v14, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v1, off
.LBB0_36:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_38
; %bb.37:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s44, v1
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
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s60, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_40
; %bb.39:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s44, v1
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
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 217
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 217
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14512
; TotalNumSgprs: 71
; NumVgprs: 217
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 27
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 217
; Occupancy: 6
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_maskk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     217
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
