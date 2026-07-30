	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1,@function
amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1:                                 ; @amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 970 0                         ; ragged.py:970:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[10:11], s[0:1], 0x30
.Ltmp0:
	.loc	1 998 20 prologue_end           ; ragged.py:998:20
	s_abs_i32 s9, s2
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_and_b32_e32 v99, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:995:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s10, 63
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ ragged.py:996:21 ]
	s_add_i32 s5, s11, 0xff
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
	s_mul_i32 s12, s7, s5
	s_sub_i32 s9, s9, s12
	s_add_i32 s12, s7, 1
	s_sub_i32 s13, s9, s5
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s7, s12, s7
	s_cselect_b32 s9, s13, s9
	s_add_i32 s12, s7, 1
	s_cmp_ge_u32 s9, s5
	s_cselect_b32 s5, s12, s7
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_abs_i32 s8, s2
	s_xor_b32 s12, s2, s6
	s_ashr_i32 s12, s12, 31
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
	s_mul_i32 s13, s9, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s13
	s_add_i32 s13, s9, 1
	s_sub_i32 s14, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s9, s13, s9
	s_cselect_b32 s8, s14, s8
	s_add_i32 s13, s9, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s7, s13, s9
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_ashr_i32 s23, s22, 31
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_xor_b32 s7, s7, s12
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_lshl_b64 s[8:9], s[22:23], 2
	.loc	1 1000 17                       ; ragged.py:1000:17
	s_sub_i32 s7, s7, s12
	s_mov_b32 s13, 0
	.loc	1 1001 24                       ; ragged.py:1001:24
	s_mul_i32 s6, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1001 17 is_stmt 0             ; ragged.py:1001:17
	s_sub_i32 s12, s2, s6
	.loc	1 1003 18 is_stmt 1             ; ragged.py:1003:18
	s_lshl_b32 s6, s7, 6
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s8
	s_addc_u32 s5, s5, s9
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v1, s6, v99
	.loc	1 1007 19                       ; ragged.py:1007:19
	s_load_b32 s24, s[4:5], 0x0
	.loc	1 1125 43                       ; ragged.py:1125:43
	s_mul_i32 s7, s22, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v2, 16, v1
	v_or_b32_e32 v3, 32, v1
	v_or_b32_e32 v4, 48, v1
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s5, s10, v1
	v_cmp_gt_i32_e64 s4, s10, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_gt_i32_e64 s8, s10, v3
	v_cmp_gt_i32_e64 s2, s10, v4
	.loc	1 1008 27                       ; ragged.py:1008:27
	s_waitcnt lgkmcnt(0)
	s_add_i32 s24, s24, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_cmp_gt_i32 s24, 1
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge4_crit_edge
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_add_i32 s9, s6, s7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 26 is_stmt 0                ; ragged.py:0:26
	s_mov_b32 s13, -1
                                        ; implicit-def: $sgpr9
.LBB0_3:                                ; %Flow215
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v107, 0xf0, v0
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
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v116, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v127, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v133, 0
	v_mov_b32_e32 v132, 0
	s_and_not1_b32 vcc_lo, exec_lo, s13
	s_lshl_b32 s23, s12, 8
	s_cbranch_vccnz .LBB0_10
