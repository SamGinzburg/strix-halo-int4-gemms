	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v82, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s18, 31
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s19, 0x7f
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp11:
	.loc	1 997 27 is_stmt 1              ; ragged.py:997:27
	s_mul_i32 s4, s5, s4
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
	s_abs_i32 s9, s5
	.loc	1 998 20                        ; ragged.py:998:20
	s_xor_b32 s6, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_cvt_f32_u32 s7, s9
	.loc	1 998 20                        ; ragged.py:998:20
	s_sub_i32 s12, s6, s8
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s6, 0, s9
	.loc	1 999 22                        ; ragged.py:999:22
	s_mul_i32 s4, s12, s4
	.loc	1 1000 17                       ; ragged.py:1000:17
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 999 16                        ; ragged.py:999:16
	s_sub_i32 s2, s2, s4
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s14, s12, s18
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s10, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	s_ashr_i32 s10, s10, 31
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s6, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s7, s6
	s_add_i32 s4, s7, s4
	s_load_b64 s[6:7], s[0:1], 0x20
	s_mul_hi_u32 s4, s8, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s4, s9
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s4, 1
	s_sub_i32 s13, s8, s9
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	s_cselect_b32 s8, s13, s8
	s_add_i32 s11, s4, 1
	s_cmp_ge_u32 s8, s9
	s_cselect_b32 s4, s11, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s13, s12, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s4, s4, s10
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[12:13], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s10, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s4, s10, s5
	.loc	1 1003 18                       ; ragged.py:1003:18
	s_lshl_b32 s11, s10, 5
	.loc	1 1001 17                       ; ragged.py:1001:17
	s_sub_i32 s4, s2, s4
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s11, v82
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s13, s[6:7], 0x0
	s_mov_b32 s5, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s17, s18, v1
	v_cmp_gt_i32_e64 s2, s18, v2
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s13, s13, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s13, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge46_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s33, s11, s14
	s_lshl_b32 s30, s19, 4
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s5, -1
                                        ; implicit-def: $sgpr33
                                        ; implicit-def: $sgpr30
