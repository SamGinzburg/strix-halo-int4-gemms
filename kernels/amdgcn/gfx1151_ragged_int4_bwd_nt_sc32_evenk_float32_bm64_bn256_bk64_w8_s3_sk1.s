	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
	s_sub_i32 s44, s5, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s5, 0, s7
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s44, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s9
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s46, s44, s34
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
	s_ashr_i32 s45, s44, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s7, s7, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[44:45], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s7, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s25, s7, 6
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s6, s2, s6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s25, v64
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s45, s[4:5], 0x0
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
	v_cmp_gt_i32_e64 s26, s34, v3
	v_cmp_gt_i32_e64 s2, s34, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s45, s45, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s45, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge24_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s27, s25, s46
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s7, -1
                                        ; implicit-def: $sgpr27
.LBB0_3:                                ; %Flow187
	s_load_b64 s[28:29], s[0:1], 0x28
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v126, 0xe0, v0
	v_lshrrev_b32_e32 v127, 4, v0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
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
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v141, 0
	v_mov_b32_e32 v142, 0
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_lshl_b32 s33, s6, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x0
	s_load_b64 s[30:31], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_or_b32_e32 v1, 16, v127
	v_or_b32_e32 v2, 32, v127
	v_or_b32_e32 v4, 48, v127
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v5, s25, v127
	v_or_b32_e32 v6, s25, v1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v1, s33, v1
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v7, s25, v2
	v_or_b32_e32 v9, s25, v4
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v2, s33, v2
	v_or_b32_e32 v4, s33, v4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s35, v1
	v_dual_mov_b32 v140, 0 :: v_dual_lshlrev_b32 v1, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s10, s35, v2
	v_cmp_gt_i32_e64 s11, s35, v4
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s48, s45, 1
	v_bfe_i32 v2, v0, 7, 1
	v_dual_mov_b32 v138, 0 :: v_dual_and_b32 v1, 0x70, v1
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[65:66], null, s30, v127, v[64:65]
	v_bfe_i32 v4, v0, 3, 1
	s_cmp_lt_i32 s3, 16
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v8, s33, v127
	s_cselect_b32 s49, -1, 0
	s_add_i32 s27, s25, s46
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s34, v5
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[66:67], null, s30, 48, v[65:66]
	v_dual_mov_b32 v136, 0 :: v_dual_and_b32 v5, 0x7f, v0
	v_and_or_b32 v148, 0x88, v4, v1
	v_dual_mov_b32 v134, 0 :: v_dual_and_b32 v1, 0x88, v2
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v2, s27, v64
	v_dual_mov_b32 v142, 0 :: v_dual_and_b32 v3, 0xf0, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v10, 64, v8
	v_or_b32_e32 v11, 0x50, v8
	v_or_b32_e32 v12, 0x60, v8
	v_or_b32_e32 v13, 0x70, v8
	v_or_b32_e32 v14, 0x80, v8
	v_or_b32_e32 v15, 0x90, v8
	v_or_b32_e32 v16, 0xa0, v8
	v_or_b32_e32 v17, 0xb0, v8
	v_or_b32_e32 v18, 0xc0, v8
	v_or_b32_e32 v19, 0xd0, v8
	v_or_b32_e32 v20, 0xe0, v8
	v_or_b32_e32 v21, 0xf0, v8
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s34, v6
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s35, v8
	v_xor_b32_e32 v1, v1, v5
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v5, 16, v2
	v_dual_mov_b32 v139, 0 :: v_dual_add_nc_u32 v6, 32, v2
	v_dual_mov_b32 v137, 0 :: v_dual_add_nc_u32 v8, 48, v2
	v_mul_lo_u32 v150, v2, s31
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v2, 5, v0
	v_mad_u64_u32 v[67:68], null, 0x50, s30, v[65:66]
	v_mad_u64_u32 v[68:69], null, 0x60, s30, v[65:66]
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v143, s33, v0
	v_lshl_or_b32 v149, v126, 3, v148
	v_mul_lo_u32 v151, v5, s31
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v0, 1, v0
	v_dual_mov_b32 v130, 0 :: v_dual_lshlrev_b32 v5, 2, v3
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v2, 32, v2
	v_mad_u64_u32 v[69:70], null, 0x70, s30, v[65:66]
	v_mad_u64_u32 v[70:71], null, 0x90, s30, v[65:66]
	v_mad_u64_u32 v[71:72], null, 0xa0, s30, v[65:66]
	v_mad_u64_u32 v[72:73], null, 0xb0, s30, v[65:66]
	v_mad_u64_u32 v[73:74], null, 0xc0, s30, v[65:66]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s6, s34, v7
	v_xor_b32_e32 v4, 8, v148
	v_xor_b32_e32 v7, 8, v149
	v_mul_lo_u32 v152, v6, s31
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v0, 28, v0
	v_cndmask_b32_e64 v6, 0, 1, s49
	v_add3_u32 v2, 0, v5, v2
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	v_mad_u64_u32 v[74:75], null, 0xd0, s30, v[65:66]
	v_mad_u64_u32 v[75:76], null, 0xe0, s30, v[65:66]
	v_mul_lo_u32 v153, v8, s31
	v_mad_u64_u32 v[76:77], null, 0xf0, s30, v[65:66]
	.loc	1 1127 43                       ; ragged.py:1127:43
	s_mul_i32 s25, s44, s35
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s7, s34, v9
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s35, v10
	v_cmp_gt_i32_e64 s13, s35, v11
	v_cmp_gt_i32_e64 s14, s35, v12
	v_cmp_gt_i32_e64 s15, s35, v13
	v_cmp_gt_i32_e64 s16, s35, v14
	v_cmp_gt_i32_e64 s17, s35, v15
	v_cmp_gt_i32_e64 s18, s35, v16
	v_cmp_gt_i32_e64 s19, s35, v17
	v_cmp_gt_i32_e64 s20, s35, v18
	v_cmp_gt_i32_e64 s21, s35, v19
	v_cmp_gt_i32_e64 s22, s35, v20
	v_cmp_gt_i32_e64 s23, s35, v21
	v_cmp_gt_i32_e64 s24, s35, v143
	v_lshl_add_u32 v144, s30, 4, v65
	v_lshl_add_u32 v145, s30, 5, v65
	s_add_i32 s53, s33, s25
	v_lshl_add_u32 v146, s30, 6, v65
	v_lshl_add_u32 v147, s30, 7, v65
	v_cmp_ne_u32_e64 s25, 1, v6
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v154, 0, v1
	v_dual_mov_b32 v124, 0 :: v_dual_add_nc_u32 v155, 0, v4
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v156, 0, v7
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v157, v2, v0
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v158, 0, v3
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	s_mov_b32 s47, 0x31027000
	s_mov_b32 s46, 0x7ffffffe
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s43, s43, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s48, s48, -1
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s34, s44, s31
	s_mul_i32 s52, s27, s30
	s_and_b32 s45, s37, 0xffff
	s_mov_b32 s44, s36
	s_mul_i32 s53, s53, s30
	s_and_b32 s37, s39, 0xffff
	s_mov_b32 s36, s38
	s_mov_b32 s31, 0
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s54, s48, 4
	s_mov_b32 s48, s40
	s_mov_b32 s49, s41
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	s_mov_b32 s40, s42
	s_mov_b32 s41, s43
	s_mov_b32 s42, s46
	s_mov_b32 s43, s47
	s_mov_b32 s30, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v32, v150, s31, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s30, s31, s34
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v33, v151, s31, 1
	v_add_lshl_u32 v34, v152, s31, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s30, s30, s35
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v35, v153, s31, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v36, v143, s30, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_cndmask_b32_e64 v33, 0x80000000, v33, s4
	v_cndmask_b32_e64 v34, 0x80000000, v34, s26
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v36, 0x80000000, v36, s24
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v32, v32, s[48:51], 0 offen
	buffer_load_u16 v33, v33, s[48:51], 0 offen
	buffer_load_u16 v34, v34, s[48:51], 0 offen
	buffer_load_u16 v35, v35, s[48:51], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v36, v36, s[40:43], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s38, s31, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s30, s38, 4
	s_cmp_lg_u32 s31, s54
	s_mov_b32 s31, s38
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v53, v173, v33 :: v_dual_lshlrev_b32 v32, 16, v32
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v37, v190, v32 :: v_dual_lshlrev_b32 v34, 16, v34
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v40, v187, v32 :: v_dual_lshlrev_b32 v35, 16, v35
	v_mul_f32_e32 v38, v189, v32
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v55, v171, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v39, v188, v32 :: v_dual_mul_f32 v52, v174, v33
	v_dual_mul_f32 v41, v186, v32 :: v_dual_mul_f32 v54, v172, v33
	v_dual_mul_f32 v42, v185, v32 :: v_dual_mul_f32 v59, v167, v33
	v_dual_mul_f32 v43, v184, v32 :: v_dual_mul_f32 v56, v170, v33
	v_dual_mul_f32 v44, v183, v32 :: v_dual_mul_f32 v57, v169, v33
	v_dual_mul_f32 v45, v182, v32 :: v_dual_mul_f32 v58, v168, v33
	v_dual_mul_f32 v46, v181, v32 :: v_dual_mul_f32 v63, v163, v33
	v_dual_mul_f32 v47, v180, v32 :: v_dual_mul_f32 v60, v166, v33
	v_dual_mul_f32 v48, v179, v32 :: v_dual_mul_f32 v61, v165, v33
	v_dual_mul_f32 v49, v178, v32 :: v_dual_mul_f32 v62, v164, v33
	v_mul_f32_e32 v50, v177, v32
	v_dual_mul_f32 v51, v176, v32 :: v_dual_mul_f32 v162, v162, v33
	v_dual_mul_f32 v32, v175, v32 :: v_dual_mul_f32 v161, v161, v33
	v_dual_mul_f32 v160, v160, v33 :: v_dual_mul_f32 v31, v31, v34
	v_dual_mul_f32 v33, v159, v33 :: v_dual_mul_f32 v30, v30, v34
	v_mul_f32_e32 v15, v15, v35
	v_dual_mul_f32 v29, v29, v34 :: v_dual_mul_f32 v14, v14, v35
	v_dual_mul_f32 v28, v28, v34 :: v_dual_mul_f32 v175, v10, v35
	v_mul_f32_e32 v159, v27, v34
	v_dual_mul_f32 v163, v26, v34 :: v_dual_mul_f32 v174, v11, v35
	v_dual_mul_f32 v164, v25, v34 :: v_dual_mul_f32 v173, v12, v35
	v_dual_mul_f32 v165, v24, v34 :: v_dual_mul_f32 v6, v6, v35
	v_dual_mul_f32 v166, v23, v34 :: v_dual_mul_f32 v9, v9, v35
	v_dual_mul_f32 v167, v22, v34 :: v_dual_mul_f32 v8, v8, v35
	v_dual_mul_f32 v168, v21, v34 :: v_dual_mul_f32 v7, v7, v35
	v_dual_mul_f32 v169, v20, v34 :: v_dual_mul_f32 v2, v2, v35
	v_dual_mul_f32 v170, v19, v34 :: v_dual_mul_f32 v5, v5, v35
	v_dual_mul_f32 v171, v18, v34 :: v_dual_mul_f32 v4, v4, v35
	v_dual_mul_f32 v172, v17, v34 :: v_dual_mul_f32 v3, v3, v35
	v_dual_mul_f32 v34, v16, v34 :: v_dual_mul_f32 v1, v1, v35
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v157, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v158
	ds_load_b128 v[20:23], v158 offset:16
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v36, v13, v35
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[10:13], v158 offset:512
	ds_load_b128 v[24:27], v158 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v0, v0, v35 :: v_dual_fmac_f32 v141, v38, v17
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v142, v37, v16 :: v_dual_fmac_f32 v139, v40, v19
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v140, v39, v18 :: v_dual_fmac_f32 v137, v42, v21
	v_dual_fmac_f32 v138, v41, v20 :: v_dual_fmac_f32 v135, v44, v23
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v136, v43, v22 :: v_dual_fmac_f32 v133, v46, v11
	v_dual_fmac_f32 v134, v45, v10 :: v_dual_fmac_f32 v131, v48, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v132, v47, v12 :: v_dual_fmac_f32 v129, v50, v25
	v_dual_fmac_f32 v130, v49, v24 :: v_dual_fmac_f32 v125, v32, v27
	v_dual_fmac_f32 v128, v51, v26 :: v_dual_fmac_f32 v123, v53, v17
	v_dual_fmac_f32 v124, v52, v16 :: v_dual_fmac_f32 v121, v55, v19
	v_dual_fmac_f32 v122, v54, v18 :: v_dual_fmac_f32 v119, v57, v21
	v_dual_fmac_f32 v120, v56, v20 :: v_dual_fmac_f32 v117, v59, v23
	v_dual_fmac_f32 v118, v58, v22 :: v_dual_fmac_f32 v115, v61, v11
	v_dual_fmac_f32 v116, v60, v10 :: v_dual_fmac_f32 v113, v63, v13
	v_dual_fmac_f32 v114, v62, v12 :: v_dual_fmac_f32 v111, v161, v25
	v_dual_fmac_f32 v112, v162, v24 :: v_dual_fmac_f32 v109, v33, v27
	v_dual_fmac_f32 v110, v160, v26 :: v_dual_fmac_f32 v107, v30, v17
	v_dual_fmac_f32 v108, v31, v16 :: v_dual_fmac_f32 v105, v28, v19
	v_dual_fmac_f32 v106, v29, v18 :: v_dual_fmac_f32 v103, v163, v21
	v_dual_fmac_f32 v104, v159, v20 :: v_dual_fmac_f32 v101, v165, v23
	v_dual_fmac_f32 v102, v164, v22 :: v_dual_fmac_f32 v99, v167, v11
	v_dual_fmac_f32 v100, v166, v10 :: v_dual_fmac_f32 v97, v169, v13
	v_dual_fmac_f32 v98, v168, v12 :: v_dual_fmac_f32 v95, v171, v25
	v_dual_fmac_f32 v96, v170, v24 :: v_dual_fmac_f32 v89, v173, v19
	v_dual_fmac_f32 v94, v172, v26 :: v_dual_fmac_f32 v93, v34, v27
	v_dual_fmac_f32 v92, v15, v16 :: v_dual_fmac_f32 v91, v14, v17
	v_dual_fmac_f32 v90, v36, v18 :: v_dual_fmac_f32 v87, v175, v21
	v_dual_fmac_f32 v88, v174, v20 :: v_dual_fmac_f32 v85, v8, v23
	v_dual_fmac_f32 v86, v9, v22 :: v_dual_fmac_f32 v83, v6, v11
	v_dual_fmac_f32 v84, v7, v10 :: v_dual_fmac_f32 v79, v4, v13
	v_dual_fmac_f32 v82, v5, v12 :: v_dual_fmac_f32 v81, v2, v25
	v_dual_fmac_f32 v78, v3, v24 :: v_dual_fmac_f32 v77, v0, v27
	v_fmac_f32_e32 v80, v1, v26
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
	v_dual_mov_b32 v159, 0 :: v_dual_mov_b32 v160, 0
	v_dual_mov_b32 v161, 0 :: v_dual_mov_b32 v162, 0
	v_dual_mov_b32 v163, 0 :: v_dual_mov_b32 v164, 0
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
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s25
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v0, 0
	s_mov_b32 s55, s3
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
	s_add_i32 s56, s55, s30
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s38, s46
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s57, s56, s52
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s56, s56, s53
	.loc	1 1130 46                       ; ragged.py:1130:46
	v_add_nc_u32_e32 v159, s57, v65
	v_add_nc_u32_e32 v160, s57, v144
	v_add_nc_u32_e32 v161, s57, v145
	v_add_nc_u32_e32 v162, s57, v66
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_add_nc_u32_e32 v163, s56, v65
	v_add_nc_u32_e32 v175, s56, v73
	v_add_nc_u32_e32 v176, s56, v74
	v_add_nc_u32_e32 v177, s56, v75
	v_add_nc_u32_e32 v178, s56, v76
	v_add_nc_u32_e32 v164, s56, v144
	v_add_nc_u32_e32 v165, s56, v145
	v_add_nc_u32_e32 v166, s56, v66
	v_add_nc_u32_e32 v167, s56, v146
	v_add_nc_u32_e32 v168, s56, v67
	v_add_nc_u32_e32 v169, s56, v68
	v_add_nc_u32_e32 v170, s56, v69
	v_add_nc_u32_e32 v171, s56, v147
	v_add_nc_u32_e32 v172, s56, v70
	v_add_nc_u32_e32 v173, s56, v71
	v_add_nc_u32_e32 v174, s56, v72
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	v_cndmask_b32_e64 v160, 0x80000000, v160, s1
	v_cndmask_b32_e64 v161, 0x80000000, v161, s6
	v_cndmask_b32_e64 v162, 0x80000000, v162, s7
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v163, 0x80000000, v163, s8
	v_cndmask_b32_e64 v175, 0x80000000, v175, s20
	v_cndmask_b32_e64 v176, 0x80000000, v176, s21
	v_cndmask_b32_e64 v177, 0x80000000, v177, s22
	v_cndmask_b32_e64 v178, 0x80000000, v178, s23
	s_mov_b32 s39, s47
	v_cndmask_b32_e64 v164, 0x80000000, v164, s9
	v_cndmask_b32_e64 v165, 0x80000000, v165, s10
	v_cndmask_b32_e64 v166, 0x80000000, v166, s11
	v_cndmask_b32_e64 v167, 0x80000000, v167, s12
	v_cndmask_b32_e64 v168, 0x80000000, v168, s13
	v_cndmask_b32_e64 v169, 0x80000000, v169, s14
	v_cndmask_b32_e64 v170, 0x80000000, v170, s15
	v_cndmask_b32_e64 v171, 0x80000000, v171, s16
	v_cndmask_b32_e64 v172, 0x80000000, v172, s17
	v_cndmask_b32_e64 v173, 0x80000000, v173, s18
	v_cndmask_b32_e64 v174, 0x80000000, v174, s19
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0x3
	buffer_load_u8 v159, v159, s[44:47], 0 offen
	buffer_load_u8 v160, v160, s[44:47], 0 offen
	buffer_load_u8 v161, v161, s[44:47], 0 offen
	buffer_load_u8 v162, v162, s[44:47], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0xf
	buffer_load_u8 v179, v163, s[36:39], 0 offen
	buffer_load_u8 v180, v164, s[36:39], 0 offen
	buffer_load_u8 v181, v165, s[36:39], 0 offen
	buffer_load_u8 v182, v166, s[36:39], 0 offen
	buffer_load_u8 v183, v167, s[36:39], 0 offen
	buffer_load_u8 v184, v168, s[36:39], 0 offen
	buffer_load_u8 v185, v169, s[36:39], 0 offen
	buffer_load_u8 v186, v170, s[36:39], 0 offen
	buffer_load_u8 v187, v171, s[36:39], 0 offen
	buffer_load_u8 v188, v172, s[36:39], 0 offen
	buffer_load_u8 v189, v173, s[36:39], 0 offen
	buffer_load_u8 v190, v174, s[36:39], 0 offen
	buffer_load_u8 v175, v175, s[36:39], 0 offen
	buffer_load_u8 v176, v176, s[36:39], 0 offen
	buffer_load_u8 v177, v177, s[36:39], 0 offen
	buffer_load_u8 v178, v178, s[36:39], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_add_nc_u32_e32 v163, 0, v148
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_add_nc_u32_e32 v191, 0, v149
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s38, s55, 16
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s55, 0
	s_mov_b32 s55, s38
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(19)
	ds_store_b8 v154, v159
	s_waitcnt vmcnt(18)
	ds_store_b8 v154, v160 offset:256
	s_waitcnt vmcnt(17)
	ds_store_b8 v154, v161 offset:512
	s_waitcnt vmcnt(16)
	ds_store_b8 v154, v162 offset:768
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[159:162], v163 offset1:32
	ds_load_2addr_b64 v[163:166], v163 offset0:64 offset1:96
	ds_load_2addr_b64 v[167:170], v155 offset1:32
	ds_load_2addr_b64 v[171:174], v155 offset0:64 offset1:96
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(15)
	ds_store_b8 v154, v179
	s_waitcnt vmcnt(14)
	ds_store_b8 v154, v180 offset:256
	s_waitcnt vmcnt(13)
	ds_store_b8 v154, v181 offset:512
	s_waitcnt vmcnt(12)
	ds_store_b8 v154, v182 offset:768
	s_waitcnt vmcnt(11)
	ds_store_b8 v154, v183 offset:1024
	s_waitcnt vmcnt(10)
	ds_store_b8 v154, v184 offset:1280
	s_waitcnt vmcnt(9)
	ds_store_b8 v154, v185 offset:1536
	s_waitcnt vmcnt(8)
	ds_store_b8 v154, v186 offset:1792
	s_waitcnt vmcnt(7)
	ds_store_b8 v154, v187 offset:2048
	s_waitcnt vmcnt(6)
	ds_store_b8 v154, v188 offset:2304
	s_waitcnt vmcnt(5)
	ds_store_b8 v154, v189 offset:2560
	s_waitcnt vmcnt(4)
	ds_store_b8 v154, v190 offset:2816
	s_waitcnt vmcnt(3)
	ds_store_b8 v154, v175 offset:3072
	s_waitcnt vmcnt(2)
	ds_store_b8 v154, v176 offset:3328
	s_waitcnt vmcnt(1)
	ds_store_b8 v154, v177 offset:3584
	s_waitcnt vmcnt(0)
	ds_store_b8 v154, v178 offset:3840
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[175:178], v191 offset1:4
	ds_load_2addr_stride64_b64 v[179:182], v156 offset1:4
	.loc	1 1132 35                       ; ragged.py:1132:35
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[175:176], v[159:160], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[177:178], v[159:160], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[175:176], v[161:162], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[177:178], v[161:162], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[175:176], v[163:164], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[177:178], v[163:164], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[175:176], v[165:166], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[177:178], v[165:166], v[56:63] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[0:7], v[179:180], v[167:168], v[0:7] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[8:15], v[181:182], v[167:168], v[8:15] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[16:23], v[179:180], v[169:170], v[16:23] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[24:31], v[181:182], v[169:170], v[24:31] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[179:180], v[171:172], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[181:182], v[171:172], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[48:55], v[179:180], v[173:174], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[56:63], v[181:182], v[173:174], v[56:63] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v190, v0
	v_cvt_f32_i32_e32 v189, v1
	v_cvt_f32_i32_e32 v188, v2
	v_cvt_f32_i32_e32 v187, v3
	v_cvt_f32_i32_e32 v186, v4
	v_cvt_f32_i32_e32 v185, v5
	v_cvt_f32_i32_e32 v184, v6
	v_cvt_f32_i32_e32 v183, v7
	v_cvt_f32_i32_e32 v182, v8
	v_cvt_f32_i32_e32 v181, v9
	v_cvt_f32_i32_e32 v180, v10
	v_cvt_f32_i32_e32 v179, v11
	v_cvt_f32_i32_e32 v178, v12
	v_cvt_f32_i32_e32 v177, v13
	v_cvt_f32_i32_e32 v176, v14
	v_cvt_f32_i32_e32 v175, v15
	v_cvt_f32_i32_e32 v174, v16
	v_cvt_f32_i32_e32 v173, v17
	v_cvt_f32_i32_e32 v172, v18
	v_cvt_f32_i32_e32 v171, v19
	v_cvt_f32_i32_e32 v170, v20
	v_cvt_f32_i32_e32 v169, v21
	v_cvt_f32_i32_e32 v168, v22
	v_cvt_f32_i32_e32 v167, v23
	v_cvt_f32_i32_e32 v166, v24
	v_cvt_f32_i32_e32 v165, v25
	v_cvt_f32_i32_e32 v164, v26
	v_cvt_f32_i32_e32 v163, v27
	v_cvt_f32_i32_e32 v162, v28
	v_cvt_f32_i32_e32 v161, v29
	v_cvt_f32_i32_e32 v160, v30
	v_cvt_f32_i32_e32 v159, v31
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
.LBB0_10:                               ; %._crit_edge24
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v0, 1, v126
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s3, s27, s35
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_and_or_b32 v3, v127, 1, v0
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
	buffer_store_b32 v142, v22, s[28:31], 0 offen
	buffer_store_b32 v141, v23, s[28:31], 0 offen
	buffer_store_b32 v140, v21, s[28:31], 0 offen
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
	buffer_store_b32 v139, v2, s[28:31], 0 offen
	buffer_store_b32 v138, v21, s[28:31], 0 offen
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
	buffer_store_b32 v137, v22, s[28:31], 0 offen
	buffer_store_b32 v136, v23, s[28:31], 0 offen
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
	buffer_store_b32 v135, v2, s[28:31], 0 offen
	buffer_store_b32 v134, v21, s[28:31], 0 offen
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
	buffer_store_b32 v133, v22, s[28:31], 0 offen
	buffer_store_b32 v132, v23, s[28:31], 0 offen
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
	buffer_store_b32 v131, v2, s[28:31], 0 offen
	buffer_store_b32 v130, v21, s[28:31], 0 offen
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
	buffer_store_b32 v129, v22, s[28:31], 0 offen
	buffer_store_b32 v128, v23, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v22, v19, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s4, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v125, v0, s[28:31], 0 offen
	buffer_store_b32 v124, v2, s[28:31], 0 offen
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
	buffer_store_b32 v123, v21, s[28:31], 0 offen
	buffer_store_b32 v122, v22, s[28:31], 0 offen
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
	buffer_store_b32 v121, v0, s[28:31], 0 offen
	buffer_store_b32 v120, v2, s[28:31], 0 offen
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
	buffer_store_b32 v119, v21, s[28:31], 0 offen
	buffer_store_b32 v118, v22, s[28:31], 0 offen
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
	buffer_store_b32 v117, v0, s[28:31], 0 offen
	buffer_store_b32 v116, v2, s[28:31], 0 offen
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
	buffer_store_b32 v115, v21, s[28:31], 0 offen
	buffer_store_b32 v114, v22, s[28:31], 0 offen
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
	buffer_store_b32 v113, v0, s[28:31], 0 offen
	buffer_store_b32 v112, v2, s[28:31], 0 offen
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
	s_and_b32 s3, s26, s18
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v111, v21, s[28:31], 0 offen
	buffer_store_b32 v110, v22, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v17, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s17
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v109, v0, s[28:31], 0 offen
	buffer_store_b32 v108, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v16, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v14, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v107, v19, s[28:31], 0 offen
	buffer_store_b32 v106, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v13, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v15, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v105, v0, s[28:31], 0 offen
	buffer_store_b32 v104, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v12, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v11, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v103, v19, s[28:31], 0 offen
	buffer_store_b32 v102, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v10, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v9, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v101, v0, s[28:31], 0 offen
	buffer_store_b32 v100, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v8, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v20, v7, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v99, v19, s[28:31], 0 offen
	buffer_store_b32 v98, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v19, v20, v6, 2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s3
	v_add_lshl_u32 v21, v20, v5, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v97, v0, s[28:31], 0 offen
	buffer_store_b32 v96, v2, s[28:31], 0 offen
	v_add_lshl_u32 v0, v20, v4, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v2, v1, v3, 2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s26, vcc_lo
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
	buffer_store_b32 v95, v19, s[28:31], 0 offen
	buffer_store_b32 v94, v21, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v93, v0, s[28:31], 0 offen
	buffer_store_b32 v92, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	v_add_lshl_u32 v0, v1, v16, 2
	v_add_lshl_u32 v2, v1, v14, 2
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b32 v91, v3, s[28:31], 0 offen
	buffer_store_b32 v90, v17, s[28:31], 0 offen
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
	buffer_store_b32 v89, v0, s[28:31], 0 offen
	buffer_store_b32 v88, v2, s[28:31], 0 offen
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
	buffer_store_b32 v87, v3, s[28:31], 0 offen
	buffer_store_b32 v86, v13, s[28:31], 0 offen
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
	buffer_store_b32 v85, v0, s[28:31], 0 offen
	buffer_store_b32 v84, v2, s[28:31], 0 offen
	v_cndmask_b32_e64 v3, 0x80000000, v3, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v0, v1, v8, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	v_add_lshl_u32 v2, v1, v7, 2
	s_clause 0x1
	buffer_store_b32 v83, v3, s[28:31], 0 offen
	buffer_store_b32 v82, v9, s[28:31], 0 offen
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
	buffer_store_b32 v79, v0, s[28:31], 0 offen
	buffer_store_b32 v78, v2, s[28:31], 0 offen
	buffer_store_b32 v81, v3, s[28:31], 0 offen
	buffer_store_b32 v80, v4, s[28:31], 0 offen
	buffer_store_b32 v77, v1, s[28:31], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_vgpr 192
		.amdhsa_next_free_sgpr 58
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 192
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6992
; TotalNumSgprs: 60
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 192
; Occupancy: 8
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nt_sc32_evenk_float32_bm64_bn256_bk64_w8_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