; %bb.4:                                ; %.preheader.lr.ph
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x38
	s_load_b256 s[12:19], s[0:1], 0x0
	.loc	1 1118 23 is_stmt 1             ; ragged.py:1118:23
	s_lshl_b32 s3, s3, 4
	.loc	1 1003 36                       ; ragged.py:1003:36
	v_lshrrev_b32_e32 v3, 2, v0
	.loc	1 1008 26                       ; ragged.py:1008:26
	s_lshr_b32 s30, s24, 1
	v_dual_mov_b32 v133, 0 :: v_dual_lshlrev_b32 v4, 2, v0
	s_cmp_lt_i32 s3, 16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1003 18                       ; ragged.py:1003:18
	v_or_b32_e32 v6, s6, v3
	s_cselect_b32 s31, -1, 0
	s_add_i32 s9, s6, s7
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v2, 12, v4
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v3, s9, v3
	.loc	1 1113 28                       ; ragged.py:1113:28
	v_lshrrev_b32_e32 v1, 4, v107
	.loc	1 1005 20                       ; ragged.py:1005:20
	v_cmp_gt_i32_e64 s6, s10, v6
	v_bfe_i32 v7, v0, 3, 1
	.loc	1 1004 18                       ; ragged.py:1004:18
	v_lshl_or_b32 v65, v99, 4, s23
	v_or_b32_e32 v134, s23, v0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[66:67], null, v3, s28, v[2:3]
	v_dual_mov_b32 v129, 0 :: v_dual_lshlrev_b32 v2, 4, v0
	v_bfe_i32 v3, v0, 5, 1
	v_mov_b32_e32 v127, 0
	v_dual_mov_b32 v132, 0 :: v_dual_add_nc_u32 v5, 0, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v6, 0x70, v2
	v_mad_u64_u32 v[67:68], null, s22, s28, v[1:2]
	v_dual_mov_b32 v128, 0 :: v_dual_and_b32 v1, 0x37c, v4
	v_and_or_b32 v4, 0x88, v7, v6
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v6, s9, v99
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v3, 0x88, v3
	v_lshrrev_b32_e32 v7, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v123, 0 :: v_dual_add_nc_u32 v8, 16, v6
	v_dual_mov_b32 v122, 0 :: v_dual_add_nc_u32 v9, 32, v6
	v_dual_mov_b32 v121, 0 :: v_dual_add_nc_u32 v10, 48, v6
	v_mul_lo_u32 v135, v6, s29
	v_dual_mov_b32 v119, 0 :: v_dual_lshlrev_b32 v6, 5, v0
	v_mul_lo_u32 v136, v8, s29
	v_mul_lo_u32 v137, v9, s29
	v_dual_mov_b32 v117, 0 :: v_dual_lshlrev_b32 v8, 1, v0
	v_dual_mov_b32 v120, 0 :: v_dual_lshlrev_b32 v9, 2, v107
	v_dual_mov_b32 v115, 0 :: v_dual_and_b32 v6, 32, v6
	v_xor_b32_e32 v1, v3, v1
	v_xor_b32_e32 v3, 8, v4
	v_dual_mov_b32 v124, 0 :: v_dual_and_b32 v7, 0x70, v7
	v_mul_lo_u32 v138, v10, s29
	v_dual_mov_b32 v113, 0 :: v_dual_and_b32 v8, 28, v8
	v_cndmask_b32_e64 v10, 0, 1, s31
	v_add3_u32 v6, 0, v9, v6
	v_dual_mov_b32 v118, 0 :: v_dual_lshlrev_b32 v9, 1, v107
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s11, v65
	v_cmp_gt_i32_e64 s1, s11, v134
	v_cmp_ne_u32_e64 s7, 1, v10
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v139, 0, v1
	v_dual_mov_b32 v111, 0 :: v_dual_add_nc_u32 v140, 0, v4
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v141, 0, v3
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v142, 0, v2
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v143, v5, v7
	v_dual_mov_b32 v105, 0 :: v_dual_add_nc_u32 v144, v6, v8
	v_dual_mov_b32 v110, 0 :: v_dual_add_nc_u32 v145, 0, v9
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_mov_b32_e32 v74, 0
	v_mov_b32_e32 v72, 0
	v_mov_b32_e32 v70, 0
	v_mov_b32_e32 v68, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_add_i32 s30, s30, -1
	s_mov_b32 s33, 0
	.loc	1 1214 37                       ; ragged.py:1214:37
	s_mul_i32 s10, s22, s29
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshr_b32 s22, s30, 4
	s_mov_b32 s28, s16
	s_mov_b32 s29, s17
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	s_mov_b32 s34, 0
	s_branch .LBB0_6
