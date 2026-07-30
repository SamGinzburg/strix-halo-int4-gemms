	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x20
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v85, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
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
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v87, 0
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s6, s4
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v89, 0
	.loc	1 998 20                        ; ragged.py:998:20
	s_abs_i32 s5, s4
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v97, 0
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s8, 0, s5
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v107, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_and_b32 v65, 15, v0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v66, 64, v0
	v_and_b32_e32 v64, 16, v0
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v67, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 998 20                        ; ragged.py:998:20
	v_readfirstlane_b32 s7, v1
	s_mov_b32 s45, 0
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
	s_sub_i32 s36, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s36, s4
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
	s_ashr_i32 s37, s36, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[4:5], s[36:37], 2
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s44, s7, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s33, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_add_u32 s4, s20, s4
	s_addc_u32 s5, s21, s5
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s21, s36, s34
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s37, s[4:5], 0x0
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s37, s37, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lt_i32 s37, 2
	s_cbranch_scc1 .LBB0_7
; %bb.1:                                ; %.preheader.lr.ph
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 4, v64
	v_lshrrev_b32_e32 v4, 1, v67
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v1, 63, v0
	s_load_b64 s[40:41], s[0:1], 0x38
	.loc	1 1004 18                       ; ragged.py:1004:18
	s_lshl_b32 s2, s33, 6
	s_load_b256 s[24:31], s[0:1], 0x0
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 2, v66
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or3_b32 v90, v3, v4, s2
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v3, s44, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s2, v1
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v2, v2, v65
	s_mul_i32 s42, s35, 6
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v3, 6, v66
	s_mul_i32 s49, s35, 10
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_or_b32_e32 v5, 32, v2
	.loc	1 1003 18 is_stmt 0             ; ragged.py:1003:18
	v_or_b32_e32 v6, s44, v2
	s_mul_i32 s50, s35, 12
	v_mad_u64_u32 v[33:34], null, s34, v3, v[1:2]
	v_mul_lo_u32 v1, s35, v3
	v_or_b32_e32 v7, s44, v5
	.loc	1 1123 43 is_stmt 1             ; ragged.py:1123:43
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s46, s36, s40
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s40, s37, 1
	s_cmpk_lt_i32 s3, 0x80
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s47, s36, s41
	v_mad_u64_u32 v[35:36], null, s34, 6, v[33:34]
	s_cselect_b32 s48, -1, 0
	v_mad_u64_u32 v[36:37], null, s34, 10, v[33:34]
	s_mov_b32 s36, s24
	s_lshl_b32 s24, s35, 1
	v_mad_u64_u32 v[37:38], null, s34, 12, v[33:34]
	v_mad_u64_u32 v[38:39], null, s34, 14, v[33:34]
	v_add3_u32 v120, v1, s24, v8
	s_mov_b32 s24, s26
	s_add_i32 s26, s44, s21
	v_mad_u64_u32 v[39:40], null, s34, 18, v[33:34]
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v3, s26, v2
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v5, s26, v5
	v_mad_u64_u32 v[40:41], null, s34, 20, v[33:34]
	s_and_b32 s37, s25, 0xffff
	s_lshl_b32 s25, s35, 2
	s_lshl_b32 s43, s35, 3
	s_mul_i32 s51, s35, 14
	s_lshl_b32 s52, s35, 4
	s_mul_i32 s53, s35, 18
	s_mul_i32 s54, s35, 20
	s_mul_i32 s55, s35, 22
	s_mul_i32 s56, s35, 24
	s_mul_i32 s57, s35, 26
	s_mul_i32 s58, s35, 28
	s_mul_i32 s59, s35, 30
	v_mad_u64_u32 v[41:42], null, s34, 22, v[33:34]
	v_mad_u64_u32 v[42:43], null, s34, 24, v[33:34]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v91, 2, v90
	v_or_b32_e32 v92, 4, v90
	v_or_b32_e32 v93, 6, v90
	v_or_b32_e32 v95, 8, v90
	v_or_b32_e32 v96, 10, v90
	v_or_b32_e32 v98, 12, v90
	v_or_b32_e32 v99, 14, v90
	v_or_b32_e32 v101, 32, v90
	v_or_b32_e32 v102, 34, v90
	v_or_b32_e32 v103, 36, v90
	v_or_b32_e32 v104, 38, v90
	v_or_b32_e32 v105, 40, v90
	v_or_b32_e32 v106, 42, v90
	v_or_b32_e32 v108, 44, v90
	v_or_b32_e32 v109, 46, v90
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s34, v6
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v119, v8, v1
	v_add3_u32 v121, v1, s25, v8
	v_add3_u32 v122, v1, s42, v8
	v_add3_u32 v123, v1, s43, v8
	v_add3_u32 v124, v1, s49, v8
	v_add3_u32 v125, v1, s50, v8
	v_add3_u32 v126, v1, s51, v8
	v_add3_u32 v127, v1, s52, v8
	v_add3_u32 v128, v1, s53, v8
	v_add3_u32 v129, v1, s54, v8
	v_add3_u32 v130, v1, s55, v8
	v_add3_u32 v131, v1, s56, v8
	v_add3_u32 v132, v1, s57, v8
	v_add3_u32 v133, v1, s58, v8
	v_add3_u32 v134, v1, s59, v8
	v_or_b32_e32 v1, 0x380, v0
	v_or_b32_e32 v6, 0x780, v0
	v_mad_u64_u32 v[43:44], null, s34, 26, v[33:34]
	v_mad_u64_u32 v[44:45], null, s34, 28, v[33:34]
	v_mul_lo_u32 v137, v3, s41
	v_mul_lo_u32 v138, v5, s41
	v_mad_u64_u32 v[45:46], null, s34, 30, v[33:34]
	v_cmp_gt_i32_e64 s2, s34, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s20, s35, v90
	v_cmp_gt_i32_e64 s4, s35, v91
	v_cmp_gt_i32_e64 s5, s35, v92
	v_cmp_gt_i32_e64 s6, s35, v93
	v_cmp_gt_i32_e64 s7, s35, v95
	v_cmp_gt_i32_e64 s8, s35, v96
	v_cmp_gt_i32_e64 s9, s35, v98
	v_cmp_gt_i32_e64 s10, s35, v99
	v_cmp_gt_i32_e64 s11, s35, v101
	v_cmp_gt_i32_e64 s12, s35, v102
	v_cmp_gt_i32_e64 s13, s35, v103
	v_cmp_gt_i32_e64 s14, s35, v104
	v_cmp_gt_i32_e64 s15, s35, v105
	v_cmp_gt_i32_e64 s16, s35, v106
	v_cmp_gt_i32_e64 s17, s35, v108
	v_cmp_gt_i32_e64 s18, s35, v109
	v_cmp_gt_i32_e64 s19, s35, v8
	v_lshl_add_u32 v115, s34, 1, v33
	v_lshl_add_u32 v116, s34, 2, v33
	v_lshl_add_u32 v117, s34, 3, v33
	v_lshl_add_u32 v118, s34, 4, v33
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v135, 0, v2
	v_add3_u32 v136, 0, v4, v65
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v139, 0, v0
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v140, 0, v1
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v141, 0, v6
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v34, 0
	v_mov_b32_e32 v71, 0
	v_mov_b32_e32 v69, 0
	v_mov_b32_e32 v79, 0
	v_mov_b32_e32 v81, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s26, s40, -1
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_and_b32 s25, s27, 0xffff
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	s_lshr_b32 s49, s26, 7
	s_mov_b32 s26, 0
	s_branch .LBB0_3