.LBB0_3:                                ; %Flow217
	s_load_b64 s[28:29], s[0:1], 0x28
	v_dual_mov_b32 v81, 0 :: v_dual_and_b32 v96, 0x70, v0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v108, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v112, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v114, 0
	v_mov_b32_e32 v111, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s16, s4, 7
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b256 s[20:27], s[0:1], 0x0
	s_load_b64 s[30:31], s[0:1], 0x38
	.loc	1 1003 36 is_stmt 1             ; ragged.py:1003:36
	v_lshrrev_b32_e32 v2, 5, v0
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v49, s16, v0
	.loc	1 1118 23                       ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 5
	v_dual_mov_b32 v114, 0 :: v_dual_and_b32 v3, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s11, v2
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s36, s13, 1
	s_cmp_lt_i32 s3, 64
	v_lshrrev_b32_e32 v3, 1, v3
	v_mov_b32_e32 v112, 0
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v4, 4, v1
	v_or_b32_e32 v5, 8, v1
	v_or_b32_e32 v6, 12, v1
	v_or_b32_e32 v7, 16, v1
	v_or_b32_e32 v8, 20, v1
	v_or_b32_e32 v9, 24, v1
	v_or_b32_e32 v10, 28, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s0, s18, v1
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v1, 31, v0
	s_cselect_b32 s37, -1, 0
	s_add_i32 s33, s11, s14
	v_dual_mov_b32 v109, 0 :: v_dual_lshlrev_b32 v14, 5, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[50:51], null, s30, v2, v[1:2]
	v_dual_mov_b32 v110, 0 :: v_dual_lshlrev_b32 v1, 1, v0
	v_dual_mov_b32 v108, 0 :: v_dual_add_nc_u32 v11, s33, v82
	v_add3_u32 v120, 0, v82, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v111, 0 :: v_dual_and_b32 v2, 24, v1
	v_mad_u64_u32 v[51:52], null, s30, 12, v[50:51]
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v15, 16, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v119, v82, 5, v2
	v_mul_lo_u32 v121, v11, s31
	v_dual_mov_b32 v104, 0 :: v_dual_lshlrev_b32 v3, 2, v96
	v_mad_u64_u32 v[52:53], null, s30, 20, v[50:51]
	v_mad_u64_u32 v[53:54], null, s30, 24, v[50:51]
	v_mad_u64_u32 v[54:55], null, s30, 28, v[50:51]
	v_mad_u64_u32 v[55:56], null, s19, 3, v[49:50]
	v_mad_u64_u32 v[56:57], null, s19, 5, v[49:50]
	v_mad_u64_u32 v[57:58], null, s19, 6, v[49:50]
	v_mad_u64_u32 v[58:59], null, s19, 7, v[49:50]
	v_mad_u64_u32 v[59:60], null, s19, 9, v[49:50]
	v_mad_u64_u32 v[60:61], null, s19, 10, v[49:50]
	v_mad_u64_u32 v[61:62], null, s19, 11, v[49:50]
	v_mad_u64_u32 v[62:63], null, s19, 12, v[49:50]
	v_mad_u64_u32 v[63:64], null, s19, 13, v[49:50]
	v_mad_u64_u32 v[64:65], null, s19, 14, v[49:50]
	v_mad_u64_u32 v[65:66], null, s19, 15, v[49:50]
	v_mad_u64_u32 v[66:67], null, s19, 17, v[49:50]
	v_mad_u64_u32 v[67:68], null, s19, 18, v[49:50]
	v_mad_u64_u32 v[68:69], null, s19, 19, v[49:50]
	v_mad_u64_u32 v[69:70], null, s19, 20, v[49:50]
	v_mad_u64_u32 v[70:71], null, s19, 21, v[49:50]
	v_mad_u64_u32 v[71:72], null, s19, 22, v[49:50]
	v_mad_u64_u32 v[72:73], null, s19, 23, v[49:50]
	v_dual_mov_b32 v102, 0 :: v_dual_and_b32 v11, 32, v14
	v_mad_u64_u32 v[73:74], null, s19, 24, v[49:50]
	v_mad_u64_u32 v[74:75], null, s19, 25, v[49:50]
	v_mad_u64_u32 v[75:76], null, s19, 26, v[49:50]
	v_mad_u64_u32 v[76:77], null, s19, 27, v[49:50]
	v_mad_u64_u32 v[77:78], null, s19, 28, v[49:50]
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s1, s18, v4
	v_cmp_gt_i32_e64 s4, s18, v5
	v_cmp_gt_i32_e64 s5, s18, v6
	v_cmp_gt_i32_e64 s6, s18, v7
	v_cmp_gt_i32_e64 s7, s18, v8
	v_cmp_gt_i32_e64 s8, s18, v9
	v_cmp_gt_i32_e64 s9, s18, v10
	v_xor_b32_e32 v2, 0x88, v0
	v_xor_b32_e32 v4, 0x110, v0
	v_xor_b32_e32 v5, 0x198, v0
	v_xor_b32_e32 v6, 8, v119
	v_xor_b32_e32 v7, 16, v119
	v_xor_b32_e32 v8, 24, v119
	v_or_b32_e32 v9, 0x380, v0
	v_or_b32_e32 v10, 0x780, v0
	v_or_b32_e32 v12, 0xb80, v0
	v_or_b32_e32 v13, 0xf80, v0
	v_dual_mov_b32 v100, 0 :: v_dual_and_b32 v1, 28, v1
	v_add3_u32 v3, 0, v3, v11
	v_cndmask_b32_e64 v11, 0, 1, s37
	v_dual_mov_b32 v107, 0 :: v_dual_lshlrev_b32 v14, 1, v96
	v_mad_u64_u32 v[78:79], null, s19, 29, v[49:50]
	v_mad_u64_u32 v[79:80], null, s19, 30, v[49:50]
	v_mul_lo_u32 v122, v15, s31
	v_mad_u64_u32 v[80:81], null, s19, 31, v[49:50]
	.loc	1 1129 43                       ; ragged.py:1129:43
	s_mul_i32 s18, s12, s30
	s_mul_i32 s35, s33, s30
	v_lshl_add_u32 v115, s30, 2, v50
	v_lshl_add_u32 v116, s30, 3, v50
	v_lshl_add_u32 v117, s30, 4, v50
	s_lshl_b32 s30, s19, 4
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s19, v49
	v_dual_mov_b32 v113, 0 :: v_dual_add_nc_u32 v118, s30, v49
	v_cmp_ne_u32_e64 s11, 1, v11
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v123, 0, v0
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v124, 0, v2
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v125, 0, v4
	v_dual_mov_b32 v103, 0 :: v_dual_add_nc_u32 v126, 0, v5
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v127, 0, v6
	v_dual_mov_b32 v101, 0 :: v_dual_add_nc_u32 v128, 0, v7
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v129, 0, v8
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v130, 0, v9
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v131, 0, v10
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v132, 0, v12
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v133, 0, v13
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v134, v3, v1
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v135, 0, v14
	v_mov_b32_e32 v93, 0
	v_mov_b32_e32 v91, 0
	v_mov_b32_e32 v89, 0
	v_mov_b32_e32 v87, 0
	v_mov_b32_e32 v85, 0
	v_mov_b32_e32 v83, 0
	v_mov_b32_e32 v81, 0
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s27, s27, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s36, s36, -1
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s34, s12, s31
	s_mov_b32 s40, 0
	s_and_b32 s13, s21, 0xffff
	s_mov_b32 s12, s20
	s_and_b32 s21, s23, 0xffff
	s_mov_b32 s20, s22
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s31, s36, 6
	s_mov_b32 s36, s24
	s_mov_b32 s37, s25
	s_mov_b32 s38, s14
	s_mov_b32 s39, s15
	s_mov_b32 s24, s26
	s_mov_b32 s25, s27
	s_mov_b32 s26, s14
	s_mov_b32 s27, s15
	s_mov_b32 s41, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s22, s40, s34
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v17, v121, s40, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s22, s22, s19
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v18, v122, s40, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v19, v49, s22, 1
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s22, s40, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v17, 0x80000000, v17, s17
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s41, s22, 6
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v19, 0x80000000, v19, s10
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_lg_u32 s40, s31
	s_mov_b32 s40, s22
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x1
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	buffer_load_u16 v18, v18, s[36:39], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v17, 16, v17
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v29, 16, v18
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v31, v47, v17 :: v_dual_lshlrev_b32 v18, 16, v19
	v_mul_f32_e32 v30, v48, v17
	v_mul_f32_e32 v42, v42, v17
	v_mul_f32_e32 v45, v45, v17
	v_mul_f32_e32 v43, v43, v17
	v_mul_f32_e32 v32, v46, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v134, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v47, v13, v29
	v_mul_f32_e32 v3, v3, v29
	v_mul_f32_e32 v10, v10, v29
	v_mul_f32_e32 v136, v11, v29
	v_mul_f32_e32 v2, v2, v29
	v_mul_f32_e32 v8, v8, v29
	v_mul_f32_e32 v46, v14, v29
	v_mul_f32_e32 v48, v12, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[11:14], v135 offset:256
	ds_load_b128 v[25:28], v135 offset:272
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v5, v5, v29
	v_mul_f32_e32 v7, v7, v29
	v_mul_f32_e32 v37, v37, v17
	v_mul_f32_e32 v38, v38, v17
	v_mul_f32_e32 v35, v35, v17
	v_mul_f32_e32 v36, v36, v17
	v_mul_f32_e32 v9, v9, v29
	v_mul_f32_e32 v4, v4, v29
	v_mul_f32_e32 v1, v1, v29
	v_mul_f32_e32 v6, v6, v29
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[21:24], v135 offset:16
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v15, v15, v29 :: v_dual_fmac_f32 v86, v5, v14
	v_dual_mul_f32 v33, v33, v17 :: v_dual_fmac_f32 v88, v7, v12
	v_mul_f32_e32 v34, v34, v17
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v84, v4, v25 :: v_dual_fmac_f32 v85, v3, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v99, v33, v28
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v39, v39, v17 :: v_dual_fmac_f32 v100, v34, v27
	v_dual_mul_f32 v40, v40, v17 :: v_dual_fmac_f32 v83, v2, v27
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_fmac_f32_e32 v89, v8, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v105, v39, v12
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v41, v41, v17 :: v_dual_fmac_f32 v106, v40, v11
	v_mul_f32_e32 v44, v44, v17
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[17:20], v135
	.loc	1 1219 17                       ; ragged.py:1219:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v90, v9, v24
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v16, v16, v29
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v108, v42, v23 :: v_dual_fmac_f32 v107, v41, v24
	v_dual_fmac_f32 v110, v44, v21 :: v_dual_fmac_f32 v91, v10, v23
	v_fmac_f32_e32 v92, v136, v22
	v_dual_fmac_f32 v101, v35, v26 :: v_dual_fmac_f32 v102, v36, v25
	v_fmac_f32_e32 v81, v1, v28
	v_fmac_f32_e32 v87, v6, v13
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v111, v30, v17 :: v_dual_fmac_f32 v114, v31, v18
	v_dual_fmac_f32 v112, v45, v20 :: v_dual_fmac_f32 v109, v43, v22
	v_fmac_f32_e32 v113, v32, v19
	v_dual_fmac_f32 v97, v15, v18 :: v_dual_fmac_f32 v98, v16, v17
	v_dual_fmac_f32 v95, v46, v19 :: v_dual_fmac_f32 v94, v47, v20
	v_dual_fmac_f32 v103, v37, v14 :: v_dual_fmac_f32 v104, v38, v13
	v_fmac_f32_e32 v93, v48, v21
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cbranch_scc0 .LBB0_10
.LBB0_6:                                ; %.preheader
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v48, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s11
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s42, s3
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
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
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s43, s42, s41
	v_add_nc_u32_e32 v33, s19, v49
	.loc	1 1130 46                       ; ragged.py:1130:46
	s_add_i32 s44, s43, s35
	v_lshl_add_u32 v34, s19, 1, v49
	v_lshl_add_u32 v35, s19, 2, v49
	v_lshl_add_u32 v36, s19, 3, v49
	.loc	1 1131 46                       ; ragged.py:1131:46
	s_add_i32 s43, s43, s18
	v_add_nc_u32_e32 v37, s44, v50
	v_add_nc_u32_e32 v41, s44, v117
	v_add_nc_u32_e32 v38, s44, v115
	s_mul_i32 s43, s43, s19
	v_add_nc_u32_e32 v42, s44, v52
	v_add_nc_u32_e32 v39, s44, v116
	v_add_nc_u32_e32 v40, s44, v51
	v_add_nc_u32_e32 v43, s44, v53
	v_add_nc_u32_e32 v44, s44, v54
	v_add_nc_u32_e32 v136, s43, v58
	v_add_nc_u32_e32 v137, s43, v59
	v_add_nc_u32_e32 v138, s43, v60
	v_add_nc_u32_e32 v139, s43, v61
	v_add_nc_u32_e32 v140, s43, v62
	v_add_nc_u32_e32 v141, s43, v63
	v_add_nc_u32_e32 v142, s43, v64
	v_add_nc_u32_e32 v143, s43, v65
	v_add_nc_u32_e32 v144, s43, v118
	v_add_nc_u32_e32 v145, s43, v66
	v_add_nc_u32_e32 v146, s43, v67
	v_add_nc_u32_e32 v147, s43, v68
	v_add_nc_u32_e32 v148, s43, v69
	v_add_nc_u32_e32 v149, s43, v70
	v_add_nc_u32_e32 v150, s43, v71
	v_add_nc_u32_e32 v151, s43, v72
	v_add_nc_u32_e32 v152, s43, v73
	v_add_nc_u32_e32 v153, s43, v74
	v_add_nc_u32_e32 v154, s43, v75
	v_add_nc_u32_e32 v155, s43, v76
	v_add_nc_u32_e32 v156, s43, v77
	v_add_nc_u32_e32 v157, s43, v78
	v_add_nc_u32_e32 v158, s43, v79
	v_add_nc_u32_e32 v159, s43, v80
	v_add_nc_u32_e32 v45, s43, v49
	v_add_nc_u32_e32 v33, s43, v33
	v_add_nc_u32_e32 v34, s43, v34
	v_add_nc_u32_e32 v46, s43, v55
	v_add_nc_u32_e32 v35, s43, v35
	v_add_nc_u32_e32 v47, s43, v56
	v_add_nc_u32_e32 v48, s43, v57
	v_add_nc_u32_e32 v36, s43, v36
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	v_cndmask_b32_e64 v41, 0x80000000, v41, s6
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s7
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	v_cndmask_b32_e64 v43, 0x80000000, v43, s8
	v_cndmask_b32_e64 v44, 0x80000000, v44, s9
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v136, 0x80000000, v136, s10
	v_cndmask_b32_e64 v137, 0x80000000, v137, s10
	v_cndmask_b32_e64 v138, 0x80000000, v138, s10
	v_cndmask_b32_e64 v139, 0x80000000, v139, s10
	v_cndmask_b32_e64 v140, 0x80000000, v140, s10
	v_cndmask_b32_e64 v141, 0x80000000, v141, s10
	v_cndmask_b32_e64 v142, 0x80000000, v142, s10
	v_cndmask_b32_e64 v143, 0x80000000, v143, s10
	v_cndmask_b32_e64 v144, 0x80000000, v144, s10
	v_cndmask_b32_e64 v145, 0x80000000, v145, s10
	v_cndmask_b32_e64 v146, 0x80000000, v146, s10
	v_cndmask_b32_e64 v147, 0x80000000, v147, s10
	v_cndmask_b32_e64 v148, 0x80000000, v148, s10
	v_cndmask_b32_e64 v149, 0x80000000, v149, s10
	v_cndmask_b32_e64 v150, 0x80000000, v150, s10
	v_cndmask_b32_e64 v151, 0x80000000, v151, s10
	v_cndmask_b32_e64 v152, 0x80000000, v152, s10
	v_cndmask_b32_e64 v153, 0x80000000, v153, s10
	v_cndmask_b32_e64 v154, 0x80000000, v154, s10
	v_cndmask_b32_e64 v155, 0x80000000, v155, s10
	v_cndmask_b32_e64 v156, 0x80000000, v156, s10
	v_cndmask_b32_e64 v157, 0x80000000, v157, s10
	v_cndmask_b32_e64 v158, 0x80000000, v158, s10
	v_cndmask_b32_e64 v159, 0x80000000, v159, s10
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	v_cndmask_b32_e64 v45, 0x80000000, v45, s10
	v_cndmask_b32_e64 v33, 0x80000000, v33, s10
	v_cndmask_b32_e64 v34, 0x80000000, v34, s10
	v_cndmask_b32_e64 v46, 0x80000000, v46, s10
	v_cndmask_b32_e64 v35, 0x80000000, v35, s10
	v_cndmask_b32_e64 v47, 0x80000000, v47, s10
	v_cndmask_b32_e64 v48, 0x80000000, v48, s10
	v_cndmask_b32_e64 v36, 0x80000000, v36, s10
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_clause 0x7
	buffer_load_u8 v37, v37, s[12:15], 0 offen
	buffer_load_u8 v41, v41, s[12:15], 0 offen
	buffer_load_u8 v38, v38, s[12:15], 0 offen
	buffer_load_u8 v42, v42, s[12:15], 0 offen
	buffer_load_u8 v39, v39, s[12:15], 0 offen
	buffer_load_u8 v43, v43, s[12:15], 0 offen
	buffer_load_u8 v44, v44, s[12:15], 0 offen
	buffer_load_u8 v40, v40, s[12:15], 0 offen
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_clause 0x1f
	buffer_load_u8 v160, v45, s[20:23], 0 offen
	buffer_load_u8 v161, v33, s[20:23], 0 offen
	buffer_load_u8 v162, v34, s[20:23], 0 offen
	buffer_load_u8 v163, v46, s[20:23], 0 offen
	buffer_load_u8 v164, v35, s[20:23], 0 offen
	buffer_load_u8 v165, v47, s[20:23], 0 offen
	buffer_load_u8 v166, v48, s[20:23], 0 offen
	buffer_load_u8 v167, v36, s[20:23], 0 offen
	buffer_load_u8 v137, v137, s[20:23], 0 offen
	buffer_load_u8 v138, v138, s[20:23], 0 offen
	buffer_load_u8 v139, v139, s[20:23], 0 offen
	buffer_load_u8 v140, v140, s[20:23], 0 offen
	buffer_load_u8 v141, v141, s[20:23], 0 offen
	buffer_load_u8 v142, v142, s[20:23], 0 offen
	buffer_load_u8 v144, v144, s[20:23], 0 offen
	buffer_load_u8 v145, v145, s[20:23], 0 offen
	buffer_load_u8 v146, v146, s[20:23], 0 offen
	buffer_load_u8 v147, v147, s[20:23], 0 offen
	buffer_load_u8 v148, v148, s[20:23], 0 offen
	buffer_load_u8 v149, v149, s[20:23], 0 offen
	buffer_load_u8 v150, v150, s[20:23], 0 offen
	buffer_load_u8 v152, v152, s[20:23], 0 offen
	buffer_load_u8 v153, v153, s[20:23], 0 offen
	buffer_load_u8 v154, v154, s[20:23], 0 offen
	buffer_load_u8 v155, v155, s[20:23], 0 offen
	buffer_load_u8 v156, v156, s[20:23], 0 offen
	buffer_load_u8 v157, v157, s[20:23], 0 offen
	buffer_load_u8 v136, v136, s[20:23], 0 offen
	buffer_load_u8 v143, v143, s[20:23], 0 offen
	buffer_load_u8 v151, v151, s[20:23], 0 offen
	buffer_load_u8 v158, v158, s[20:23], 0 offen
	buffer_load_u8 v159, v159, s[20:23], 0 offen
	.loc	1 1130 38                       ; ragged.py:1130:38
	v_add_nc_u32_e32 v33, 0, v119
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s22, s42, 32
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s42, 32
	s_mov_b32 s42, s22
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(39)
	ds_store_b8 v123, v37
	s_waitcnt vmcnt(38)
	ds_store_b8 v123, v41 offset:512
	s_waitcnt vmcnt(37)
	ds_store_b8 v124, v38
	s_waitcnt vmcnt(36)
	ds_store_b8 v124, v42 offset:512
	s_waitcnt vmcnt(35)
	ds_store_b8 v125, v39
	s_waitcnt vmcnt(34)
	ds_store_b8 v125, v43 offset:512
	s_waitcnt vmcnt(32)
	ds_store_b8 v126, v40
	ds_store_b8 v126, v44 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[45:48], v33 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v127 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v128 offset1:1
	ds_load_2addr_stride64_b64 v[33:36], v129 offset1:1
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(31)
	ds_store_b8 v123, v160
	s_waitcnt vmcnt(30)
	ds_store_b8 v123, v161 offset:128
	s_waitcnt vmcnt(29)
	ds_store_b8 v123, v162 offset:256
	s_waitcnt vmcnt(28)
	ds_store_b8 v123, v163 offset:384
	s_waitcnt vmcnt(27)
	ds_store_b8 v123, v164 offset:512
	s_waitcnt vmcnt(26)
	ds_store_b8 v123, v165 offset:640
	s_waitcnt vmcnt(25)
	ds_store_b8 v123, v166 offset:768
	s_waitcnt vmcnt(24)
	ds_store_b8 v123, v167 offset:1024
	s_waitcnt vmcnt(23)
	ds_store_b8 v123, v137 offset:1152
	s_waitcnt vmcnt(22)
	ds_store_b8 v123, v138 offset:1280
	s_waitcnt vmcnt(21)
	ds_store_b8 v123, v139 offset:1408
	s_waitcnt vmcnt(20)
	ds_store_b8 v123, v140 offset:1536
	s_waitcnt vmcnt(19)
	ds_store_b8 v123, v141 offset:1664
	s_waitcnt vmcnt(18)
	ds_store_b8 v123, v142 offset:1792
	s_waitcnt vmcnt(17)
	ds_store_b8 v123, v144 offset:2048
	s_waitcnt vmcnt(16)
	ds_store_b8 v123, v145 offset:2176
	s_waitcnt vmcnt(15)
	ds_store_b8 v123, v146 offset:2304
	s_waitcnt vmcnt(14)
	ds_store_b8 v123, v147 offset:2432
	s_waitcnt vmcnt(13)
	ds_store_b8 v123, v148 offset:2560
	s_waitcnt vmcnt(12)
	ds_store_b8 v123, v149 offset:2688
	s_waitcnt vmcnt(11)
	ds_store_b8 v123, v150 offset:2816
	s_waitcnt vmcnt(10)
	ds_store_b8 v123, v152 offset:3072
	s_waitcnt vmcnt(9)
	ds_store_b8 v123, v153 offset:3200
	s_waitcnt vmcnt(8)
	ds_store_b8 v123, v154 offset:3328
	s_waitcnt vmcnt(7)
	ds_store_b8 v123, v155 offset:3456
	s_waitcnt vmcnt(6)
	ds_store_b8 v123, v156 offset:3584
	s_waitcnt vmcnt(5)
	ds_store_b8 v123, v157 offset:3712
	s_waitcnt vmcnt(4)
	ds_store_b8 v130, v136
	s_waitcnt vmcnt(3)
	ds_store_b8 v131, v143
	s_waitcnt vmcnt(2)
	ds_store_b8 v132, v151
	s_waitcnt vmcnt(1)
	ds_store_b8 v123, v158 offset:3840
	s_waitcnt vmcnt(0)
	ds_store_b8 v133, v159
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v136, v120 offset:640
	ds_load_u8 v137, v120 offset:512
	ds_load_u8 v138, v120 offset:896
	ds_load_u8 v139, v120 offset:960
	ds_load_u8 v140, v120 offset:832
	ds_load_u8 v141, v120 offset:704
	ds_load_u8 v142, v120 offset:768
	ds_load_u8 v143, v120 offset:576
	ds_load_u8 v144, v120 offset:128
	ds_load_u8 v145, v120
	ds_load_u8 v146, v120 offset:384
	ds_load_u8 v147, v120 offset:256
	ds_load_u8 v148, v120 offset:448
	ds_load_u8 v149, v120 offset:320
	ds_load_u8 v150, v120 offset:192
	ds_load_u8 v151, v120 offset:64
	ds_load_u8 v152, v120 offset:1664
	ds_load_u8 v153, v120 offset:1536
	ds_load_u8 v154, v120 offset:1920
	ds_load_u8 v155, v120 offset:1792
	ds_load_u8 v156, v120 offset:1984
	ds_load_u8 v157, v120 offset:1856
	ds_load_u8 v158, v120 offset:1728
	ds_load_u8 v159, v120 offset:1600
	ds_load_u8 v160, v120 offset:1152
	ds_load_u8 v161, v120 offset:1024
	ds_load_u8 v162, v120 offset:1472
	ds_load_u8 v163, v120 offset:1344
	ds_load_u8 v164, v120 offset:1408
	ds_load_u8 v165, v120 offset:1280
	ds_load_u8 v166, v120 offset:1216
	ds_load_u8 v167, v120 offset:1088
	ds_load_u8 v168, v120 offset:2688
	ds_load_u8 v169, v120 offset:2560
	ds_load_u8 v170, v120 offset:2944
	s_waitcnt lgkmcnt(33)
	v_perm_b32 v136, v137, v136, 0xc0c0004
	ds_load_u8 v137, v120 offset:2816
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v138, v142, v138, 0xc0c0004
	ds_load_u8 v142, v120 offset:2176
	s_waitcnt lgkmcnt(27)
	v_perm_b32 v144, v145, v144, 0xc0c0004
	ds_load_u8 v145, v120 offset:2048
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v120 offset:2432
	v_perm_b32 v141, v143, v141, 0xc0c0004
	ds_load_u8 v143, v120 offset:2304
	v_perm_b32 v139, v140, v139, 0xc0c0004
	ds_load_u8 v140, v120 offset:3712
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v120 offset:3584
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v120 offset:3968
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v152, v153, v152, 0xc0c0004
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	ds_load_u8 v155, v120 offset:2880
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	ds_load_u8 v161, v120 offset:2752
	v_perm_b32 v158, v159, v158, 0xc0c0004
	ds_load_u8 v159, v120 offset:2496
	v_perm_b32 v156, v157, v156, 0xc0c0004
	ds_load_u8 v157, v120 offset:2368
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v120 offset:2240
	v_perm_b32 v162, v163, v162, 0xc0c0004
	ds_load_u8 v163, v120 offset:2112
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	ds_load_u8 v169, v120 offset:4032
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v170, v137, v170, 0xc0c0004
	ds_load_u8 v137, v120 offset:3904
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v171, v145, v142, 0xc0c0004
	ds_load_u8 v142, v120 offset:3776
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v147, v143, v147, 0xc0c0004
	ds_load_u8 v143, v120 offset:3648
	ds_load_u8 v153, v120 offset:3008
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v151, v151, v140, 0xc0c0004
	ds_load_u8 v140, v120 offset:3840
	v_perm_b32 v164, v165, v164, 0xc0c0004
	ds_load_u8 v165, v120 offset:2624
	v_lshl_or_b32 v139, v139, 16, v141
	v_lshl_or_b32 v141, v154, 16, v152
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v157, v157, v159, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v159, v143, v142, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v153, v155, v153, 0xc0c0004
	v_perm_b32 v155, v163, v167, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v149, v140, v149, 0xc0c0004
	ds_load_u8 v140, v120 offset:3200
	ds_load_u8 v145, v120 offset:3072
	ds_load_u8 v172, v120 offset:3520
	ds_load_u8 v173, v120 offset:3392
	ds_load_u8 v174, v120 offset:3264
	ds_load_u8 v175, v120 offset:3136
	v_perm_b32 v163, v137, v169, 0xc0c0004
	v_lshl_or_b32 v137, v138, 16, v136
	v_lshl_or_b32 v136, v146, 16, v144
	v_lshl_or_b32 v138, v148, 16, v150
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v161, v165, v161, 0xc0c0004
	v_lshl_or_b32 v143, v156, 16, v158
	v_lshl_or_b32 v142, v162, 16, v166
	v_wmma_i32_16x16x16_iu4 v[1:8], v[136:137], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[136:137], v[47:48], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[138:139], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v144, v147, 16, v171
	v_lshl_or_b32 v147, v149, 16, v151
	v_lshl_or_b32 v149, v153, 16, v161
	v_lshl_or_b32 v148, v157, 16, v155
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v176, v145, v140, 0xc0c0004
	ds_load_u8 v140, v120 offset:3456
	ds_load_u8 v145, v120 offset:3328
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v167, v173, v172, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[41:42], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v165, v175, v174, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[142:143], v[43:44], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v45, v163, 16, v159
	v_wmma_i32_16x16x16_iu4 v[9:16], v[148:149], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[148:149], v[39:40], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v177, v145, v140, 0xc0c0004
	v_lshl_or_b32 v140, v164, 16, v160
	v_lshl_or_b32 v145, v170, 16, v168
	v_lshl_or_b32 v146, v177, 16, v176
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[140:141], v[41:42], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[140:141], v[43:44], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v44, v167, 16, v165
	v_wmma_i32_16x16x16_iu4 v[1:8], v[144:145], v[37:38], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[144:145], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[44:45], v[35:36], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[146:147], v[35:36], v[17:24] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1204 27 is_stmt 1             ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v48, v1
	v_cvt_f32_i32_e32 v47, v2
	v_cvt_f32_i32_e32 v46, v3
	v_cvt_f32_i32_e32 v45, v4
	v_cvt_f32_i32_e32 v44, v5
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v7
	v_cvt_f32_i32_e32 v41, v8
	v_cvt_f32_i32_e32 v40, v9
	v_cvt_f32_i32_e32 v39, v10
	v_cvt_f32_i32_e32 v38, v11
	v_cvt_f32_i32_e32 v37, v12
	v_cvt_f32_i32_e32 v36, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v34, v15
	v_cvt_f32_i32_e32 v33, v16
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
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge46
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v10, 1, v96
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v21, v111, 16, 1
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	s_mul_i32 s3, s33, s19
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v22, v113, 16, 1
	v_bfe_u32 v23, v112, 16, 1
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_or_b32_e32 v1, 0x47, v10
	v_or_b32_e32 v2, 0x46, v10
	v_or_b32_e32 v4, 0x44, v10
	v_or_b32_e32 v5, 0x43, v10
	v_or_b32_e32 v6, 0x42, v10
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v8, s16, v1
	v_or_b32_e32 v9, s16, v2
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v3, 0x45, v10
	v_or_b32_e32 v7, 0x41, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s16, v4
	v_or_b32_e32 v13, s16, v5
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s19, v8
	v_cmp_gt_i32_e64 s0, s19, v9
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v9, s16, v6
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v8, 64, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v11, s16, v3
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s4, s19, v12
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v12, s16, v7
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s5, s19, v13
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v13, s16, v8
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v9, 7, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s1, s19, v11
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v11, 6, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s7, s19, v12
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v12, 5, v10
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s8, s19, v13
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v15, s16, v9
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v13, 4, v10
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v16, s16, v11
	v_or_b32_e32 v17, s16, v12
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_or_b32_e32 v14, 3, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s9, s19, v15
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v15, s16, v13
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s10, s19, v16
	v_cmp_gt_i32_e64 s11, s19, v17
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v18, s16, v14
	.loc	1 1004 36 is_stmt 0             ; ragged.py:1004:36
	v_or_b32_e32 v16, 2, v10
	v_or_b32_e32 v17, 1, v10
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s12, s19, v15
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_mul_lo_u32 v15, s19, v82
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s13, s19, v18
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_or_b32_e32 v18, s16, v16
	v_or_b32_e32 v19, s16, v17
	v_or_b32_e32 v20, s16, v10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v22, v113, v22, 0x7fff
	v_cmp_o_f32_e64 s18, v113, v113
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s14, s19, v18
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add3_u32 v18, s3, s16, v15
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s15, s19, v19
	v_cmp_gt_i32_e64 s16, s19, v20
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v19, v111, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v111, v111
	v_bfe_u32 v20, v114, 16, 1
	v_add3_u32 v23, v112, v23, 0x7fff
	v_cmp_o_f32_e64 s19, v112, v112
	v_bfe_u32 v24, v109, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_add3_u32 v20, v114, v20, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s18
	v_cndmask_b16 v22.h, 0x7fff, v23.h, s19
	v_bfe_u32 v23, v108, 16, 1
	v_add3_u32 v24, v109, v24, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s3
	v_bfe_u32 v20, v110, 16, 1
	v_cmp_o_f32_e64 s3, v110, v110
	v_cmp_o_f32_e64 s18, v109, v109
	v_bfe_u32 v25, v107, 16, 1
	v_add3_u32 v23, v108, v23, 0x7fff
	v_add3_u32 v20, v110, v20, 0x7fff
	v_cmp_o_f32_e64 s19, v108, v108
	v_bfe_u32 v26, v105, 16, 1
	v_add3_u32 v25, v107, v25, 0x7fff
	v_bfe_u32 v27, v103, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v24.h, s18
	v_bfe_u32 v24, v106, 16, 1
	v_cmp_o_f32_e64 s3, v107, v107
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s19
	v_cmp_o_f32_e64 s18, v106, v106
	v_add3_u32 v26, v105, v26, 0x7fff
	v_add3_u32 v24, v106, v24, 0x7fff
	v_cmp_o_f32_e64 s19, v105, v105
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s3
	v_bfe_u32 v25, v104, 16, 1
	v_cmp_o_f32_e64 s3, v104, v104
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s18
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s19
	v_bfe_u32 v26, v102, 16, 1
	v_add3_u32 v25, v104, v25, 0x7fff
	v_add3_u32 v27, v103, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v103, v103
	v_bfe_u32 v28, v101, 16, 1
	v_add3_u32 v26, v102, v26, 0x7fff
	v_cmp_o_f32_e64 s19, v102, v102
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s3
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s18
	v_bfe_u32 v27, v100, 16, 1
	v_bfe_u32 v29, v99, 16, 1
	v_add3_u32 v28, v101, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v101, v101
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s19
	v_add3_u32 v27, v100, v27, 0x7fff
	v_cmp_o_f32_e64 s18, v100, v100
	v_add3_u32 v29, v99, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v99, v99
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s3
	v_bfe_u32 v28, v98, 16, 1
	v_bfe_u32 v30, v97, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s18
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s19
	v_bfe_u32 v29, v95, 16, 1
	v_add3_u32 v28, v98, v28, 0x7fff
	v_cmp_o_f32_e64 s3, v98, v98
	v_add3_u32 v30, v97, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v97, v97
	v_bfe_u32 v31, v94, 16, 1
	v_add3_u32 v29, v95, v29, 0x7fff
	v_cmp_o_f32_e64 s19, v95, v95
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s3
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s18
	v_bfe_u32 v30, v93, 16, 1
	v_bfe_u32 v32, v92, 16, 1
	v_add3_u32 v31, v94, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v94, v94
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s19
	v_add3_u32 v30, v93, v30, 0x7fff
	v_cmp_o_f32_e64 s18, v93, v93
	v_add3_u32 v32, v92, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v92, v92
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s3
	v_bfe_u32 v31, v91, 16, 1
	v_bfe_u32 v33, v90, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s18
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s19
	v_bfe_u32 v32, v89, 16, 1
	v_add3_u32 v31, v91, v31, 0x7fff
	v_cmp_o_f32_e64 s3, v91, v91
	v_add3_u32 v33, v90, v33, 0x7fff
	v_cmp_o_f32_e64 s18, v90, v90
	v_add3_u32 v32, v89, v32, 0x7fff
	v_cmp_o_f32_e64 s19, v89, v89
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s3
	v_bfe_u32 v35, v86, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s18
	v_bfe_u32 v33, v87, 16, 1
	v_bfe_u32 v34, v88, 16, 1
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s19
	v_cmp_o_f32_e64 s18, v87, v87
	v_add3_u32 v35, v86, v35, 0x7fff
	v_add3_u32 v33, v87, v33, 0x7fff
	v_cmp_o_f32_e64 s19, v86, v86
	v_bfe_u32 v36, v84, 16, 1
	v_add3_u32 v34, v88, v34, 0x7fff
	v_cmp_o_f32_e64 s3, v88, v88
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s18
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s19
	v_add3_u32 v35, v84, v36, 0x7fff
	v_bfe_u32 v36, v83, 16, 1
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s3
	v_bfe_u32 v34, v85, 16, 1
	v_cmp_o_f32_e64 s3, v84, v84
	v_bfe_u32 v37, v81, 16, 1
	v_add3_u32 v36, v83, v36, 0x7fff
	v_and_b32_e32 v0, 16, v0
	v_cmp_o_f32_e64 s19, v83, v83
	v_add3_u32 v34, v85, v34, 0x7fff
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_add_nc_u32_e32 v15, s30, v18
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v37, v81, v37, 0x7fff
	v_cmp_o_f32_e64 s20, v81, v81
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cmp_eq_u32_e64 s3, 0, v0
	v_cndmask_b16 v0.l, 0x7fff, v36.h, s19
	v_mov_b32_e32 v36, 0x5410
	v_cndmask_b16 v0.h, 0x7fff, v37.h, s20
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v35, v20, v19, s3
	v_cndmask_b32_e64 v19, v19, v20, s3
	v_cndmask_b32_e64 v20, v23, v22, s3
	v_cndmask_b32_e64 v22, v22, v23, s3
	v_cndmask_b32_e64 v23, v26, v24, s3
	v_cndmask_b32_e64 v24, v24, v26, s3
	v_cndmask_b32_e64 v26, v27, v25, s3
	v_cndmask_b32_e64 v25, v25, v27, s3
	v_cndmask_b32_e64 v27, v30, v28, s3
	v_cndmask_b32_e64 v28, v28, v30, s3
	v_cndmask_b32_e64 v30, 0x1054, v36, s3
	v_cndmask_b32_e64 v36, 0x3276, v37, s3
	v_cmp_o_f32_e64 s18, v85, v85
	v_cndmask_b32_e64 v37, v31, v29, s3
	v_cndmask_b32_e64 v29, v29, v31, s3
	v_lshl_or_b32 v30, v30, 8, v30
	v_lshl_or_b32 v36, v36, 8, v36
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s18
	s_mov_b32 s18, 0x76543210
	v_add_lshl_u32 v50, v18, v10, 1
	v_and_b32_e32 v30, 0x540054, v30
	v_and_b32_e32 v36, 0x760076, v36
	v_cndmask_b32_e64 v31, v34, v32, s3
	v_cndmask_b32_e64 v32, v32, v34, s3
	v_cndmask_b32_e64 v34, v0, v33, s3
	v_lshl_or_b32 v30, v30, 4, v30
	v_cndmask_b32_e64 v0, v33, v0, s3
	v_permlanex16_b32 v19, v19, s18, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v33, v36, 4, v36
	v_add_lshl_u32 v51, v18, v17, 1
	v_and_b32_e32 v30, 0x5040504, v30
	v_mov_b16_e32 v21.h, 0
	v_permlanex16_b32 v22, v22, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v24, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v25, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s18, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v33, 0x7060706, v33
	v_permlanex16_b32 v29, v29, s18, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s18, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v36, v19, v35, v30
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s3, s17, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v52, v18, v16, 1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v19, v19, v35, v33
	v_cndmask_b32_e64 v51, 0x80000000, v51, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v35, v22, v20, v30
	v_perm_b32 v20, v22, v20, v33
	v_perm_b32 v22, v24, v23, v30
	v_perm_b32 v23, v24, v23, v33
	v_perm_b32 v24, v25, v26, v30
	v_perm_b32 v25, v25, v26, v33
	v_perm_b32 v26, v28, v27, v30
	v_perm_b32 v27, v28, v27, v33
	v_perm_b32 v28, v29, v37, v30
	v_perm_b32 v29, v29, v37, v33
	v_perm_b32 v37, v32, v31, v30
	v_perm_b32 v31, v32, v31, v33
	v_mov_b16_e32 v32.l, v36.h
	v_mov_b16_e32 v32.h, v21.h
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	v_cndmask_b32_e64 v52, 0x80000000, v52, s3
	buffer_store_b16 v36, v50, s[28:31], 0 offen
	v_add_lshl_u32 v36, v18, v14, 1
	v_mov_b16_e32 v21.l, v19.h
	s_clause 0x1
	buffer_store_b16 v32, v51, s[28:31], 0 offen
	buffer_store_b16 v19, v52, s[28:31], 0 offen
	v_add_lshl_u32 v19, v18, v13, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v0, v0, s18, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v32, 0x80000000, v36, s3
	v_add_lshl_u32 v36, v18, v12, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v50, v18, v11, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v30, v0, v34, v30
	v_cndmask_b32_e64 v36, 0x80000000, v36, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v0, v0, v34, v33
	v_mov_b16_e32 v34.l, v35.h
	v_mov_b16_e32 v34.h, v21.h
	v_cndmask_b32_e64 v50, 0x80000000, v50, s3
	s_clause 0x1
	buffer_store_b16 v21, v32, s[28:31], 0 offen
	buffer_store_b16 v35, v19, s[28:31], 0 offen
	v_add_lshl_u32 v19, v18, v9, 1
	v_mov_b16_e32 v33.l, v20.h
	s_clause 0x1
	buffer_store_b16 v34, v36, s[28:31], 0 offen
	buffer_store_b16 v20, v50, s[28:31], 0 offen
	v_add_lshl_u32 v20, v18, v8, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v33.h, v21.h
	v_mov_b16_e32 v38.h, v21.h
	v_mov_b16_e32 v39.h, v21.h
	v_mov_b16_e32 v40.h, v21.h
	v_mov_b16_e32 v41.h, v21.h
	v_mov_b16_e32 v42.h, v21.h
	v_mov_b16_e32 v43.h, v21.h
	v_mov_b16_e32 v44.h, v21.h
	v_mov_b16_e32 v45.h, v21.h
	v_mov_b16_e32 v46.h, v21.h
	v_mov_b16_e32 v47.h, v21.h
	v_mov_b16_e32 v48.h, v21.h
	v_mov_b16_e32 v49.h, v21.h
	v_add_lshl_u32 v21, v18, v7, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v32, v18, v6, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v39.l, v22.h
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v33, v19, s[28:31], 0 offen
	buffer_store_b16 v22, v20, s[28:31], 0 offen
	v_cndmask_b32_e64 v32, 0x80000000, v32, s3
	v_add_lshl_u32 v19, v18, v5, 1
	v_add_lshl_u32 v20, v18, v4, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x1
	buffer_store_b16 v39, v21, s[28:31], 0 offen
	buffer_store_b16 v23, v32, s[28:31], 0 offen
	v_add_lshl_u32 v21, v18, v3, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v22, v18, v2, 1
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v18, v18, v1, 1
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v10, v15, v10, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s17, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v38.l, v23.h
	v_cndmask_b32_e64 v18, 0x80000000, v18, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s16
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v40.l, v25.h
	v_mov_b16_e32 v41.l, v24.h
	v_add_lshl_u32 v17, v15, v17, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	v_add_lshl_u32 v16, v15, v16, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s15
	.loc	1 1239 17                       ; ragged.py:1239:17
	s_clause 0x5
	buffer_store_b16 v38, v19, s[28:31], 0 offen
	buffer_store_b16 v24, v20, s[28:31], 0 offen
	buffer_store_b16 v41, v21, s[28:31], 0 offen
	buffer_store_b16 v25, v22, s[28:31], 0 offen
	buffer_store_b16 v40, v18, s[28:31], 0 offen
	buffer_store_b16 v26, v10, s[28:31], 0 offen
	v_add_lshl_u32 v10, v15, v14, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s14
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v13, v15, v13, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s13
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v12, v15, v12, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s12
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v11, v15, v11, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v9, v15, v9, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s10
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v8, v15, v8, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s9
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v7, v15, v7, 1
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s8
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v6, v15, v6, 1
	v_cndmask_b32_e64 v8, 0x80000000, v8, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s7
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v5, v15, v5, 1
	v_cndmask_b32_e64 v7, 0x80000000, v7, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s6
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v15, v4, 1
	v_cndmask_b32_e64 v6, 0x80000000, v6, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s5
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v3, v15, v3, 1
	v_add_lshl_u32 v2, v15, v2, 1
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s3, s2, s4
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v1, v15, v1, 1
	v_mov_b16_e32 v42.l, v27.h
	v_mov_b16_e32 v43.l, v26.h
	v_mov_b16_e32 v44.l, v29.h
	v_mov_b16_e32 v45.l, v28.h
	v_mov_b16_e32 v46.l, v31.h
	v_mov_b16_e32 v47.l, v37.h
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s2, s1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_mov_b16_e32 v49.l, v30.h
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_mov_b16_e32 v48.l, v0.h
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0xe
	buffer_store_b16 v43, v17, s[28:31], 0 offen
	buffer_store_b16 v27, v16, s[28:31], 0 offen
	buffer_store_b16 v42, v10, s[28:31], 0 offen
	buffer_store_b16 v28, v13, s[28:31], 0 offen
	buffer_store_b16 v45, v12, s[28:31], 0 offen
	buffer_store_b16 v29, v11, s[28:31], 0 offen
	buffer_store_b16 v44, v9, s[28:31], 0 offen
	buffer_store_b16 v37, v8, s[28:31], 0 offen
	buffer_store_b16 v47, v7, s[28:31], 0 offen
	buffer_store_b16 v31, v6, s[28:31], 0 offen
	buffer_store_b16 v46, v5, s[28:31], 0 offen
	buffer_store_b16 v30, v4, s[28:31], 0 offen
	buffer_store_b16 v49, v3, s[28:31], 0 offen
	buffer_store_b16 v0, v2, s[28:31], 0 offen
	buffer_store_b16 v48, v1, s[28:31], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
		.amdhsa_next_free_vgpr 178
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_vgpr, 178
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8532
; TotalNumSgprs: 47
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 178
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc128_evenk_bfloat16_scalar_bm32_bn128_bk64_w4_s3_sk1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     178
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