.LBB0_5:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v33, v135, s33, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s14, s33, s10
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v34, v136, s33, 1
	v_add_lshl_u32 v35, v137, s33, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s14, s14, s11
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_add_lshl_u32 v36, v138, s33, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v37, v134, s14, 1
	.loc	1 1206 40                       ; ragged.py:1206:40
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_cndmask_b32_e64 v35, 0x80000000, v35, s8
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_clause 0x3
	buffer_load_u16 v33, v33, s[28:31], 0 offen
	buffer_load_u16 v34, v34, s[28:31], 0 offen
	buffer_load_u16 v35, v35, s[28:31], 0 offen
	buffer_load_u16 v36, v36, s[28:31], 0 offen
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v37, v37, s[16:19], 0 offen
	.loc	1 1218 21                       ; ragged.py:1218:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1220 17                       ; ragged.py:1220:17
	s_add_i32 s14, s33, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1115 19                       ; ragged.py:1115:19
	s_lshl_b32 s34, s14, 4
	s_cmp_lg_u32 s33, s22
	s_mov_b32 s33, s14
	.loc	1 1206 40                       ; ragged.py:1206:40
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_dual_mul_f32 v54, v160, v34 :: v_dual_lshlrev_b32 v33, 16, v33
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v38, v177, v33 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v41, v174, v33 :: v_dual_lshlrev_b32 v36, 16, v36
	v_mul_f32_e32 v39, v176, v33
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v56, v158, v34 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v40, v175, v33 :: v_dual_mul_f32 v53, v161, v34
	v_dual_mul_f32 v42, v173, v33 :: v_dual_mul_f32 v55, v159, v34
	v_dual_mul_f32 v43, v172, v33 :: v_dual_mul_f32 v60, v154, v34
	v_dual_mul_f32 v44, v171, v33 :: v_dual_mul_f32 v57, v157, v34
	v_dual_mul_f32 v45, v170, v33 :: v_dual_mul_f32 v58, v156, v34
	v_dual_mul_f32 v46, v169, v33 :: v_dual_mul_f32 v59, v155, v34
	v_dual_mul_f32 v47, v168, v33 :: v_dual_mul_f32 v64, v150, v34
	v_dual_mul_f32 v48, v167, v33 :: v_dual_mul_f32 v61, v153, v34
	v_dual_mul_f32 v49, v166, v33 :: v_dual_mul_f32 v62, v152, v34
	v_dual_mul_f32 v50, v165, v33 :: v_dual_mul_f32 v63, v151, v34
	v_mul_f32_e32 v51, v164, v33
	v_dual_mul_f32 v52, v163, v33 :: v_dual_mul_f32 v149, v149, v34
	v_dual_mul_f32 v33, v162, v33 :: v_dual_mul_f32 v148, v148, v34
	v_dual_mul_f32 v147, v147, v34 :: v_dual_mul_f32 v32, v32, v35
	v_dual_mul_f32 v34, v146, v34 :: v_dual_mul_f32 v31, v31, v35
	v_mul_f32_e32 v16, v16, v36
	v_dual_mul_f32 v30, v30, v35 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v29, v29, v35 :: v_dual_mul_f32 v162, v11, v36
	v_mul_f32_e32 v146, v28, v35
	v_dual_mul_f32 v150, v27, v35 :: v_dual_mul_f32 v161, v12, v36
	v_dual_mul_f32 v151, v26, v35 :: v_dual_mul_f32 v160, v13, v36
	v_dual_mul_f32 v152, v25, v35 :: v_dual_mul_f32 v7, v7, v36
	v_dual_mul_f32 v153, v24, v35 :: v_dual_mul_f32 v10, v10, v36
	v_dual_mul_f32 v154, v23, v35 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v155, v22, v35 :: v_dual_mul_f32 v8, v8, v36
	v_dual_mul_f32 v156, v21, v35 :: v_dual_mul_f32 v3, v3, v36
	v_dual_mul_f32 v157, v20, v35 :: v_dual_mul_f32 v6, v6, v36
	v_dual_mul_f32 v158, v19, v35 :: v_dual_mul_f32 v5, v5, v36
	v_dual_mul_f32 v159, v18, v35 :: v_dual_mul_f32 v4, v4, v36
	v_dual_mul_f32 v35, v17, v35 :: v_dual_mul_f32 v2, v2, v36
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_store_b32 v144, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v145
	ds_load_b128 v[21:24], v145 offset:16
	.loc	1 1211 21                       ; ragged.py:1211:21
	v_mul_f32_e32 v37, v14, v36
	.loc	1 1218 21                       ; ragged.py:1218:21
	ds_load_b128 v[11:14], v145 offset:512
	ds_load_b128 v[25:28], v145 offset:528
	.loc	1 1211 21                       ; ragged.py:1211:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v1, v1, v36 :: v_dual_fmac_f32 v132, v39, v18
	.loc	1 1219 17                       ; ragged.py:1219:17
	v_dual_fmac_f32 v133, v38, v17 :: v_dual_fmac_f32 v130, v41, v20
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v131, v40, v19 :: v_dual_fmac_f32 v128, v43, v22
	v_dual_fmac_f32 v129, v42, v21 :: v_dual_fmac_f32 v126, v45, v24
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v127, v44, v23 :: v_dual_fmac_f32 v124, v47, v12
	v_dual_fmac_f32 v125, v46, v11 :: v_dual_fmac_f32 v122, v49, v14
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v123, v48, v13 :: v_dual_fmac_f32 v120, v51, v26
	v_dual_fmac_f32 v121, v50, v25 :: v_dual_fmac_f32 v118, v33, v28
	v_dual_fmac_f32 v119, v52, v27 :: v_dual_fmac_f32 v116, v54, v18
	v_dual_fmac_f32 v117, v53, v17 :: v_dual_fmac_f32 v114, v56, v20
	v_dual_fmac_f32 v115, v55, v19 :: v_dual_fmac_f32 v112, v58, v22
	v_dual_fmac_f32 v113, v57, v21 :: v_dual_fmac_f32 v110, v60, v24
	v_dual_fmac_f32 v111, v59, v23 :: v_dual_fmac_f32 v108, v62, v12
	v_dual_fmac_f32 v109, v61, v11 :: v_dual_fmac_f32 v106, v63, v13
	v_dual_fmac_f32 v105, v64, v14 :: v_dual_fmac_f32 v104, v149, v25
	v_dual_fmac_f32 v103, v148, v26 :: v_dual_fmac_f32 v102, v147, v27
	v_dual_fmac_f32 v101, v34, v28 :: v_dual_fmac_f32 v100, v32, v17
	v_dual_fmac_f32 v98, v31, v18 :: v_dual_fmac_f32 v97, v30, v19
	v_dual_fmac_f32 v96, v29, v20 :: v_dual_fmac_f32 v95, v146, v21
	v_dual_fmac_f32 v94, v150, v22 :: v_dual_fmac_f32 v93, v151, v23
	v_dual_fmac_f32 v92, v152, v24 :: v_dual_fmac_f32 v91, v153, v11
	v_dual_fmac_f32 v90, v154, v12 :: v_dual_fmac_f32 v89, v155, v13
	v_dual_fmac_f32 v88, v156, v14 :: v_dual_fmac_f32 v87, v157, v25
	v_dual_fmac_f32 v86, v158, v26 :: v_dual_fmac_f32 v85, v159, v27
	v_dual_fmac_f32 v84, v35, v28 :: v_dual_fmac_f32 v83, v16, v17
	v_dual_fmac_f32 v82, v15, v18 :: v_dual_fmac_f32 v81, v37, v19
	v_dual_fmac_f32 v80, v160, v20 :: v_dual_fmac_f32 v79, v161, v21
	v_dual_fmac_f32 v78, v162, v22 :: v_dual_fmac_f32 v75, v8, v11
	v_dual_fmac_f32 v77, v10, v23 :: v_dual_fmac_f32 v76, v9, v24
	v_dual_fmac_f32 v74, v7, v12 :: v_dual_fmac_f32 v73, v6, v13
	v_dual_fmac_f32 v72, v5, v14 :: v_dual_fmac_f32 v71, v4, v25
	v_dual_fmac_f32 v70, v3, v26 :: v_dual_fmac_f32 v69, v2, v27
	v_fmac_f32_e32 v68, v1, v28
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
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v149, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v164, 0 :: v_dual_mov_b32 v165, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v167, 0
	v_dual_mov_b32 v168, 0 :: v_dual_mov_b32 v169, 0
	v_dual_mov_b32 v170, 0 :: v_dual_mov_b32 v171, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	.loc	1 1120 27 is_stmt 1             ; ragged.py:1120:27
	s_and_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_5