.LBB0_2:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v14, v137, s45, 1
	v_add_lshl_u32 v15, v138, s45, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s45, s47
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s30, s38
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v14, 0x80000000, v14, s1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v16, v90, s26, 1
	v_add_lshl_u32 v24, v101, s26, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v15, 0x80000000, v15, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v17, v91, s26, 1
	v_add_lshl_u32 v31, v102, s26, 1
	v_add_lshl_u32 v18, v92, s26, 1
	v_add_lshl_u32 v32, v103, s26, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_mov_b32 s31, s39
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v93, s26, 1
	v_add_lshl_u32 v59, v104, s26, 1
	v_add_lshl_u32 v20, v95, s26, 1
	v_add_lshl_u32 v21, v96, s26, 1
	v_add_lshl_u32 v22, v98, s26, 1
	v_add_lshl_u32 v23, v99, s26, 1
	v_add_lshl_u32 v60, v105, s26, 1
	v_add_lshl_u32 v61, v106, s26, 1
	v_add_lshl_u32 v62, v108, s26, 1
	v_add_lshl_u32 v63, v109, s26, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v14, v14, s[28:31], 0 offen
	buffer_load_u16 v15, v15, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v16, 0x80000000, v16, s20
	v_cndmask_b32_e64 v24, 0x80000000, v24, s11
	v_cndmask_b32_e64 v17, 0x80000000, v17, s4
	v_cndmask_b32_e64 v31, 0x80000000, v31, s12
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	v_cndmask_b32_e64 v32, 0x80000000, v32, s13
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	v_cndmask_b32_e64 v59, 0x80000000, v59, s14
	v_cndmask_b32_e64 v20, 0x80000000, v20, s7
	v_cndmask_b32_e64 v21, 0x80000000, v21, s8
	v_cndmask_b32_e64 v22, 0x80000000, v22, s9
	v_cndmask_b32_e64 v23, 0x80000000, v23, s10
	v_cndmask_b32_e64 v60, 0x80000000, v60, s15
	v_cndmask_b32_e64 v61, 0x80000000, v61, s16
	v_cndmask_b32_e64 v62, 0x80000000, v62, s17
	v_cndmask_b32_e64 v63, 0x80000000, v63, s18
	s_clause 0xf
	buffer_load_u16 v16, v16, s[40:43], 0 offen
	buffer_load_u16 v17, v17, s[40:43], 0 offen
	buffer_load_u16 v18, v18, s[40:43], 0 offen
	buffer_load_u16 v19, v19, s[40:43], 0 offen
	buffer_load_u16 v20, v20, s[40:43], 0 offen
	buffer_load_u16 v21, v21, s[40:43], 0 offen
	buffer_load_u16 v22, v22, s[40:43], 0 offen
	buffer_load_u16 v23, v23, s[40:43], 0 offen
	buffer_load_u16 v24, v24, s[40:43], 0 offen
	buffer_load_u16 v31, v31, s[40:43], 0 offen
	buffer_load_u16 v32, v32, s[40:43], 0 offen
	buffer_load_u16 v59, v59, s[40:43], 0 offen
	buffer_load_u16 v60, v60, s[40:43], 0 offen
	buffer_load_u16 v61, v61, s[40:43], 0 offen
	buffer_load_u16 v62, v62, s[40:43], 0 offen
	buffer_load_u16 v63, v63, s[40:43], 0 offen
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s27, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s26, s27, 7
	s_cmp_lg_u32 s45, s49
	s_mov_b32 s45, s27
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v14, 16, v14
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(16)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v58, v58, v14 :: v_dual_lshlrev_b32 v15, 16, v15
	v_mul_f32_e32 v2, v2, v15
	v_mul_f32_e32 v27, v27, v15
	v_mul_f32_e32 v57, v57, v14
	v_mul_f32_e32 v56, v56, v14
	v_mul_f32_e32 v55, v55, v14
	v_mul_f32_e32 v54, v54, v14
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v53, v53, v14 :: v_dual_lshlrev_b32 v16, 16, v16
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v25, v25, v15 :: v_dual_lshlrev_b32 v18, 16, v18
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v19, 16, v19
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v52, v52, v14 :: v_dual_lshlrev_b32 v21, 16, v21
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v13, v13, v15 :: v_dual_lshlrev_b32 v22, 16, v22
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v50, v50, v14 :: v_dual_lshlrev_b32 v23, 16, v23
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v48, v48, v14 :: v_dual_lshlrev_b32 v31, 16, v31
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v51, v51, v14 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v46, v46, v14 :: v_dual_lshlrev_b32 v59, 16, v59
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v49, v49, v14 :: v_dual_lshlrev_b32 v60, 16, v60
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v30, v30, v14 :: v_dual_lshlrev_b32 v61, 16, v61
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v11, v11, v15 :: v_dual_lshlrev_b32 v62, 16, v62
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v114, v58, v17 :: v_dual_lshlrev_b32 v63, 16, v63
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v47, v47, v14
	v_mul_f32_e32 v29, v29, v14
	v_dual_mul_f32 v1, v1, v14 :: v_dual_mul_f32 v26, v26, v15
	v_mul_f32_e32 v14, v28, v15
	v_dual_mul_f32 v12, v12, v15 :: v_dual_fmac_f32 v113, v57, v18
	v_dual_mul_f32 v10, v10, v15 :: v_dual_fmac_f32 v111, v55, v20
	v_dual_mul_f32 v9, v9, v15 :: v_dual_fmac_f32 v110, v54, v21
	v_dual_mul_f32 v8, v8, v15 :: v_dual_fmac_f32 v107, v53, v22
	v_dual_mul_f32 v7, v7, v15 :: v_dual_fmac_f32 v86, v46, v61
	v_dual_mul_f32 v6, v6, v15 :: v_dual_fmac_f32 v97, v51, v24
	v_dual_mul_f32 v5, v5, v15 :: v_dual_fmac_f32 v82, v27, v18
	v_dual_mul_f32 v4, v4, v15 :: v_dual_fmac_f32 v89, v49, v32
	v_dual_mul_f32 v3, v3, v15 :: v_dual_fmac_f32 v78, v25, v20
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v112, v56, v19 :: v_dual_fmac_f32 v87, v47, v60
	v_dual_fmac_f32 v100, v52, v23 :: v_dual_fmac_f32 v85, v30, v62
	v_dual_fmac_f32 v94, v50, v31 :: v_dual_fmac_f32 v79, v1, v16
	v_dual_fmac_f32 v88, v48, v59 :: v_dual_fmac_f32 v81, v2, v16
	v_dual_fmac_f32 v84, v29, v63 :: v_dual_fmac_f32 v83, v14, v17
	v_dual_fmac_f32 v80, v26, v19 :: v_dual_fmac_f32 v77, v13, v21
	v_dual_fmac_f32 v76, v12, v22 :: v_dual_fmac_f32 v75, v11, v23
	v_dual_fmac_f32 v74, v10, v24 :: v_dual_fmac_f32 v73, v9, v31
	v_dual_fmac_f32 v72, v8, v32 :: v_dual_fmac_f32 v71, v7, v59
	v_dual_fmac_f32 v70, v6, v60 :: v_dual_fmac_f32 v69, v5, v61
	v_fmac_f32_e32 v68, v4, v62
	v_fmac_f32_e32 v34, v3, v63
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_7
.LBB0_3:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v58, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_not1_b32 vcc_lo, exec_lo, s48
	s_cbranch_vccnz .LBB0_2
