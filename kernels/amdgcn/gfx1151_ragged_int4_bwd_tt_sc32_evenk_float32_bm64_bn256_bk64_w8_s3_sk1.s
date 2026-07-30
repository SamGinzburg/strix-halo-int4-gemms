	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v64, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s35, 0xff
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
	s_lshr_b32 s7, s7, 24
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
	s_ashr_i32 s6, s5, 8
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
	s_sub_i32 s22, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s22, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1207 37                       ; ragged.py:1207:37
	s_mul_i32 s44, s22, s34
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s9, s5
	s_add_i32 s9, s9, s4
	s_load_b64 s[4:5], s[0:1], 0x20
	s_mul_hi_u32 s9, s8, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s9, s7
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
	s_ashr_i32 s23, s22, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s7, s7, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[22:23], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s49, s7, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s6, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s49, v64
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s40, s[4:5], 0x0
	s_mov_b32 s7, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s5, s34, v1
	v_cmp_gt_i32_e64 s4, s34, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s23, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s40, s40, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s40, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge40_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s48, s49, s44
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr48
.LBB0_3:                                ; %Flow242
	s_load_b64 s[36:37], s[0:1], 0x28
	v_dual_mov_b32 v79, 0 :: v_dual_and_b32 v126, 0xe0, v0
	v_lshrrev_b32_e32 v128, 4, v0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v130, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v132, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v133, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v135, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v140, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v141, 0 :: v_dual_mov_b32 v144, 0
	v_mov_b32_e32 v143, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s33, s6, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[24:31], s[0:1], 0x0
	s_load_b64 s[38:39], s[0:1], 0x38
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v2, s33, v128
	v_dual_mov_b32 v144, 0 :: v_dual_and_b32 v1, 63, v0
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s45, s40, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v5, 16, v2
	v_or_b32_e32 v6, 32, v2
	v_or_b32_e32 v7, 48, v2
	v_or_b32_e32 v8, 64, v2
	v_or_b32_e32 v9, 0x50, v2
	v_or_b32_e32 v10, 0x60, v2
	v_or_b32_e32 v11, 0x70, v2
	v_or_b32_e32 v12, 0x80, v2
	v_or_b32_e32 v13, 0x90, v2
	v_or_b32_e32 v14, 0xa0, v2
	v_or_b32_e32 v15, 0xb0, v2
	v_or_b32_e32 v16, 0xc0, v2
	v_or_b32_e32 v17, 0xd0, v2
	v_or_b32_e32 v18, 0xe0, v2
	v_or_b32_e32 v19, 0xf0, v2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v2, 6, v0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, s49, v1
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s35, v5
	v_bfe_i32 v5, v0, 7, 1
	s_cmp_lt_i32 s3, 16
	v_mad_u64_u32 v[65:66], null, s34, v2, v[1:2]
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_or_b32_e32 v2, 12, v2
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v4
	v_bfe_i32 v4, v0, 3, 1
	s_cselect_b32 s46, -1, 0
	s_add_i32 s48, s49, s44
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s35, v6
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, s38, v128, v[64:65]
	v_mad_u64_u32 v[67:68], null, s34, v2, v[1:2]
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	v_cmp_gt_i32_e64 s8, s35, v7
	v_cmp_gt_i32_e64 s9, s35, v8
	v_dual_mov_b32 v143, 0 :: v_dual_lshlrev_b32 v6, 3, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v1, 0x70, v1
	v_dual_mov_b32 v141, 0 :: v_dual_and_b32 v4, 0x88, v4
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v7, 0x7f, v0
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v5, 0x88, v5
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v8, s48, v64
	v_or3_b32 v152, v4, v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, v5, v7
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v3, 0xf0, v0
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v5, 16, v8
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v7, 32, v8
	v_mad_u64_u32 v[68:69], null, s38, 48, v[66:67]
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v155, v5, s39
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v5, 5, v0
	v_mad_u64_u32 v[69:70], null, 0x50, s38, v[66:67]
	v_mad_u64_u32 v[70:71], null, 0x60, s38, v[66:67]
	v_cmp_gt_i32_e64 s10, s35, v9
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v9, 48, v8
	v_mul_lo_u32 v154, v8, s39
	v_mul_lo_u32 v156, v7, s39
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v8, 2, v3
	v_dual_mov_b32 v116, 0 :: v_dual_and_b32 v5, 32, v5
	v_mad_u64_u32 v[71:72], null, 0x70, s38, v[66:67]
	v_mad_u64_u32 v[72:73], null, 0x90, s38, v[66:67]
	v_mad_u64_u32 v[73:74], null, 0xa0, s38, v[66:67]
	v_mad_u64_u32 v[74:75], null, 0xb0, s38, v[66:67]
	v_mad_u64_u32 v[75:76], null, 0xc0, s38, v[66:67]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v145, s33, v0
	v_or_b32_e32 v2, 0x300, v0
	v_or_b32_e32 v1, 0x3f0, v0
	v_xor_b32_e32 v6, 8, v152
	v_mul_lo_u32 v157, v9, s39
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v7, 28, v7
	v_cndmask_b32_e64 v9, 0, 1, s46
	v_add3_u32 v5, 0, v8, v5
	v_dual_mov_b32 v112, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_mad_u64_u32 v[76:77], null, 0xd0, s38, v[66:67]
	v_mad_u64_u32 v[77:78], null, 0xe0, s38, v[66:67]
	v_mad_u64_u32 v[78:79], null, 0xf0, s38, v[66:67]
	.loc	1 1123 43                       ; ragged.py:1123:43
	s_mul_i32 s50, s22, s38
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s51, s22, s39
	.loc	1 1127 43                       ; ragged.py:1127:43
	s_mul_i32 s22, s22, s35
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s11, s35, v10
	v_cmp_gt_i32_e64 s12, s35, v11
	v_cmp_gt_i32_e64 s13, s35, v12
	v_cmp_gt_i32_e64 s14, s35, v13
	v_cmp_gt_i32_e64 s15, s35, v14
	v_cmp_gt_i32_e64 s16, s35, v15
	v_cmp_gt_i32_e64 s17, s35, v16
	v_cmp_gt_i32_e64 s18, s35, v17
	v_cmp_gt_i32_e64 s19, s35, v18
	v_cmp_gt_i32_e64 s20, s35, v19
	v_cmp_gt_i32_e64 s21, s35, v145
	v_lshl_add_u32 v146, s34, 2, v65
	v_lshl_add_u32 v147, s34, 3, v65
	s_add_i32 s52, s33, s22
	v_lshl_add_u32 v148, s38, 4, v66
	v_lshl_add_u32 v149, s38, 5, v66
	v_lshl_add_u32 v150, s38, 6, v66
	v_lshl_add_u32 v151, s38, 7, v66
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v153, 0, v64
	v_cmp_ne_u32_e64 s22, 1, v9
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v158, 0, v0
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v159, 0, v2
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v160, 0, v1
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v161, 0, v4
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v162, 0, v6
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v163, v5, v7
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v164, 0, v3
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v125, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v121, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v117, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v115, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v82, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v99, 0
	v_mov_b32_e32 v97, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v81, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v79, 0
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s31, s31, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s45, s45, -1
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_mul_i32 s52, s52, s38
	s_and_b32 s25, s27, 0xffff
	s_mov_b32 s24, s26
	s_mov_b32 s53, 0
	s_lshr_b32 s39, s45, 4
	s_mov_b32 s44, s28
	s_mov_b32 s45, s29
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s28, s30
	s_mov_b32 s29, s31
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s38, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v32, v154, s53, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s26, s53, s51
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v33, v155, s53, 1
	v_add_lshl_u32 v34, v156, s53, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s26, s26, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v35, v157, s53, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v36, v145, s26, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s23
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s21
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v32, v32, s[44:47], 0 offen
	buffer_load_u16 v33, v33, s[44:47], 0 offen
	buffer_load_u16 v34, v34, s[44:47], 0 offen
	buffer_load_u16 v35, v35, s[44:47], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s26, s53, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s38, s26, 4
	s_cmp_lg_u32 s53, s39
	s_mov_b32 s53, s26
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v53, v179, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v37, v196, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v193, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v38, v195, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v177, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v39, v194, v32 :: v_dual_mul_f32 v52, v180, v33
	v_dual_mul_f32 v41, v192, v32 :: v_dual_mul_f32 v54, v178, v33
	v_dual_mul_f32 v42, v191, v32 :: v_dual_mul_f32 v59, v173, v33
	v_dual_mul_f32 v43, v190, v32 :: v_dual_mul_f32 v56, v176, v33
	v_dual_mul_f32 v44, v189, v32 :: v_dual_mul_f32 v57, v175, v33
	v_dual_mul_f32 v45, v188, v32 :: v_dual_mul_f32 v58, v174, v33
	v_dual_mul_f32 v46, v187, v32 :: v_dual_mul_f32 v63, v169, v33
	v_dual_mul_f32 v47, v186, v32 :: v_dual_mul_f32 v60, v172, v33
	v_dual_mul_f32 v48, v185, v32 :: v_dual_mul_f32 v61, v171, v33
	v_dual_mul_f32 v49, v184, v32 :: v_dual_mul_f32 v62, v170, v33
	v_mul_f32_e32 v50, v183, v32
	v_dual_mul_f32 v51, v182, v32 :: v_dual_mul_f32 v168, v168, v33
	v_dual_mul_f32 v32, v181, v32 :: v_dual_mul_f32 v167, v167, v33
	v_dual_mul_f32 v166, v166, v33 :: v_dual_mul_f32 v31, v31, v34
	v_dual_mul_f32 v33, v165, v33 :: v_dual_mul_f32 v30, v30, v34
	v_mul_f32_e32 v15, v15, v35
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v28, v28, v34 :: v_dual_mul_f32 v181, v10, v35
	v_mul_f32_e32 v165, v27, v34
	v_dual_mul_f32 v169, v26, v34 :: v_dual_mul_f32 v180, v11, v35
	v_dual_mul_f32 v170, v25, v34 :: v_dual_mul_f32 v179, v12, v35
	v_dual_mul_f32 v171, v24, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v172, v23, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v173, v22, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v174, v21, v34 :: v_dual_mul_f32 v7, v7, v35
	v_dual_mul_f32 v175, v20, v34 :: v_dual_mul_f32 v2, v2, v35
	v_dual_mul_f32 v176, v19, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v177, v18, v34 :: v_dual_mul_f32 v4, v4, v35
	v_dual_mul_f32 v178, v17, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v34, v16, v34 :: v_dual_mul_f32 v1, v1, v35
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v163, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v164
	ds_load_b128 v[20:23], v164 offset:16
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[10:13], v164 offset:512
	ds_load_b128 v[24:27], v164 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v0, v0, v35 :: v_dual_fmac_f32 v143, v38, v17
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v144, v37, v16 :: v_dual_fmac_f32 v141, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v142, v39, v18 :: v_dual_fmac_f32 v139, v42, v21
	v_dual_fmac_f32 v140, v41, v20 :: v_dual_fmac_f32 v137, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v138, v43, v22 :: v_dual_fmac_f32 v135, v46, v11
	v_dual_fmac_f32 v136, v45, v10 :: v_dual_fmac_f32 v133, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v134, v47, v12 :: v_dual_fmac_f32 v131, v50, v25
	v_dual_fmac_f32 v132, v49, v24 :: v_dual_fmac_f32 v129, v32, v27
	v_dual_fmac_f32 v130, v51, v26 :: v_dual_fmac_f32 v127, v52, v16
	v_dual_fmac_f32 v125, v53, v17 :: v_dual_fmac_f32 v124, v54, v18
	v_dual_fmac_f32 v123, v55, v19 :: v_dual_fmac_f32 v122, v56, v20
	v_dual_fmac_f32 v121, v57, v21 :: v_dual_fmac_f32 v120, v58, v22
	v_dual_fmac_f32 v119, v59, v23 :: v_dual_fmac_f32 v118, v60, v10
	v_dual_fmac_f32 v117, v61, v11 :: v_dual_fmac_f32 v116, v62, v12
	v_dual_fmac_f32 v115, v63, v13 :: v_dual_fmac_f32 v114, v168, v24
	v_dual_fmac_f32 v113, v167, v25 :: v_dual_fmac_f32 v112, v166, v26
	v_dual_fmac_f32 v111, v33, v27 :: v_dual_fmac_f32 v110, v31, v16
	v_dual_fmac_f32 v109, v30, v17 :: v_dual_fmac_f32 v108, v29, v18
	v_dual_fmac_f32 v107, v28, v19 :: v_dual_fmac_f32 v106, v165, v20
	v_dual_fmac_f32 v105, v169, v21 :: v_dual_fmac_f32 v104, v170, v22
	v_dual_fmac_f32 v103, v171, v23 :: v_dual_fmac_f32 v102, v172, v10
	v_dual_fmac_f32 v101, v173, v11 :: v_dual_fmac_f32 v100, v174, v12
	v_dual_fmac_f32 v99, v175, v13 :: v_dual_fmac_f32 v98, v176, v24
	v_dual_fmac_f32 v97, v177, v25 :: v_dual_fmac_f32 v96, v178, v26
	v_dual_fmac_f32 v95, v34, v27 :: v_dual_fmac_f32 v94, v15, v16
	v_dual_fmac_f32 v93, v14, v17 :: v_dual_fmac_f32 v92, v36, v18
	v_dual_fmac_f32 v91, v179, v19 :: v_dual_fmac_f32 v90, v180, v20
	v_dual_fmac_f32 v89, v181, v21 :: v_dual_fmac_f32 v86, v7, v10
	v_dual_fmac_f32 v88, v9, v22 :: v_dual_fmac_f32 v87, v8, v23
	v_dual_fmac_f32 v85, v6, v11 :: v_dual_fmac_f32 v84, v5, v12
	v_dual_fmac_f32 v81, v4, v13 :: v_dual_fmac_f32 v80, v3, v24
	v_dual_fmac_f32 v83, v2, v25 :: v_dual_fmac_f32 v82, v1, v26
	v_fmac_f32_e32 v79, v0, v27
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v165, 0 :: v_dual_mov_b32 v166, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v170, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v172, 0
	v_dual_mov_b32 v173, 0 :: v_dual_mov_b32 v174, 0
	v_dual_mov_b32 v175, 0 :: v_dual_mov_b32 v176, 0
	v_dual_mov_b32 v177, 0 :: v_dual_mov_b32 v178, 0
	v_dual_mov_b32 v179, 0 :: v_dual_mov_b32 v180, 0
	v_dual_mov_b32 v181, 0 :: v_dual_mov_b32 v182, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v184, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v187, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v189, 0 :: v_dual_mov_b32 v190, 0
	v_dual_mov_b32 v191, 0 :: v_dual_mov_b32 v192, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v195, 0 :: v_dual_mov_b32 v196, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s22
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v0, 0
	s_mov_b32 s54, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v1, v0
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v0
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v0
	v_mov_b32_e32 v10, v0
	v_mov_b32_e32 v11, v0
	v_mov_b32_e32 v12, v0
	v_mov_b32_e32 v13, v0
	v_mov_b32_e32 v14, v0
	v_mov_b32_e32 v15, v0
	v_mov_b32_e32 v16, v0
	v_mov_b32_e32 v17, v0
	v_mov_b32_e32 v18, v0
	v_mov_b32_e32 v19, v0
	v_mov_b32_e32 v20, v0
	v_mov_b32_e32 v21, v0
	v_mov_b32_e32 v22, v0
	v_mov_b32_e32 v23, v0
	v_mov_b32_e32 v24, v0
	v_mov_b32_e32 v25, v0
	v_mov_b32_e32 v26, v0
	v_mov_b32_e32 v27, v0
	v_mov_b32_e32 v28, v0
	v_mov_b32_e32 v29, v0
	v_mov_b32_e32 v30, v0
	v_mov_b32_e32 v31, v0
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v0
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v0
	v_mov_b32_e32 v41, v0
	v_mov_b32_e32 v42, v0
	v_mov_b32_e32 v43, v0
	v_mov_b32_e32 v44, v0
	v_mov_b32_e32 v45, v0
	v_mov_b32_e32 v46, v0
	v_mov_b32_e32 v47, v0
	v_mov_b32_e32 v48, v0
	v_mov_b32_e32 v49, v0
	v_mov_b32_e32 v50, v0
	v_mov_b32_e32 v51, v0
	v_mov_b32_e32 v52, v0
	v_mov_b32_e32 v53, v0
	v_mov_b32_e32 v54, v0
	v_mov_b32_e32 v55, v0
	v_mov_b32_e32 v56, v0
	v_mov_b32_e32 v57, v0
	v_mov_b32_e32 v58, v0
	v_mov_b32_e32 v59, v0
	v_mov_b32_e32 v60, v0
	v_mov_b32_e32 v61, v0
	v_mov_b32_e32 v62, v0
	v_mov_b32_e32 v63, v0
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s55, s54, s38
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s26, s42
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s56, s55, s50
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s55, s55, s52
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_mul_i32 s56, s56, s34
	v_add_nc_u32_e32 v165, s55, v66
	v_add_nc_u32_e32 v166, s55, v148
	v_add_nc_u32_e32 v167, s55, v149
	s_add_i32 s56, s56, s49
	v_add_nc_u32_e32 v168, s55, v68
	v_add_nc_u32_e32 v169, s55, v150
	v_add_nc_u32_e32 v170, s55, v69
	v_add_nc_u32_e32 v171, s55, v70
	v_add_nc_u32_e32 v172, s55, v71
	v_add_nc_u32_e32 v173, s55, v151
	v_add_nc_u32_e32 v174, s55, v72
	v_add_nc_u32_e32 v175, s55, v73
	v_add_nc_u32_e32 v176, s55, v74
	v_add_nc_u32_e32 v177, s55, v75
	v_add_nc_u32_e32 v178, s55, v76
	v_add_nc_u32_e32 v179, s55, v77
	v_add_nc_u32_e32 v180, s55, v78
	v_add_nc_u32_e32 v181, s56, v65
	v_add_nc_u32_e32 v182, s56, v146
	v_add_nc_u32_e32 v183, s56, v147
	v_add_nc_u32_e32 v184, s56, v67
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v165, 0x80000000, v165, s1
	v_cndmask_b32_e64 v166, 0x80000000, v166, s6
	v_cndmask_b32_e64 v167, 0x80000000, v167, s7
	s_mov_b32 s27, s43
	v_cndmask_b32_e64 v168, 0x80000000, v168, s8
	v_cndmask_b32_e64 v169, 0x80000000, v169, s9
	v_cndmask_b32_e64 v170, 0x80000000, v170, s10
	v_cndmask_b32_e64 v171, 0x80000000, v171, s11
	v_cndmask_b32_e64 v172, 0x80000000, v172, s12
	v_cndmask_b32_e64 v173, 0x80000000, v173, s13
	v_cndmask_b32_e64 v174, 0x80000000, v174, s14
	v_cndmask_b32_e64 v175, 0x80000000, v175, s15
	v_cndmask_b32_e64 v176, 0x80000000, v176, s16
	v_cndmask_b32_e64 v177, 0x80000000, v177, s17
	v_cndmask_b32_e64 v178, 0x80000000, v178, s18
	v_cndmask_b32_e64 v179, 0x80000000, v179, s19
	v_cndmask_b32_e64 v180, 0x80000000, v180, s20
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v181, 0x80000000, v181, s0
	v_cndmask_b32_e64 v182, 0x80000000, v182, s0
	v_cndmask_b32_e64 v183, 0x80000000, v183, s0
	v_cndmask_b32_e64 v184, 0x80000000, v184, s0
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0xe
	buffer_load_u8 v165, v165, s[24:27], 0 offen
	buffer_load_u8 v166, v166, s[24:27], 0 offen
	buffer_load_u8 v167, v167, s[24:27], 0 offen
	buffer_load_u8 v168, v168, s[24:27], 0 offen
	buffer_load_u8 v169, v169, s[24:27], 0 offen
	buffer_load_u8 v170, v170, s[24:27], 0 offen
	buffer_load_u8 v171, v171, s[24:27], 0 offen
	buffer_load_u8 v172, v172, s[24:27], 0 offen
	buffer_load_u8 v173, v173, s[24:27], 0 offen
	buffer_load_u8 v174, v174, s[24:27], 0 offen
	buffer_load_u8 v175, v175, s[24:27], 0 offen
	buffer_load_u8 v176, v176, s[24:27], 0 offen
	buffer_load_u8 v177, v177, s[24:27], 0 offen
	buffer_load_u8 v178, v178, s[24:27], 0 offen
	buffer_load_u8 v179, v179, s[24:27], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0x3
	buffer_load_u8 v181, v181, s[40:43], 0 offen
	buffer_load_u8 v182, v182, s[40:43], 0 offen
	buffer_load_u8 v183, v183, s[40:43], 0 offen
	buffer_load_u8 v184, v184, s[40:43], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	buffer_load_u8 v180, v180, s[24:27], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_add_nc_u32_e32 v185, 0, v152
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s26, s54, 16
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s54, 0
	s_mov_b32 s54, s26
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(4)
	ds_store_b8 v158, v181
	s_waitcnt vmcnt(3)
	ds_store_b8 v158, v182 offset:256
	s_waitcnt vmcnt(2)
	ds_store_b8 v158, v183 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v159, v184
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v181, v153 offset:192
	ds_load_u8 v182, v153 offset:128
	ds_load_u8 v183, v153 offset:208
	ds_load_u8 v184, v153 offset:144
	ds_load_u8 v186, v153 offset:224
	ds_load_u8 v187, v153 offset:160
	ds_load_u8 v188, v153 offset:240
	ds_load_u8 v189, v153 offset:176
	ds_load_u8 v190, v153 offset:448
	ds_load_u8 v191, v153 offset:384
	ds_load_u8 v192, v153 offset:464
	ds_load_u8 v193, v153 offset:400
	ds_load_u8 v194, v153 offset:480
	ds_load_u8 v195, v153 offset:416
	ds_load_u8 v196, v153 offset:496
	ds_load_u8 v197, v153 offset:432
	ds_load_u8 v198, v153 offset:320
	ds_load_u8 v199, v153 offset:256
	ds_load_u8 v200, v153 offset:336
	ds_load_u8 v201, v153 offset:272
	ds_load_u8 v202, v153 offset:352
	ds_load_u8 v203, v153 offset:288
	ds_load_u8 v204, v153 offset:368
	ds_load_u8 v205, v153 offset:304
	ds_load_u8 v206, v153 offset:64
	ds_load_u8 v207, v153 offset:80
	ds_load_u8 v208, v153 offset:96
	ds_load_u8 v209, v153 offset:112
	ds_load_u8 v210, v153
	ds_load_u8 v211, v153 offset:16
	ds_load_u8 v212, v153 offset:32
	ds_load_u8 v213, v153 offset:48
	ds_load_u8 v214, v153 offset:960
	ds_load_u8 v215, v153 offset:896
	ds_load_u8 v216, v153 offset:976
	ds_load_u8 v217, v153 offset:912
	ds_load_u8 v218, v153 offset:992
	ds_load_u8 v219, v153 offset:928
	ds_load_u8 v220, v160
	ds_load_u8 v221, v153 offset:944
	ds_load_u8 v222, v153 offset:832
	ds_load_u8 v223, v153 offset:768
	ds_load_u8 v224, v153 offset:848
	ds_load_u8 v225, v153 offset:784
	ds_load_u8 v226, v153 offset:864
	ds_load_u8 v227, v153 offset:800
	ds_load_u8 v228, v153 offset:880
	ds_load_u8 v229, v153 offset:816
	ds_load_u8 v230, v153 offset:704
	ds_load_u8 v231, v153 offset:640
	ds_load_u8 v232, v153 offset:720
	ds_load_u8 v233, v153 offset:656
	ds_load_u8 v234, v153 offset:736
	ds_load_u8 v235, v153 offset:672
	ds_load_u8 v236, v153 offset:752
	ds_load_u8 v237, v153 offset:688
	ds_load_u8 v238, v153 offset:576
	ds_load_u8 v239, v153 offset:512
	ds_load_u8 v240, v153 offset:592
	ds_load_u8 v241, v153 offset:528
	ds_load_u8 v242, v153 offset:608
	ds_load_u8 v243, v153 offset:544
	ds_load_u8 v244, v153 offset:624
	ds_load_u8 v245, v153 offset:560
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v161, v165
	ds_store_b8 v161, v166 offset:256
	ds_store_b8 v161, v167 offset:512
	ds_store_b8 v161, v168 offset:768
	ds_store_b8 v161, v169 offset:1024
	ds_store_b8 v161, v170 offset:1280
	ds_store_b8 v161, v171 offset:1536
	ds_store_b8 v161, v172 offset:1792
	ds_store_b8 v161, v173 offset:2048
	ds_store_b8 v161, v174 offset:2304
	ds_store_b8 v161, v175 offset:2560
	ds_store_b8 v161, v176 offset:2816
	ds_store_b8 v161, v177 offset:3072
	ds_store_b8 v161, v178 offset:3328
	ds_store_b8 v161, v179 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v161, v180 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[165:168], v185 offset1:4
	ds_load_2addr_stride64_b64 v[169:172], v162 offset1:4
	.loc	1 1132 35                       ; ragged.py:1132:35
	v_perm_b32 v173, v199, v198, 0xc0c0004
	v_perm_b32 v174, v191, v190, 0xc0c0004
	v_perm_b32 v175, v210, v206, 0xc0c0004
	v_perm_b32 v176, v182, v181, 0xc0c0004
	v_perm_b32 v177, v223, v222, 0xc0c0004
	v_perm_b32 v178, v215, v214, 0xc0c0004
	v_perm_b32 v181, v201, v200, 0xc0c0004
	v_perm_b32 v182, v193, v192, 0xc0c0004
	v_perm_b32 v185, v211, v207, 0xc0c0004
	v_perm_b32 v183, v184, v183, 0xc0c0004
	v_perm_b32 v193, v203, v202, 0xc0c0004
	v_perm_b32 v194, v195, v194, 0xc0c0004
	v_perm_b32 v195, v212, v208, 0xc0c0004
	v_perm_b32 v186, v187, v186, 0xc0c0004
	v_perm_b32 v201, v205, v204, 0xc0c0004
	v_perm_b32 v196, v197, v196, 0xc0c0004
	v_perm_b32 v197, v213, v209, 0xc0c0004
	v_perm_b32 v188, v189, v188, 0xc0c0004
	v_perm_b32 v179, v239, v238, 0xc0c0004
	v_perm_b32 v180, v231, v230, 0xc0c0004
	v_perm_b32 v184, v225, v224, 0xc0c0004
	v_perm_b32 v190, v217, v216, 0xc0c0004
	v_perm_b32 v191, v241, v240, 0xc0c0004
	v_perm_b32 v192, v233, v232, 0xc0c0004
	v_perm_b32 v187, v227, v226, 0xc0c0004
	v_perm_b32 v198, v219, v218, 0xc0c0004
	v_perm_b32 v199, v243, v242, 0xc0c0004
	v_perm_b32 v200, v235, v234, 0xc0c0004
	v_perm_b32 v189, v245, v244, 0xc0c0004
	v_perm_b32 v202, v237, v236, 0xc0c0004
	v_perm_b32 v203, v229, v228, 0xc0c0004
	v_perm_b32 v204, v221, v220, 0xc0c0004
	v_lshl_or_b32 v174, v174, 16, v173
	v_lshl_or_b32 v173, v176, 16, v175
	v_lshl_or_b32 v176, v178, 16, v177
	v_lshl_or_b32 v178, v182, 16, v181
	v_lshl_or_b32 v177, v183, 16, v185
	v_lshl_or_b32 v182, v194, 16, v193
	v_lshl_or_b32 v181, v186, 16, v195
	v_lshl_or_b32 v186, v196, 16, v201
	v_lshl_or_b32 v185, v188, 16, v197
	v_lshl_or_b32 v175, v180, 16, v179
	v_lshl_or_b32 v180, v190, 16, v184
	v_lshl_or_b32 v179, v192, 16, v191
	v_lshl_or_b32 v184, v198, 16, v187
	v_lshl_or_b32 v183, v200, 16, v199
	v_lshl_or_b32 v187, v202, 16, v189
	v_lshl_or_b32 v188, v204, 16, v203
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[165:166], v[173:174], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[167:168], v[173:174], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[165:166], v[177:178], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[167:168], v[177:178], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[165:166], v[181:182], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[167:168], v[181:182], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[165:166], v[185:186], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[167:168], v[185:186], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[169:170], v[175:176], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[171:172], v[175:176], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[169:170], v[179:180], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[171:172], v[179:180], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[169:170], v[183:184], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[171:172], v[183:184], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[169:170], v[187:188], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[171:172], v[187:188], v[56:63] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v196, v0
	v_cvt_f32_i32_e32 v195, v1
	v_cvt_f32_i32_e32 v194, v2
	v_cvt_f32_i32_e32 v193, v3
	v_cvt_f32_i32_e32 v192, v4
	v_cvt_f32_i32_e32 v191, v5
	v_cvt_f32_i32_e32 v190, v6
	v_cvt_f32_i32_e32 v189, v7
	v_cvt_f32_i32_e32 v188, v8
	v_cvt_f32_i32_e32 v187, v9
	v_cvt_f32_i32_e32 v186, v10
	v_cvt_f32_i32_e32 v185, v11
	v_cvt_f32_i32_e32 v184, v12
	v_cvt_f32_i32_e32 v183, v13
	v_cvt_f32_i32_e32 v182, v14
	v_cvt_f32_i32_e32 v181, v15
	v_cvt_f32_i32_e32 v180, v16
	v_cvt_f32_i32_e32 v179, v17
	v_cvt_f32_i32_e32 v178, v18
	v_cvt_f32_i32_e32 v177, v19
	v_cvt_f32_i32_e32 v176, v20
	v_cvt_f32_i32_e32 v175, v21
	v_cvt_f32_i32_e32 v174, v22
	v_cvt_f32_i32_e32 v173, v23
	v_cvt_f32_i32_e32 v172, v24
	v_cvt_f32_i32_e32 v171, v25
	v_cvt_f32_i32_e32 v170, v26
	v_cvt_f32_i32_e32 v169, v27
	v_cvt_f32_i32_e32 v168, v28
	v_cvt_f32_i32_e32 v167, v29
	v_cvt_f32_i32_e32 v166, v30
	v_cvt_f32_i32_e32 v165, v31
	v_cvt_f32_i32_e32 v31, v32
	v_cvt_f32_i32_e32 v30, v33
	v_cvt_f32_i32_e32 v29, v34
	v_cvt_f32_i32_e32 v28, v35
	v_cvt_f32_i32_e32 v27, v36
	v_cvt_f32_i32_e32 v26, v37
	v_cvt_f32_i32_e32 v25, v38
	v_cvt_f32_i32_e32 v24, v39
	v_cvt_f32_i32_e32 v23, v40
	v_cvt_f32_i32_e32 v22, v41
	v_cvt_f32_i32_e32 v21, v42
	v_cvt_f32_i32_e32 v20, v43
	v_cvt_f32_i32_e32 v19, v44
	v_cvt_f32_i32_e32 v18, v45
	v_cvt_f32_i32_e32 v17, v46
	v_cvt_f32_i32_e32 v16, v47
	v_cvt_f32_i32_e32 v15, v48
	v_cvt_f32_i32_e32 v14, v49
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v12, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v10, v53
	v_cvt_f32_i32_e32 v9, v54
	v_cvt_f32_i32_e32 v8, v55
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v6, v57
	v_cvt_f32_i32_e32 v5, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v1, v62
	v_cvt_f32_i32_e32 v0, v63
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge40
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v0, 1, v126
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s48, s35
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_and_or_b32 v3, v128, 1, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v7, 0x88, v3
	v_or_b32_e32 v8, 0x86, v3
	v_or_b32_e32 v6, 0x8a, v3
	v_or_b32_e32 v4, 0x8e, v3
	v_or_b32_e32 v5, 0x8c, v3
	v_or_b32_e32 v9, 0x84, v3
	v_or_b32_e32 v10, 0x82, v3
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v11, s33, v7
	v_or_b32_e32 v12, s33, v8
	v_or_b32_e32 v2, s33, v6
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v15, 12, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s33, v4
	v_or_b32_e32 v1, s33, v5
	v_or_b32_e32 v13, s33, v9
	v_or_b32_e32 v14, s33, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s6, s35, v11
	v_cmp_gt_i32_e64 s7, s35, v12
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v11, 0x80, v3
	v_or_b32_e32 v12, 14, v3
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s35, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s33, v15
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s35, v0
	v_cmp_gt_i32_e64 s0, s35, v1
	v_cmp_gt_i32_e64 s8, s35, v13
	v_cmp_gt_i32_e64 s9, s35, v14
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s33, v11
	v_or_b32_e32 v1, s33, v12
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v13, 10, v3
	v_or_b32_e32 v14, 8, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s35, v2
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v2, s35, v64
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s35, v0
	v_cmp_gt_i32_e64 s11, s35, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v0, s33, v13
	v_or_b32_e32 v1, s33, v14
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v16, 6, v3
	v_or_b32_e32 v18, 2, v3
	v_or_b32_e32 v17, 4, v3
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v21, s33, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s35, v0
	v_cmp_gt_i32_e64 s14, s35, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s33, v16
	v_or_b32_e32 v20, s33, v18
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v0, s3, s33, v2
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v19, s33, v17
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s18, s35, v21
	v_cmp_gt_i32_e64 s15, s35, v1
	v_cmp_gt_i32_e64 s17, s35, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v0, v3, 2
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s16, s35, v19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v18, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v0, v17, 2
	v_cndmask_b32_e64 v22, 0x80000000, v1, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s17
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v19, s35, 4, v0
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v23, 0x80000000, v2, s3
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s5, s16
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s35, 48, v[0:1]
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_add_lshl_u32 v2, v0, v16, 2
	s_clause 0x2
	buffer_store_b32 v144, v22, s[36:39], 0 offen
	buffer_store_b32 v143, v23, s[36:39], 0 offen
	buffer_store_b32 v142, v21, s[36:39], 0 offen
	v_add_lshl_u32 v21, v0, v14, 2
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s5, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v0, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v15, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v141, v2, s[36:39], 0 offen
	buffer_store_b32 v140, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v12, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v139, v22, s[36:39], 0 offen
	buffer_store_b32 v138, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v10, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v9, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v137, v2, s[36:39], 0 offen
	buffer_store_b32 v136, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v0, v8, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	v_add_lshl_u32 v21, v0, v7, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v135, v22, s[36:39], 0 offen
	buffer_store_b32 v134, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v0, v6, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v23, v0, v5, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, s1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v20, s35, 5, v0
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_add_lshl_u32 v0, v0, v4, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s5, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v133, v2, s[36:39], 0 offen
	buffer_store_b32 v132, v21, s[36:39], 0 offen
	v_add_lshl_u32 v2, v19, v3, 2
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s5, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v131, v22, s[36:39], 0 offen
	buffer_store_b32 v130, v23, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v129, v0, s[36:39], 0 offen
	buffer_store_b32 v127, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v16, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v14, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v125, v21, s[36:39], 0 offen
	buffer_store_b32 v124, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v123, v0, s[36:39], 0 offen
	buffer_store_b32 v122, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v12, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v11, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v121, v21, s[36:39], 0 offen
	buffer_store_b32 v120, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v119, v0, s[36:39], 0 offen
	buffer_store_b32 v118, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v8, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v19, v7, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v117, v21, s[36:39], 0 offen
	buffer_store_b32 v116, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v21, v19, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v115, v0, s[36:39], 0 offen
	buffer_store_b32 v114, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v19, v4, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v3, 2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v113, v21, s[36:39], 0 offen
	buffer_store_b32 v112, v22, s[36:39], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v111, v0, s[36:39], 0 offen
	buffer_store_b32 v110, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v109, v19, s[36:39], 0 offen
	buffer_store_b32 v108, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v107, v0, s[36:39], 0 offen
	buffer_store_b32 v106, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v105, v19, s[36:39], 0 offen
	buffer_store_b32 v104, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v103, v0, s[36:39], 0 offen
	buffer_store_b32 v102, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v101, v19, s[36:39], 0 offen
	buffer_store_b32 v100, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v99, v0, s[36:39], 0 offen
	buffer_store_b32 v98, v2, s[36:39], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s23, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v18, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v17, v1, v17, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v97, v19, s[36:39], 0 offen
	buffer_store_b32 v96, v21, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v95, v0, s[36:39], 0 offen
	buffer_store_b32 v94, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v93, v3, s[36:39], 0 offen
	buffer_store_b32 v92, v17, s[36:39], 0 offen
	v_add_lshl_u32 v3, v1, v13, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v1, v15, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v91, v0, s[36:39], 0 offen
	buffer_store_b32 v90, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v12, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_add_lshl_u32 v2, v1, v11, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v89, v3, s[36:39], 0 offen
	buffer_store_b32 v88, v13, s[36:39], 0 offen
	v_add_lshl_u32 v3, v1, v10, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v1, v9, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v87, v0, s[36:39], 0 offen
	buffer_store_b32 v86, v2, s[36:39], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v85, v3, s[36:39], 0 offen
	buffer_store_b32 v84, v9, s[36:39], 0 offen
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v1, v6, 2
	v_add_lshl_u32 v5, v1, v5, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v1, v4, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s2, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v5, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b32 v81, v0, s[36:39], 0 offen
	buffer_store_b32 v80, v2, s[36:39], 0 offen
	buffer_store_b32 v83, v3, s[36:39], 0 offen
	buffer_store_b32 v82, v4, s[36:39], 0 offen
	buffer_store_b32 v79, v1, s[36:39], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 246
		.amdhsa_next_free_sgpr 57
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 246
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 57
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7956
; TotalNumSgprs: 59
; NumVgprs: 246
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 59
; NumVGPRsForWavesPerEU: 246
; Occupancy: 5
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     59
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_tt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     246
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