; %bb.7:                                ; %.lr.ph.preheader
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 27 is_stmt 0                ; ragged.py:0:27
	v_mov_b32_e32 v1, 0
	s_mov_b32 s35, s3
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
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
.LBB0_8:                                ; %.lr.ph
                                        ;   Parent Loop BB0_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 1121 30 is_stmt 1             ; ragged.py:1121:30
	s_add_i32 s14, s35, s34
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_mov_b32 s15, s27
	.loc	1 1130 46                       ; ragged.py:1130:46
	v_add_nc_u32_e32 v146, s14, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1130 38 is_stmt 0             ; ragged.py:1130:38
	v_cndmask_b32_e64 v146, 0x80000000, v146, s6
	buffer_load_b32 v150, v146, s[24:27], 0 offen
	.loc	1 1131 46 is_stmt 1             ; ragged.py:1131:46
	v_add_nc_u32_e32 v146, s14, v67
	.loc	1 1131 38 is_stmt 0             ; ragged.py:1131:38
	s_mov_b32 s14, s26
	.loc	1 1131 46                       ; ragged.py:1131:46
	v_mad_u64_u32 v[146:147], null, v146, s11, v[65:66]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1131 38                       ; ragged.py:1131:38
	v_cndmask_b32_e64 v146, 0x80000000, v146, s0
	buffer_load_b128 v[146:149], v146, s[12:15], 0 offen
	.loc	1 1130 38 is_stmt 1             ; ragged.py:1130:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1142 25                       ; ragged.py:1142:25
	s_add_i32 s14, s35, 16
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cmp_lt_i32 s35, 0
	s_mov_b32 s35, s14
	.loc	1 1130 38                       ; ragged.py:1130:38
	s_waitcnt vmcnt(1)
	ds_store_b32 v139, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[150:153], v140 offset1:32
	ds_load_2addr_b64 v[154:157], v140 offset0:64 offset1:96
	ds_load_2addr_b64 v[158:161], v141 offset1:32
	ds_load_2addr_b64 v[162:165], v141 offset0:64 offset1:96
	.loc	1 1131 38                       ; ragged.py:1131:38
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v142, v[146:149]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1132 35                       ; ragged.py:1132:35
	ds_load_u8 v146, v143 offset:1280
	ds_load_u8 v147, v143 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	ds_load_u8 v147, v143 offset:1792
	ds_load_u8 v148, v143 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v147, v147, 16, v146
	ds_load_u8 v146, v143 offset:256
	ds_load_u8 v148, v143
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v148, v146, 0xc0c0004
	ds_load_u8 v148, v143 offset:768
	ds_load_u8 v149, v143 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v148, 16, v146
	ds_load_u8 v148, v143 offset:3328
	ds_load_u8 v149, v143 offset:3072
	v_wmma_i32_16x16x16_iu4 v[1:8], v[146:147], v[150:151], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[146:147], v[152:153], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[146:147], v[154:155], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[146:147], v[156:157], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v143 offset:3840
	ds_load_u8 v166, v143 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v166, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v143 offset:2304
	ds_load_u8 v166, v143 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v166, v148, 0xc0c0004
	ds_load_u8 v166, v143 offset:2816
	ds_load_u8 v167, v143 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v166, 16, v148
	ds_load_u8 v166, v143 offset:1408
	ds_load_u8 v167, v143 offset:1152
	v_wmma_i32_16x16x16_iu4 v[1:8], v[148:149], v[158:159], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[148:149], v[160:161], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[148:149], v[162:163], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[148:149], v[164:165], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v167, v166, 0xc0c0004
	ds_load_u8 v167, v143 offset:1920
	ds_load_u8 v168, v143 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v167, v168, v167, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v167, v167, 16, v166
	ds_load_u8 v166, v143 offset:384
	ds_load_u8 v168, v143 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v166, v168, v166, 0xc0c0004
	ds_load_u8 v168, v143 offset:896
	ds_load_u8 v169, v143 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v166, v168, 16, v166
	v_wmma_i32_16x16x16_iu4 v[9:16], v[166:167], v[150:151], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v150, v143 offset:3456
	ds_load_u8 v151, v143 offset:3200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[166:167], v[152:153], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[166:167], v[154:155], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[166:167], v[156:157], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	ds_load_u8 v151, v143 offset:3968
	ds_load_u8 v168, v143 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v168, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v151, v151, 16, v150
	ds_load_u8 v150, v143 offset:2432
	ds_load_u8 v168, v143 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v168, v150, 0xc0c0004
	ds_load_u8 v168, v143 offset:2944
	ds_load_u8 v169, v143 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v168, v169, v168, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v150, v168, 16, v150
	v_wmma_i32_16x16x16_iu4 v[9:16], v[150:151], v[158:159], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[150:151], v[160:161], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[150:151], v[162:163], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[150:151], v[164:165], v[57:64] neg_lo:[1,1,0]
	.loc	1 1120 27                       ; ragged.py:1120:27
	s_cbranch_scc1 .LBB0_8