; %bb.4:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_add_i32 s30, s26, s46
	s_mov_b32 s31, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v9, v1
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
.LBB0_5:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1130 46 is_stmt 1             ; ragged.py:1130:46
	s_add_i32 s26, s30, s31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s27, s26, s34
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_mul_i32 s26, s26, s35
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s27, s27, s44
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v142, s26, v121
	v_add_nc_u32_e32 v46, s27, v33
	v_add_nc_u32_e32 v47, s27, v115
	v_add_nc_u32_e32 v48, s27, v116
	v_add_nc_u32_e32 v49, s27, v35
	v_add_nc_u32_e32 v50, s27, v117
	v_add_nc_u32_e32 v51, s27, v36
	v_add_nc_u32_e32 v52, s27, v37
	v_add_nc_u32_e32 v54, s27, v38
	v_add_nc_u32_e32 v57, s27, v39
	v_add_nc_u32_e32 v59, s27, v41
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v46, 0x80000000, v46, s0
	v_cndmask_b32_e64 v47, 0x80000000, v47, s0
	v_cndmask_b32_e64 v48, 0x80000000, v48, s0
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	v_cndmask_b32_e64 v51, 0x80000000, v51, s0
	v_cndmask_b32_e64 v52, 0x80000000, v52, s0
	v_add_nc_u32_e32 v56, s27, v118
	v_add_nc_u32_e32 v58, s27, v40
	v_add_nc_u32_e32 v60, s27, v42
	v_add_nc_u32_e32 v63, s27, v45
	s_clause 0x6
	buffer_load_u8 v46, v46, s[36:39], 0 offen
	buffer_load_u8 v47, v47, s[36:39], 0 offen
	buffer_load_u8 v48, v48, s[36:39], 0 offen
	buffer_load_u8 v49, v49, s[36:39], 0 offen
	buffer_load_u8 v50, v50, s[36:39], 0 offen
	buffer_load_u8 v51, v51, s[36:39], 0 offen
	buffer_load_u8 v53, v52, s[36:39], 0 offen
	v_cndmask_b32_e64 v52, 0x80000000, v54, s0
	v_cndmask_b32_e64 v54, 0x80000000, v57, s0
	v_cndmask_b32_e64 v57, 0x80000000, v59, s0
	v_add_nc_u32_e32 v61, s27, v43
	v_add_nc_u32_e32 v62, s27, v44
	s_clause 0x2
	buffer_load_u8 v55, v52, s[36:39], 0 offen
	buffer_load_u8 v54, v54, s[36:39], 0 offen
	buffer_load_u8 v57, v57, s[36:39], 0 offen
	v_cndmask_b32_e64 v52, 0x80000000, v56, s0
	v_cndmask_b32_e64 v56, 0x80000000, v58, s0
	v_cndmask_b32_e64 v58, 0x80000000, v60, s0
	v_cndmask_b32_e64 v60, 0x80000000, v63, s0
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v63, s26, v120
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0x3
	buffer_load_u8 v52, v52, s[36:39], 0 offen
	buffer_load_u8 v56, v56, s[36:39], 0 offen
	buffer_load_u8 v59, v58, s[36:39], 0 offen
	buffer_load_u8 v60, v60, s[36:39], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v61, s0
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v143, s26, v122
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	v_cndmask_b32_e64 v63, 0x80000000, v63, s19
	v_cndmask_b32_e64 v142, 0x80000000, v142, s19
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v144, s26, v123
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	buffer_load_u8 v61, v58, s[36:39], 0 offen
	v_cndmask_b32_e64 v58, 0x80000000, v62, s0
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v62, s26, v119
	v_add_nc_u32_e32 v145, s26, v124
	v_add_nc_u32_e32 v146, s26, v125
	v_add_nc_u32_e32 v147, s26, v126
	v_add_nc_u32_e32 v148, s26, v127
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	v_cndmask_b32_e64 v62, 0x80000000, v62, s19
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v149, s26, v128
	v_add_nc_u32_e32 v150, s26, v129
	v_add_nc_u32_e32 v151, s26, v130
	v_add_nc_u32_e32 v152, s26, v131
	v_add_nc_u32_e32 v153, s26, v132
	v_add_nc_u32_e32 v154, s26, v133
	v_add_nc_u32_e32 v155, s26, v134
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s26, s38
	s_mov_b32 s27, s39
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	buffer_load_u8 v58, v58, s[36:39], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0x2
	buffer_load_u8 v62, v62, s[24:27], 0 offen
	buffer_load_u8 v63, v63, s[24:27], 0 offen
	buffer_load_u8 v174, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v143, s19
	buffer_load_u8 v175, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v144, s19
	buffer_load_u8 v176, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v145, s19
	buffer_load_u8 v177, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v146, s19
	buffer_load_u8 v178, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v147, s19
	buffer_load_u8 v179, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v148, s19
	buffer_load_u8 v180, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v149, s19
	buffer_load_u8 v181, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v150, s19
	buffer_load_u8 v182, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v151, s19
	buffer_load_u8 v183, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v152, s19
	buffer_load_u8 v184, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v153, s19
	buffer_load_u8 v185, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v154, s19
	buffer_load_u8 v186, v142, s[24:27], 0 offen
	v_cndmask_b32_e64 v142, 0x80000000, v155, s19
	buffer_load_u8 v187, v142, s[24:27], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s26, s31, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmpk_lt_i32 s31, 0x60
	s_mov_b32 s31, s26
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(31)
	ds_store_b8 v139, v46
	s_waitcnt vmcnt(30)
	ds_store_b8 v139, v47 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b8 v139, v48 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b8 v139, v49 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b8 v139, v50 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b8 v139, v51 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b8 v139, v53 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b8 v140, v55
	s_waitcnt vmcnt(21)
	ds_store_b8 v139, v52 offset:1024
	ds_store_b8 v139, v54 offset:1152
	s_waitcnt vmcnt(20)
	ds_store_b8 v139, v56 offset:1280
	ds_store_b8 v139, v57 offset:1408
	s_waitcnt vmcnt(19)
	ds_store_b8 v139, v59 offset:1536
	s_waitcnt vmcnt(17)
	ds_store_b8 v139, v61 offset:1664
	s_waitcnt vmcnt(16)
	ds_store_b8 v139, v58 offset:1792
	ds_store_b8 v141, v60
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v46, v135 offset:192
	ds_load_u8 v47, v135 offset:128
	ds_load_u8 v48, v135 offset:64
	ds_load_u8 v49, v135 offset:448
	ds_load_u8 v50, v135 offset:384
	ds_load_u8 v51, v135 offset:320
	ds_load_u8 v52, v135 offset:256
	ds_load_u8 v53, v135 offset:704
	ds_load_u8 v54, v135 offset:640
	ds_load_u8 v55, v135 offset:576
	ds_load_u8 v56, v135 offset:512
	ds_load_u8 v57, v135 offset:960
	ds_load_u8 v60, v135 offset:896
	ds_load_u8 v61, v135 offset:832
	ds_load_u8 v188, v135 offset:768
	ds_load_u8 v189, v135 offset:1216
	ds_load_u8 v190, v135 offset:1152
	ds_load_u8 v191, v135 offset:1088
	ds_load_u8 v192, v135 offset:1024
	ds_load_u8 v193, v135 offset:1472
	ds_load_u8 v194, v135 offset:1408
	ds_load_u8 v195, v135 offset:1344
	ds_load_u8 v196, v135 offset:1280
	ds_load_u8 v197, v135 offset:1728
	ds_load_u8 v198, v135 offset:1664
	ds_load_u8 v199, v135 offset:1600
	ds_load_u8 v200, v135 offset:1536
	ds_load_u8 v201, v135 offset:1984
	ds_load_u8 v202, v135 offset:1920
	ds_load_u8 v203, v135 offset:1856
	ds_load_u8 v204, v135 offset:1792
	ds_load_u8 v142, v135 offset:224
	ds_load_u8 v143, v135 offset:160
	ds_load_u8 v144, v135 offset:96
	ds_load_u8 v145, v135 offset:480
	ds_load_u8 v146, v135 offset:416
	ds_load_u8 v147, v135 offset:352
	ds_load_u8 v148, v135 offset:288
	ds_load_u8 v58, v135
	ds_load_u8 v153, v135 offset:32
	ds_load_u8 v149, v135 offset:736
	ds_load_u8 v150, v135 offset:672
	ds_load_u8 v151, v135 offset:608
	ds_load_u8 v152, v135 offset:544
	ds_load_u8 v162, v135 offset:992
	ds_load_u8 v163, v135 offset:928
	ds_load_u8 v164, v135 offset:864
	ds_load_u8 v165, v135 offset:800
	ds_load_u8 v154, v135 offset:1248
	ds_load_u8 v155, v135 offset:1184
	ds_load_u8 v157, v135 offset:1120
	ds_load_u8 v159, v135 offset:1056
	ds_load_u8 v166, v135 offset:1504
	ds_load_u8 v167, v135 offset:1440
	ds_load_u8 v169, v135 offset:1376
	ds_load_u8 v171, v135 offset:1312
	ds_load_u8 v156, v135 offset:1760
	ds_load_u8 v158, v135 offset:1696
	ds_load_u8 v160, v135 offset:1632
	ds_load_u8 v161, v135 offset:1568
	ds_load_u8 v168, v135 offset:2016
	ds_load_u8 v170, v135 offset:1952
	ds_load_u8 v172, v135 offset:1888
	ds_load_u8 v173, v135 offset:1824
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v48, v58, v48, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	v_perm_b32 v51, v52, v51, 0xc0c0004
	v_perm_b32 v49, v50, v49, 0xc0c0004
	v_lshl_or_b32 v58, v46, 16, v48
	v_perm_b32 v142, v143, v142, 0xc0c0004
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt vmcnt(15)
	ds_store_b8 v139, v62
	s_waitcnt vmcnt(14)
	ds_store_b8 v139, v63 offset:128
	s_waitcnt vmcnt(13)
	ds_store_b8 v139, v174 offset:256
	s_waitcnt vmcnt(12)
	ds_store_b8 v139, v175 offset:384
	s_waitcnt vmcnt(11)
	ds_store_b8 v139, v176 offset:512
	s_waitcnt vmcnt(10)
	ds_store_b8 v139, v177 offset:640
	s_waitcnt vmcnt(9)
	ds_store_b8 v139, v178 offset:768
	s_waitcnt vmcnt(8)
	ds_store_b8 v140, v179
	s_waitcnt vmcnt(7)
	ds_store_b8 v139, v180 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v139, v181 offset:1152
	s_waitcnt vmcnt(5)
	ds_store_b8 v139, v182 offset:1280
	s_waitcnt vmcnt(4)
	ds_store_b8 v139, v183 offset:1408
	s_waitcnt vmcnt(3)
	ds_store_b8 v139, v184 offset:1536
	s_waitcnt vmcnt(2)
	ds_store_b8 v139, v185 offset:1664
	s_waitcnt vmcnt(1)
	ds_store_b8 v139, v186 offset:1792
	s_waitcnt vmcnt(0)
	ds_store_b8 v141, v187
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v46, v136 offset:320
	ds_load_u8 v47, v136 offset:256
	v_lshl_or_b32 v59, v49, 16, v51
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:448
	ds_load_u8 v48, v136 offset:384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v47, 16, v46
	ds_load_u8 v46, v136 offset:64
	ds_load_u8 v47, v136
	ds_load_u8 v174, v136 offset:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:192
	ds_load_u8 v48, v136 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v48, v47, 16, v46
	v_perm_b32 v46, v188, v61, 0xc0c0004
	v_perm_b32 v47, v60, v57, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[58:59], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v63, v47, 16, v46
	v_perm_b32 v46, v56, v55, 0xc0c0004
	v_perm_b32 v47, v54, v53, 0xc0c0004
	v_lshl_or_b32 v62, v47, 16, v46
	ds_load_u8 v46, v136 offset:832
	ds_load_u8 v47, v136 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:960
	ds_load_u8 v50, v136 offset:896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v47, 16, v46
	ds_load_u8 v46, v136 offset:576
	ds_load_u8 v47, v136 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:704
	ds_load_u8 v50, v136 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v54, v47, 16, v46
	v_perm_b32 v46, v196, v195, 0xc0c0004
	v_perm_b32 v47, v194, v193, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[54:55], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v47, 16, v46
	v_perm_b32 v46, v192, v191, 0xc0c0004
	v_perm_b32 v47, v190, v189, 0xc0c0004
	v_lshl_or_b32 v60, v47, 16, v46
	ds_load_u8 v46, v136 offset:1344
	ds_load_u8 v47, v136 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:1472
	ds_load_u8 v50, v136 offset:1408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v47, 16, v46
	ds_load_u8 v46, v136 offset:1088
	ds_load_u8 v47, v136 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:1216
	ds_load_u8 v50, v136 offset:1152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v52, v47, 16, v46
	v_perm_b32 v46, v204, v203, 0xc0c0004
	v_perm_b32 v47, v202, v201, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[52:53], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v47, 16, v46
	v_perm_b32 v46, v200, v199, 0xc0c0004
	v_perm_b32 v47, v198, v197, 0xc0c0004
	v_lshl_or_b32 v56, v47, 16, v46
	ds_load_u8 v46, v136 offset:1856
	ds_load_u8 v47, v136 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:1984
	ds_load_u8 v50, v136 offset:1920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v47, 16, v46
	ds_load_u8 v46, v136 offset:1600
	ds_load_u8 v47, v136 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:1728
	ds_load_u8 v50, v136 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v50, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v47, 16, v46
	ds_load_u8 v46, v136 offset:352
	ds_load_u8 v47, v136 offset:288
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	ds_load_u8 v47, v136 offset:480
	ds_load_u8 v175, v136 offset:416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v175, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v47, 16, v46
	ds_load_u8 v46, v136 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v174, v46, 0xc0c0004
	ds_load_u8 v174, v136 offset:224
	ds_load_u8 v175, v136 offset:160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v46, v174, 16, v46
	v_wmma_i32_16x16x16_iu4 v[25:32], v[46:47], v[58:59], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v58, v136 offset:864
	ds_load_u8 v59, v136 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v136 offset:992
	ds_load_u8 v174, v136 offset:928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v174, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v136 offset:608
	ds_load_u8 v174, v136 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v174, v58, 0xc0c0004
	ds_load_u8 v174, v136 offset:736
	ds_load_u8 v175, v136 offset:672
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v174, 16, v58
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[62:63], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v62, v136 offset:1376
	ds_load_u8 v63, v136 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v136 offset:1504
	ds_load_u8 v174, v136 offset:1440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v174, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v136 offset:1120
	ds_load_u8 v174, v136 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v174, v62, 0xc0c0004
	ds_load_u8 v174, v136 offset:1248
	ds_load_u8 v175, v136 offset:1184
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v174, 16, v62
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[60:61], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v60, v136 offset:1888
	ds_load_u8 v61, v136 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v136 offset:2016
	ds_load_u8 v174, v136 offset:1952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v174, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v61, 16, v60
	ds_load_u8 v60, v136 offset:1632
	ds_load_u8 v174, v136 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v174, v60, 0xc0c0004
	ds_load_u8 v174, v136 offset:1760
	ds_load_u8 v175, v136 offset:1696
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v174, v175, v174, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v174, 16, v60
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v56, v148, v147, 0xc0c0004
	v_perm_b32 v57, v146, v145, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v56
	v_perm_b32 v56, v153, v144, 0xc0c0004
	v_lshl_or_b32 v56, v142, 16, v56
	v_perm_b32 v142, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v48, v165, v164, 0xc0c0004
	v_perm_b32 v49, v163, v162, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[46:47], v[56:57], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v49, v49, 16, v48
	v_perm_b32 v48, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v48, v142, 16, v48
	v_perm_b32 v142, v155, v154, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[48:49], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v54, v171, v169, 0xc0c0004
	v_perm_b32 v55, v167, v166, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[58:59], v[48:49], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	v_perm_b32 v54, v159, v157, 0xc0c0004
	v_lshl_or_b32 v54, v142, 16, v54
	v_perm_b32 v142, v158, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v52, v173, v172, 0xc0c0004
	v_perm_b32 v53, v170, v168, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v53, v53, 16, v52
	v_perm_b32 v52, v161, v160, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v142, 16, v52
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[60:61], v[52:53], v[17:24] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v58, v2
	v_cvt_f32_i32_e32 v57, v3
	v_cvt_f32_i32_e32 v56, v4
	v_cvt_f32_i32_e32 v55, v5
	v_cvt_f32_i32_e32 v54, v6
	v_cvt_f32_i32_e32 v53, v7
	v_cvt_f32_i32_e32 v52, v8
	v_cvt_f32_i32_e32 v51, v25
	v_cvt_f32_i32_e32 v50, v26
	v_cvt_f32_i32_e32 v49, v27
	v_cvt_f32_i32_e32 v48, v28
	v_cvt_f32_i32_e32 v47, v29
	v_cvt_f32_i32_e32 v46, v30
	v_cvt_f32_i32_e32 v30, v31
	v_cvt_f32_i32_e32 v29, v32
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v9
	v_cvt_f32_i32_e32 v28, v10
	v_cvt_f32_i32_e32 v27, v11
	v_cvt_f32_i32_e32 v26, v12
	v_cvt_f32_i32_e32 v25, v13
	v_cvt_f32_i32_e32 v13, v14
	v_cvt_f32_i32_e32 v12, v15
	v_cvt_f32_i32_e32 v11, v16
	v_cvt_f32_i32_e32 v10, v17
	v_cvt_f32_i32_e32 v9, v18
	v_cvt_f32_i32_e32 v8, v19
	v_cvt_f32_i32_e32 v7, v20
	v_cvt_f32_i32_e32 v6, v21
	v_cvt_f32_i32_e32 v5, v22
	v_cvt_f32_i32_e32 v4, v23
	v_cvt_f32_i32_e32 v3, v24
	s_branch .LBB0_2
.LBB0_7:                                ; %._crit_edge32
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v1, v114, 16, 1
	v_bfe_u32 v6, v111, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_bfe_u32 v3, v113, 16, 1
	v_bfe_u32 v5, v112, 16, 1
	v_add3_u32 v1, v114, v1, 0x7fff
	v_add3_u32 v6, v111, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v111, v111
	v_bfe_u32 v10, v97, 16, 1
	v_mov_b16_e32 v4.h, 0
	v_add3_u32 v3, v113, v3, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	v_add3_u32 v5, v112, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v112, v112
	v_bfe_u32 v8, v107, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v6.h, s1
	v_bfe_u32 v9, v100, 16, 1
	v_add3_u32 v10, v97, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v97, v97
	v_bfe_u32 v14, v87, 16, 1
	v_mov_b16_e32 v4.l, v81.h
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v5.l, 0x7fff, v5.h, s0
	v_add3_u32 v8, v107, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_add3_u32 v9, v100, v9, 0x7fff
	v_cmp_o_f32_e64 s0, v100, v100
	v_bfe_u32 v12, v89, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_bfe_u32 v13, v88, 16, 1
	v_add3_u32 v14, v87, v14, 0x7fff
	v_cmp_o_f32_e64 s1, v87, v87
	v_mov_b16_e32 v19.h, v4.h
	v_and_b32_e32 v4, 1, v4
	v_bfe_u32 v7, v110, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s0
	v_add3_u32 v12, v89, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_add3_u32 v13, v88, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v88, v88
	v_bfe_u32 v16, v85, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s1
	v_bfe_u32 v17, v84, 16, 1
	v_mov_b16_e32 v19.l, v79.h
	v_add3_u32 v4, v81, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v81, v81
	v_bfe_u32 v21, v82, 16, 1
	v_add3_u32 v7, v110, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v110, v110
	v_bfe_u32 v11, v94, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s0
	v_add3_u32 v16, v85, v16, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v85, v85
	v_add3_u32 v17, v84, v17, 0x7fff
	v_cmp_o_f32_e64 s0, v84, v84
	v_and_b32_e32 v19, 1, v19
	v_cndmask_b16 v20.h, 0x7fff, v4.h, s1
	v_add3_u32 v21, v82, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v82, v82
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s2
	v_add3_u32 v11, v94, v11, 0x7fff
	v_cmp_o_f32_e64 s2, v94, v94
	v_bfe_u32 v15, v86, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v16.h, vcc_lo
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s0
	v_add3_u32 v17, v79, v19, 0x7fff
	v_bfe_u32 v19, v83, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cndmask_b16 v3.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v76, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s2
	v_add3_u32 v15, v86, v15, 0x7fff
	v_cmp_o_f32_e64 s2, v86, v86
	v_bfe_u32 v22, v80, 16, 1
	v_add3_u32 v19, v83, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v83, v83
	v_cndmask_b16 v20.l, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v78, 16, 1
	v_add3_u32 v21, v76, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v76, v76
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s2
	v_add3_u32 v22, v80, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v80, v80
	v_cndmask_b16 v1.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v77, 16, 1
	v_add3_u32 v17, v78, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v78, v78
	v_cndmask_b16 v8.h, 0x7fff, v21.h, s1
	v_bfe_u32 v21, v72, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v75, 16, 1
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_and_b32_e32 v18, 31, v0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v19, v77, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v77, v77
	v_cndmask_b16 v6.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v74, 16, 1
	v_add3_u32 v21, v72, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v72, v72
	v_add3_u32 v22, v75, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v75, v75
	v_cndmask_b16 v7.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v73, 16, 1
	v_add3_u32 v17, v74, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_cndmask_b16 v12.h, 0x7fff, v21.h, s1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshlrev_b32_e32 v21, 2, v18
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v9.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v71, 16, 1
	v_add3_u32 v19, v73, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v73, v73
	v_cndmask_b16 v10.h, 0x7fff, v17.h, vcc_lo
	v_bfe_u32 v17, v70, 16, 1
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v21, v65, 8, v21
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v22, v71, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v71, v71
	v_cndmask_b16 v11.h, 0x7fff, v19.h, s0
	v_bfe_u32 v19, v69, 16, 1
	v_add3_u32 v17, v70, v17, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v70, v70
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_xor_b32_e32 v21, v21, v67
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_cndmask_b16 v13.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v68, 16, 1
	v_add3_u32 v19, v69, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v69, v69
	v_cndmask_b16 v14.h, 0x7fff, v17.h, vcc_lo
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_lshl_or_b32 v17, v66, 1, v21
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_bfe_u32 v23, v34, 16, 1
	v_add3_u32 v22, v68, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v68, v68
	v_cndmask_b16 v15.h, 0x7fff, v19.h, s0
	.loc	1 1228 34                       ; ragged.py:1228:34
	v_add_nc_u32_e32 v19, 0, v17
	v_xad_u32 v26, 0x1040, v17, 0
	.loc	1 1226 33                       ; ragged.py:1226:33
	v_add3_u32 v23, v34, v23, 0x7fff
	v_cmp_o_f32_e64 s2, v34, v34
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
	v_lshlrev_b32_e32 v3, 2, v65
	v_xad_u32 v1, 0x104c, v17, 0
	ds_store_b32 v23, v5
	ds_store_b32 v1, v13
	v_lshrrev_b32_e32 v1, 3, v2
	v_lshl_or_b32 v2, v2, 3, v3
	v_cmp_eq_u32_e32 vcc_lo, 0, v64
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
	s_lshr_b32 s0, s35, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s0, s35, s0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v17, s44, v0
	.loc	1 1230 31                       ; ragged.py:1230:31
	v_lshl_or_b32 v0, s33, 5, v18
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
	s_cbranch_execz .LBB0_9