; %bb.9:                                ; %._crit_edge.loopexit
                                        ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 1204 27                       ; ragged.py:1204:27
	v_cvt_f32_i32_e32 v177, v1
	v_cvt_f32_i32_e32 v176, v2
	v_cvt_f32_i32_e32 v175, v3
	v_cvt_f32_i32_e32 v174, v4
	v_cvt_f32_i32_e32 v173, v5
	v_cvt_f32_i32_e32 v172, v6
	v_cvt_f32_i32_e32 v171, v7
	v_cvt_f32_i32_e32 v170, v8
	v_cvt_f32_i32_e32 v169, v9
	v_cvt_f32_i32_e32 v168, v10
	v_cvt_f32_i32_e32 v167, v11
	v_cvt_f32_i32_e32 v166, v12
	v_cvt_f32_i32_e32 v165, v13
	v_cvt_f32_i32_e32 v164, v14
	v_cvt_f32_i32_e32 v163, v15
	v_cvt_f32_i32_e32 v162, v16
	v_cvt_f32_i32_e32 v161, v17
	v_cvt_f32_i32_e32 v160, v18
	v_cvt_f32_i32_e32 v159, v19
	v_cvt_f32_i32_e32 v158, v20
	v_cvt_f32_i32_e32 v157, v21
	v_cvt_f32_i32_e32 v156, v22
	v_cvt_f32_i32_e32 v155, v23
	v_cvt_f32_i32_e32 v154, v24
	v_cvt_f32_i32_e32 v153, v25
	v_cvt_f32_i32_e32 v152, v26
	v_cvt_f32_i32_e32 v151, v27
	v_cvt_f32_i32_e32 v150, v28
	v_cvt_f32_i32_e32 v149, v29
	v_cvt_f32_i32_e32 v148, v30
	v_cvt_f32_i32_e32 v147, v31
	v_cvt_f32_i32_e32 v146, v32
	v_cvt_f32_i32_e32 v32, v33
	v_cvt_f32_i32_e32 v31, v34
	v_cvt_f32_i32_e32 v30, v35
	v_cvt_f32_i32_e32 v29, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v24, v41
	v_cvt_f32_i32_e32 v23, v42
	v_cvt_f32_i32_e32 v22, v43
	v_cvt_f32_i32_e32 v21, v44
	v_cvt_f32_i32_e32 v20, v45
	v_cvt_f32_i32_e32 v19, v46
	v_cvt_f32_i32_e32 v18, v47
	v_cvt_f32_i32_e32 v17, v48
	v_cvt_f32_i32_e32 v16, v49
	v_cvt_f32_i32_e32 v15, v50
	v_cvt_f32_i32_e32 v14, v51
	v_cvt_f32_i32_e32 v13, v52
	v_cvt_f32_i32_e32 v12, v53
	v_cvt_f32_i32_e32 v11, v54
	v_cvt_f32_i32_e32 v10, v55
	v_cvt_f32_i32_e32 v9, v56
	v_cvt_f32_i32_e32 v8, v57
	v_cvt_f32_i32_e32 v7, v58
	v_cvt_f32_i32_e32 v6, v59
	v_cvt_f32_i32_e32 v5, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	s_branch .LBB0_5
.LBB0_10:                               ; %._crit_edge4
	.loc	1 1004 36                       ; ragged.py:1004:36
	v_lshrrev_b32_e32 v1, 1, v107
	.loc	1 1239 26                       ; ragged.py:1239:26
	s_mul_i32 s0, s9, s11
	v_mul_lo_u32 v3, s11, v99
	s_add_i32 s1, s0, s23
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v7, v133, 16, 1
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v4, s1, v1
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_bfe_u32 v8, v132, 16, 1
	.loc	1 1004 36 is_stmt 1             ; ragged.py:1004:36
	v_or_b32_e32 v9, 0x80, v1
	.loc	1 1004 18 is_stmt 0             ; ragged.py:1004:18
	v_or_b32_e32 v10, s23, v1
	.loc	1 1239 17 is_stmt 1             ; ragged.py:1239:17
	v_add3_u32 v7, v133, v7, 0x7fff
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_mad_u64_u32 v[1:2], null, s11, 48, v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1004 18 is_stmt 1             ; ragged.py:1004:18
	v_or_b32_e32 v11, s23, v9
	.loc	1 1006 20                       ; ragged.py:1006:20
	v_cmp_gt_i32_e64 s0, s11, v10
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_add_nc_u32_e32 v2, s1, v9
	.loc	1 1239 17 is_stmt 0             ; ragged.py:1239:17
	v_bfe_u32 v9, v131, 16, 1
	v_cmp_o_f32_e64 s1, v133, v133
	v_add3_u32 v8, v132, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v132, v132
	v_bfe_u32 v10, v130, 16, 1
	.loc	1 1006 20 is_stmt 1             ; ragged.py:1006:20
	v_cmp_gt_i32_e32 vcc_lo, s11, v11
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add3_u32 v9, v131, v9, 0x7fff
	v_cmp_o_f32_e64 s6, v131, v131
	v_cndmask_b16 v7.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v7.h, 0x7fff, v8.h, s3
	v_bfe_u32 v8, v129, 16, 1
	v_bfe_u32 v11, v128, 16, 1
	v_add3_u32 v10, v130, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v130, v130
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s6
	v_add3_u32 v8, v129, v8, 0x7fff
	v_cmp_o_f32_e64 s3, v129, v129
	v_add3_u32 v11, v128, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v128, v128
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v127, 16, 1
	v_bfe_u32 v12, v126, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v8.h, s3
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v125, 16, 1
	v_add3_u32 v10, v127, v10, 0x7fff
	v_cmp_o_f32_e64 s1, v127, v127
	v_add3_u32 v12, v126, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v126, v126
	v_bfe_u32 v13, v124, 16, 1
	v_add3_u32 v11, v125, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v125, v125
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s1
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v123, 16, 1
	v_bfe_u32 v14, v122, 16, 1
	v_add3_u32 v13, v124, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v124, v124
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_add3_u32 v12, v123, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v123, v123
	v_add3_u32 v14, v122, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v122, v122
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s1
	v_bfe_u32 v13, v121, 16, 1
	v_bfe_u32 v15, v120, 16, 1
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s3
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v119, 16, 1
	v_add3_u32 v13, v121, v13, 0x7fff
	v_cmp_o_f32_e64 s1, v121, v121
	v_add3_u32 v15, v120, v15, 0x7fff
	v_cmp_o_f32_e64 s3, v120, v120
	v_bfe_u32 v16, v118, 16, 1
	v_add3_u32 v14, v119, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v119, v119
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s1
	v_cndmask_b16 v13.h, 0x7fff, v15.h, s3
	v_bfe_u32 v15, v117, 16, 1
	v_bfe_u32 v17, v116, 16, 1
	v_add3_u32 v16, v118, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v118, v118
	v_cndmask_b16 v14.l, 0x7fff, v14.h, s6
	v_add3_u32 v15, v117, v15, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v17, v116, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v116, v116
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s1
	v_bfe_u32 v16, v115, 16, 1
	v_bfe_u32 v18, v114, 16, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s3
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s6
	v_bfe_u32 v17, v113, 16, 1
	v_add3_u32 v16, v115, v16, 0x7fff
	v_cmp_o_f32_e64 s1, v115, v115
	v_add3_u32 v18, v114, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v114, v114
	v_bfe_u32 v19, v112, 16, 1
	v_add3_u32 v17, v113, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v113, v113
	v_cndmask_b16 v16.l, 0x7fff, v16.h, s1
	v_cndmask_b16 v16.h, 0x7fff, v18.h, s3
	v_bfe_u32 v18, v111, 16, 1
	v_bfe_u32 v20, v110, 16, 1
	v_add3_u32 v19, v112, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v112, v112
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v18, v111, v18, 0x7fff
	v_cmp_o_f32_e64 s3, v111, v111
	v_add3_u32 v20, v110, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v110, v110
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v109, 16, 1
	v_bfe_u32 v21, v108, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v106, 16, 1
	v_add3_u32 v19, v109, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v109, v109
	v_add3_u32 v21, v108, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v108, v108
	v_bfe_u32 v22, v105, 16, 1
	v_add3_u32 v20, v106, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v106, v106
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s1
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s3
	v_bfe_u32 v21, v104, 16, 1
	v_bfe_u32 v23, v103, 16, 1
	v_add3_u32 v22, v105, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v105, v105
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_add3_u32 v21, v104, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v104, v104
	v_add3_u32 v23, v103, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v103, v103
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s1
	v_bfe_u32 v22, v102, 16, 1
	v_bfe_u32 v24, v101, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s3
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s6
	v_bfe_u32 v23, v100, 16, 1
	v_add3_u32 v22, v102, v22, 0x7fff
	v_cmp_o_f32_e64 s1, v102, v102
	v_add3_u32 v24, v101, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v101, v101
	v_bfe_u32 v25, v98, 16, 1
	v_add3_u32 v23, v100, v23, 0x7fff
	v_cmp_o_f32_e64 s6, v100, v100
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s3
	v_bfe_u32 v24, v97, 16, 1
	v_bfe_u32 v26, v96, 16, 1
	v_add3_u32 v25, v98, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v98, v98
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s6
	v_add3_u32 v24, v97, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v97, v97
	v_add3_u32 v26, v96, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v96, v96
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s1
	v_bfe_u32 v25, v95, 16, 1
	v_bfe_u32 v27, v94, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s3
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s6
	v_bfe_u32 v26, v93, 16, 1
	v_add3_u32 v25, v95, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v95, v95
	v_add3_u32 v27, v94, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v94, v94
	v_bfe_u32 v28, v92, 16, 1
	v_add3_u32 v26, v93, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v93, v93
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v27.h, s3
	v_bfe_u32 v27, v91, 16, 1
	v_bfe_u32 v29, v90, 16, 1
	v_add3_u32 v28, v92, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v92, v92
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s6
	v_add3_u32 v27, v91, v27, 0x7fff
	v_cmp_o_f32_e64 s3, v91, v91
	v_add3_u32 v29, v90, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v90, v90
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s1
	v_bfe_u32 v28, v89, 16, 1
	v_bfe_u32 v30, v88, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s3
	v_cndmask_b16 v27.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v87, 16, 1
	v_add3_u32 v28, v89, v28, 0x7fff
	v_cmp_o_f32_e64 s1, v89, v89
	v_add3_u32 v30, v88, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v88, v88
	v_bfe_u32 v31, v86, 16, 1
	v_add3_u32 v29, v87, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v87, v87
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s1
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s3
	v_bfe_u32 v30, v85, 16, 1
	v_bfe_u32 v32, v84, 16, 1
	v_add3_u32 v31, v86, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v86, v86
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s6
	v_add3_u32 v30, v85, v30, 0x7fff
	v_cmp_o_f32_e64 s3, v85, v85
	v_add3_u32 v32, v84, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v84, v84
	v_cndmask_b16 v29.h, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v83, 16, 1
	v_bfe_u32 v33, v82, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s3
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s6
	v_bfe_u32 v32, v81, 16, 1
	v_add3_u32 v31, v83, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v83, v83
	v_add3_u32 v33, v82, v33, 0x7fff
	v_cmp_o_f32_e64 s3, v82, v82
	v_bfe_u32 v34, v80, 16, 1
	v_add3_u32 v32, v81, v32, 0x7fff
	v_cmp_o_f32_e64 s6, v81, v81
	v_cndmask_b16 v31.l, 0x7fff, v31.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v33.h, s3
	v_bfe_u32 v33, v79, 16, 1
	v_bfe_u32 v35, v78, 16, 1
	v_add3_u32 v34, v80, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v80, v80
	v_cndmask_b16 v32.l, 0x7fff, v32.h, s6
	v_add3_u32 v33, v79, v33, 0x7fff
	v_cmp_o_f32_e64 s3, v79, v79
	v_add3_u32 v35, v78, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v78, v78
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s1
	v_bfe_u32 v34, v77, 16, 1
	v_bfe_u32 v36, v76, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	v_cndmask_b16 v33.h, 0x7fff, v35.h, s6
	v_bfe_u32 v35, v75, 16, 1
	v_add3_u32 v34, v77, v34, 0x7fff
	v_cmp_o_f32_e64 s1, v77, v77
	v_add3_u32 v36, v76, v36, 0x7fff
	v_cmp_o_f32_e64 s3, v76, v76
	v_bfe_u32 v37, v74, 16, 1
	v_add3_u32 v35, v75, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v75, v75
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s3
	v_bfe_u32 v36, v73, 16, 1
	v_bfe_u32 v38, v72, 16, 1
	v_add3_u32 v37, v74, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v74, v74
	v_cndmask_b16 v35.l, 0x7fff, v35.h, s6
	v_add3_u32 v36, v73, v36, 0x7fff
	v_cmp_o_f32_e64 s3, v73, v73
	v_add3_u32 v38, v72, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v72, v72
	v_bfe_u32 v39, v71, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s1
	v_bfe_u32 v37, v70, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s3
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s6
	v_add3_u32 v38, v71, v39, 0x7fff
	v_bfe_u32 v39, v69, 16, 1
	v_cmp_o_f32_e64 s1, v71, v71
	v_bfe_u32 v40, v68, 16, 1
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v37, v70, v37, 0x7fff
	v_add3_u32 v39, v69, v39, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_add3_u32 v40, v68, v40, 0x7fff
	v_cmp_o_f32_e64 s7, v68, v68
	v_cndmask_b16 v37.l, 0x7fff, v38.h, s1
	v_cmp_eq_u32_e64 s1, 0, v0
	v_cmp_o_f32_e64 s3, v70, v70
	v_cndmask_b16 v0.l, 0x7fff, v39.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v40.h, s7
	.loc	1 1239 26 is_stmt 0             ; ragged.py:1239:26
	v_lshl_add_u32 v6, s11, 4, v3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v38, v8, v7, s1
	v_cndmask_b32_e64 v7, v7, v8, s1
	v_cndmask_b32_e64 v39, v10, v9, s1
	v_cndmask_b32_e64 v8, v9, v10, s1
	v_cndmask_b32_e64 v40, v13, v11, s1
	v_cndmask_b32_e64 v9, v11, v13, s1
	v_cndmask_b32_e64 v41, v14, v12, s1
	v_cndmask_b32_e64 v10, v12, v14, s1
	v_cndmask_b32_e64 v42, v17, v15, s1
	v_cndmask_b32_e64 v11, v15, v17, s1
	v_cndmask_b32_e64 v45, v22, v20, s1
	v_cndmask_b32_e64 v14, v20, v22, s1
	v_cndmask_b32_e64 v46, v25, v23, s1
	v_cndmask_b32_e64 v15, v23, v25, s1
	v_mov_b32_e32 v22, 0x5410
	v_mov_b32_e32 v23, 0x7632
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s3
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v43, v18, v16, s1
	v_cndmask_b32_e64 v12, v16, v18, s1
	v_cndmask_b32_e64 v47, v26, v24, s1
	v_cndmask_b32_e64 v16, v24, v26, s1
	v_permlanex16_b32 v24, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v7, 0x1054, v22, s1
	v_cndmask_b32_e64 v22, 0x3276, v23, s1
	v_permlanex16_b32 v23, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v44, v21, v19, s1
	v_cndmask_b32_e64 v13, v19, v21, s1
	v_lshl_or_b32 v7, v7, 8, v7
	v_lshl_or_b32 v8, v22, 8, v22
	v_cndmask_b32_e64 v52, v37, v35, s1
	v_cndmask_b32_e64 v21, v35, v37, s1
	v_permlanex16_b32 v25, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v7, 0x540054, v7
	v_and_b32_e32 v8, 0x760076, v8
	v_cndmask_b32_e64 v17, v27, v29, s1
	v_cndmask_b32_e64 v18, v28, v30, s1
	v_cndmask_b32_e64 v19, v31, v33, s1
	v_lshl_or_b32 v7, v7, 4, v7
	v_lshl_or_b32 v8, v8, 4, v8
	v_cndmask_b32_e64 v20, v32, v34, s1
	v_cndmask_b32_e64 v53, v0, v36, s1
	v_cndmask_b32_e64 v0, v36, v0, s1
	v_and_b32_e32 v37, 0x5040504, v7
	v_and_b32_e32 v54, 0x7060706, v8
	.loc	1 1239 26                       ; ragged.py:1239:26
	v_lshl_add_u32 v5, s11, 5, v3
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v48, v29, v27, s1
	v_cndmask_b32_e64 v49, v30, v28, s1
	v_perm_b32 v7, v24, v38, v37
	v_perm_b32 v8, v24, v38, v54
	v_add_lshl_u32 v38, v4, v3, 1
	v_add_lshl_u32 v3, v2, v3, 1
	v_cndmask_b32_e64 v50, v33, v31, s1
	v_cndmask_b32_e64 v51, v34, v32, s1
	v_permlanex16_b32 v26, v10, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1223 20 is_stmt 1             ; ragged.py:1223:20
	s_and_b32 s1, s5, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v22, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v9, v23, v39, v37
	v_perm_b32 v10, v23, v39, v54
	v_add_lshl_u32 v39, v4, v6, 1
	v_perm_b32 v11, v25, v40, v37
	v_perm_b32 v12, v25, v40, v54
	v_cndmask_b32_e64 v40, 0x80000000, v38, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s5, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_permlanex16_b32 v28, v13, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v14, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v15, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v31, v16, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v17, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v33, v18, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v19, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v35, v20, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v21, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v0, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s4, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_perm_b32 v13, v26, v41, v37
	v_perm_b32 v14, v26, v41, v54
	v_perm_b32 v15, v22, v42, v37
	v_perm_b32 v16, v22, v42, v54
	v_perm_b32 v17, v27, v43, v37
	v_perm_b32 v18, v27, v43, v54
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_perm_b32 v19, v28, v44, v37
	v_perm_b32 v20, v28, v44, v54
	v_perm_b32 v21, v29, v45, v37
	v_perm_b32 v22, v29, v45, v54
	v_perm_b32 v23, v30, v46, v37
	v_perm_b32 v24, v30, v46, v54
	v_perm_b32 v25, v31, v47, v37
	v_perm_b32 v26, v31, v47, v54
	v_perm_b32 v27, v32, v48, v37
	v_perm_b32 v28, v32, v48, v54
	v_perm_b32 v29, v33, v49, v37
	v_perm_b32 v30, v33, v49, v54
	v_perm_b32 v31, v34, v50, v37
	v_perm_b32 v32, v34, v50, v54
	v_perm_b32 v33, v35, v51, v37
	v_perm_b32 v34, v35, v51, v54
	v_perm_b32 v35, v36, v52, v37
	v_perm_b32 v37, v0, v53, v37
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	v_perm_b32 v38, v0, v53, v54
	v_add_lshl_u32 v0, v2, v6, 1
	s_clause 0x2
	buffer_store_b128 v[7:10], v40, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v3, s[20:23], 0 offen
	buffer_store_b128 v[15:18], v39, s[20:23], 0 offen
	v_add_lshl_u32 v3, v4, v5, 1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s4, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v5, v2, v5, 1
	v_cndmask_b32_e64 v0, 0x80000000, v0, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s8, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_add_lshl_u32 v4, v4, v1, 1
	v_add_lshl_u32 v1, v2, v1, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 s1, s8, vcc_lo
	s_and_b32 s0, s2, s0
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v2, 0x80000000, v5, s1
	.loc	1 1223 20                       ; ragged.py:1223:20
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1239 17                       ; ragged.py:1239:17
	v_cndmask_b32_e64 v4, 0x80000000, v4, s0
	v_perm_b32 v36, v36, v52, v54
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[19:22], v0, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v2, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v4, s[20:23], 0 offen
	buffer_store_b128 v[35:38], v1, s[20:23], 0 offen
	.loc	1 970 5                         ; ragged.py:970:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
		.amdhsa_next_free_sgpr 36
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_vgpr, 178
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7740
; TotalNumSgprs: 38
; NumVgprs: 178
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 38
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_bwd_nn_sc32_evenk_bfloat16_wide_m4096_n4096_k4096_bm64_bn256_bk64_w8_s3_sk1.kd
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