; %bb.8:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v17
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_9:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 4, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_11
; %bb.10:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_11:
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
	s_cbranch_execz .LBB0_13
; %bb.12:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_13:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 12, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_15
; %bb.14:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_15:
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
	s_cbranch_execz .LBB0_17
; %bb.16:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_17:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 20, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_19
; %bb.18:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_19:
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
	s_cbranch_execz .LBB0_21
; %bb.20:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_21:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v18, 28, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v18
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_23
; %bb.22:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v20, off
.LBB0_23:
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
	s_cbranch_execz .LBB0_25
; %bb.24:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v18, s21, v18
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v13, off
.LBB0_25:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(7)
	v_or_b32_e32 v13, 36, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v13
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_27
; %bb.26:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v13, s21, v13
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v9, off
.LBB0_27:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v9, 40, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v9
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_29
; %bb.28:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v9, s21, v9
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v5, off
.LBB0_29:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(3)
	v_or_b32_e32 v5, 44, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v5
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_31
; %bb.30:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v5, s21, v5
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
	v_add_co_u32 v18, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[18:19], v1, off
.LBB0_31:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_waitcnt lgkmcnt(1)
	v_or_b32_e32 v1, 48, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_33
; %bb.32:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[18:19], null, v1, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v1, v14, v16, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v13, s0, s22, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v14, null, s23, v19, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[13:14], v1, off
.LBB0_33:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, 52, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_35
; %bb.34:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[13:14], null, v1, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v1, v10, v12, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v14, 31, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[13:14], 2, v[13:14]
	v_add_co_u32 v9, s0, s22, v13
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, s23, v14, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[9:10], v1, off
.LBB0_35:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, 56, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_37
; %bb.36:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s21, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[9:10], null, v1, s1, v[0:1]
	.loc	1 1229 30                       ; ragged.py:1229:30
	v_perm_b32 v1, v6, v8, 0x3020706
	.loc	1 1237 26                       ; ragged.py:1237:26
	v_ashrrev_i32_e32 v10, 31, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[9:10], 2, v[9:10]
	v_add_co_u32 v5, s0, s22, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, s23, v10, s0
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[5:6], v1, off
.LBB0_37:
	.loc	1 0 17                          ; ragged.py:0:17
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	v_or_b32_e32 v1, 60, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v1
	.loc	1 1236 33                       ; ragged.py:1236:33
	s_and_b32 s0, s0, vcc_lo
	.loc	1 1237 17                       ; ragged.py:1237:17
	s_and_saveexec_b32 s2, s0
	s_cbranch_execz .LBB0_39
; %bb.38:
	.loc	1 1232 21                       ; ragged.py:1232:21
	v_add_nc_u32_e32 v1, s21, v1
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
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	.loc	1 1237 17 is_stmt 0             ; ragged.py:1237:17
	global_store_b32 v[0:1], v2, off
.LBB0_39:
	.loc	1 970 5 is_stmt 1               ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 205
		.amdhsa_next_free_sgpr 60
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_vgpr, 205
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10056
; TotalNumSgprs: 62
; NumVgprs: 205
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 205
; Occupancy: 7
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tn_sc256_evenk_bfloat16_paired_bm64_bn64_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     205
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
