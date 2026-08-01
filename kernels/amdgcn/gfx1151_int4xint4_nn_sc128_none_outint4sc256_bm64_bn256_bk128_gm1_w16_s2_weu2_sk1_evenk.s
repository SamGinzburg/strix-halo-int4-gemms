	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s8, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v69, 7, v0
	v_and_b32_e32 v67, 15, v0
	v_lshrrev_b32_e32 v66, 4, v0
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_lshrrev_b32_e32 v71, 1, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v68, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v49, 4, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v3, 32, v66
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v70, 0xe0, v0
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v15, 56, v71
	v_lshlrev_b32_e32 v14, 3, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v14, v14, v15
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_lshlrev_b32_e32 v15, 4, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s34, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s6, s6, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s5, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s5
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[4:5], null, s35, v66, v[49:50]
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v54, 0, v14
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v55, 0, v15
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_rcp_iflag_f32_e32 v1, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s7
	s_mul_hi_u32 s10, s7, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_sub_i32 s8, s8, s11
	s_add_i32 s11, s7, 1
	s_sub_i32 s12, s8, s6
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s8, s12, s8
	s_add_i32 s11, s7, 1
	s_cmp_ge_u32 s8, s6
	s_cselect_b32 s6, s11, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s6, s10
	s_sub_i32 s7, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s9, s7
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s7, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s6
	s_load_b256 s[8:15], s[0:1], 0x0
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v69
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s17, s17, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[10:11]
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_cvt_u32_f32 s17, s17
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_i32 s18, s18, s17
	s_mul_hi_u32 s5, s17, s18
	s_abs_i32 s18, s2
	s_add_i32 s17, s17, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s18, s17
	s_xor_b32 s17, s2, s6
	s_mul_i32 s19, s5, s16
	s_ashr_i32 s17, s17, 31
	s_sub_i32 s18, s18, s19
	s_add_i32 s19, s5, 1
	s_sub_i32 s20, s18, s16
	s_cmp_ge_u32 s18, s16
	s_cselect_b32 s5, s19, s5
	s_cselect_b32 s18, s20, s18
	s_add_i32 s19, s5, 1
	s_cmp_ge_u32 s18, s16
	s_cselect_b32 s5, s19, s5
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s4, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s20, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s20, s17
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s18, s3, 6
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s19, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s18, v1
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_mad_u64_u32 v[5:6], null, s19, v2, v[1:2]
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s18, v66
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s22, s21, s3
.Ltmp19:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s7
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v9, s18, v3
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s48, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s49, s22, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s34, s2, 6
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s19, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v7
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s16, s35, s18
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s19, v8
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v8
	.loc	1 216 34 is_stmt 1              ; generate_amdgcn.py:216:34
	s_mul_i32 s7, s34, s19
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	s_cmpk_lt_i32 s21, 0x80
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s19, v9
	.loc	1 216 34                        ; generate_amdgcn.py:216:34
	v_add3_u32 v5, s18, s7, v5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s7, -1, 0
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_add_i32 s16, s48, s16
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s22, s3, vcc_lo
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_lshl_b32 s23, s35, 5
	v_add_nc_u32_e32 v6, s16, v4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s22
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v4, s16, s23, v4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s6, s4, s6
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s25, s25, 0xffff
	v_cndmask_b32_e32 v8, 0x80000000, v4, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	buffer_load_b64 v[12:13], v5, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[4:7], v6, s[24:27], 0 offen
	buffer_load_b128 v[8:11], v8, s[24:27], 0 offen
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0xff
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v54, v[12:13] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v55, v[4:7]
	s_waitcnt vmcnt(0)
	ds_store_b128 v55, v[8:11] offset:8192
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_mov_b64 s[38:39], s[10:11]
	s_mov_b32 s5, 0
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $sgpr36_sgpr37
.LBB0_3:                                ; %Flow334
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[28:31], s[0:1], 0x20
	v_lshrrev_b32_e32 v104, 1, v70
	v_lshrrev_b32_e32 v53, 4, v68
	v_bfe_u32 v105, v0, 4, 1
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v91, 0 :: v_dual_lshlrev_b32 v106, 2, v0
	v_add3_u32 v107, 0, v67, v104
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_mov_b32_e32 v72, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s49, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v15, s20, 9, v70
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v2, s34, v2
	s_mov_b32 s16, 0
	s_max_i32 s0, s5, 1
	s_lshl_b32 s1, s17, 9
	v_sub_nc_u32_e32 v56, s19, v3
	v_sub_nc_u32_e32 v57, s19, v1
	v_sub_nc_u32_e32 v58, s19, v66
	v_subrev_nc_u32_e32 v60, s1, v15
	s_lshl_b32 s1, s20, 8
	s_lshl_b32 s50, s0, 1
	s_lshl_b32 s0, s17, 8
	v_mad_u64_u32 v[50:51], null, s19, v2, v[1:2]
	s_add_i32 s52, s18, 64
	s_mov_b32 s17, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v12, s18, v66
	s_mov_b32 s18, s16
	v_lshlrev_b32_e32 v4, 2, v0
	v_add3_u32 v11, s34, v53, v67
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v72, 0
	v_lshlrev_b32_e32 v59, 1, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v4, 0x438, v4
	v_add_nc_u32_e32 v13, 32, v11
	v_mul_lo_u32 v11, s49, v11
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v99, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v67, 6, v4
	v_mul_lo_u32 v13, s49, v13
	v_mov_b32_e32 v98, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v87, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v4, 8, v3
	v_xor_b32_e32 v5, 16, v3
	v_xor_b32_e32 v6, 24, v3
	v_xor_b32_e32 v7, 32, v3
	v_xor_b32_e32 v8, 40, v3
	v_xor_b32_e32 v9, 48, v3
	v_xor_b32_e32 v10, 56, v3
	v_add_nc_u32_e32 v65, 0, v3
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v108, 0, v4
	v_add_nc_u32_e32 v109, 0, v5
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, 0, v6
	v_add_nc_u32_e32 v111, 0, v7
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v112, 0, v8
	v_dual_mov_b32 v1, s16 :: v_dual_add_nc_u32 v14, 0x60, v12
	v_dual_mov_b32 v7, s22 :: v_dual_add_nc_u32 v12, 64, v12
	v_lshlrev_b32_e32 v62, 1, v11
	v_dual_mov_b32 v4, s19 :: v_dual_lshlrev_b32 v61, 1, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v14, s35, v14
	v_mul_lo_u32 v12, s35, v12
	v_add_nc_u32_e32 v113, 0, v9
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v114, 0, v10
	v_dual_mov_b32 v2, s17 :: v_dual_mov_b32 v3, s18
	v_mov_b32_e32 v5, s20
	v_add3_u32 v11, v14, s1, v49
	v_add3_u32 v12, v12, s1, v49
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v73, 0
	v_subrev_nc_u32_e32 v63, s0, v11
	v_subrev_nc_u32_e32 v64, s0, v12
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v93, 0
	v_mov_b32_e32 v94, 0
	v_mov_b32_e32 v90, 0
	v_mov_b32_e32 v92, 0
	v_mov_b32_e32 v88, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s6, s35, 1
	s_lshl_b32 s51, s35, 6
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_add_nc_u32_e32 v10, s16, v62
	v_add_nc_u32_e32 v11, s16, v61
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s52, v57
	v_cmp_lt_i32_e64 s0, s52, v58
	v_cmp_lt_i32_e64 s1, s52, v56
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v115, v10, s[44:47], 0 offen
	buffer_load_u16 v116, v11, s[44:47], 0 offen
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s16, s16, 2
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v47, 0x80000000, v64, s0
	v_cndmask_b32_e64 v46, 0x80000000, v63, s1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v115, 16, v115
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v9, s52, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s52, s52, 64
	s_cmp_lg_u32 s50, s16
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v116, 16, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v45, v59, v60
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_load_b64 v[51:52], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[117:120], v65 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[121:124], v108 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[125:128], v109 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[41:44], v110 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v107 offset:1280
	ds_load_u8 v10, v107 offset:1024
	ds_load_u8 v11, v107 offset:1792
	ds_load_u8 v12, v107 offset:1536
	ds_load_u8 v13, v107 offset:256
	ds_load_u8 v14, v107
	ds_load_u8 v15, v107 offset:768
	ds_load_u8 v16, v107 offset:512
	ds_load_u8 v17, v107 offset:3328
	ds_load_u8 v18, v107 offset:3072
	ds_load_u8 v19, v107 offset:3840
	ds_load_u8 v20, v107 offset:3584
	ds_load_u8 v21, v107 offset:2304
	ds_load_u8 v22, v107 offset:2048
	ds_load_u8 v23, v107 offset:2816
	ds_load_u8 v24, v107 offset:2560
	ds_load_u8 v48, v107 offset:5376
	ds_load_u8 v133, v107 offset:5120
	ds_load_u8 v134, v107 offset:5888
	ds_load_u8 v135, v107 offset:5632
	ds_load_u8 v136, v107 offset:4352
	ds_load_u8 v137, v107 offset:4096
	ds_load_u8 v138, v107 offset:4864
	ds_load_u8 v139, v107 offset:4608
	ds_load_u8 v140, v107 offset:7424
	ds_load_u8 v141, v107 offset:7168
	ds_load_u8 v142, v107 offset:7936
	ds_load_u8 v143, v107 offset:7680
	ds_load_u8 v144, v107 offset:6400
	ds_load_u8 v145, v107 offset:6144
	ds_load_u8 v25, v107 offset:1408
	ds_load_u8 v26, v107 offset:1152
	ds_load_u8 v27, v107 offset:1920
	ds_load_u8 v28, v107 offset:1664
	ds_load_u8 v29, v107 offset:384
	ds_load_u8 v30, v107 offset:128
	ds_load_u8 v31, v107 offset:896
	ds_load_u8 v32, v107 offset:640
	ds_load_u8 v33, v107 offset:3456
	ds_load_u8 v34, v107 offset:3200
	ds_load_u8 v35, v107 offset:3968
	ds_load_u8 v36, v107 offset:3712
	ds_load_u8 v37, v107 offset:2432
	ds_load_u8 v38, v107 offset:2176
	ds_load_u8 v39, v107 offset:2944
	ds_load_u8 v40, v107 offset:2688
	ds_load_u8 v146, v107 offset:6912
	ds_load_u8 v147, v107 offset:6656
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v12, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v13, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v14, v20, v19, 0xc0c0004
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v15, v22, v21, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v16, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v19, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v20, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v21, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v22, v32, v31, 0xc0c0004
	v_lshl_or_b32 v10, v10, 16, v9
	v_lshl_or_b32 v9, v12, 16, v11
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v23, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v25, v38, v37, 0xc0c0004
	v_perm_b32 v24, v36, v35, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v26, v40, v39, 0xc0c0004
	v_lshl_or_b32 v18, v14, 16, v13
	v_lshl_or_b32 v17, v16, 16, v15
	v_lshl_or_b32 v130, v20, 16, v19
	v_lshl_or_b32 v129, v22, 16, v21
	v_lshl_or_b32 v131, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[9:10], v[117:118], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[119:120], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v132, v24, 16, v23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[117:118], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[17:18], v[121:122], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[17:18], v[123:124], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[119:120], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[131:132], v[121:122], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v48, v133, v48, 0xc0c0004
	v_perm_b32 v117, v135, v134, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[17:24], v[131:132], v[123:124], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v119, v107 offset:6016
	ds_load_u8 v120, v107 offset:5760
	ds_load_u8 v121, v107 offset:4480
	ds_load_u8 v122, v107 offset:4224
	ds_load_u8 v123, v107 offset:4992
	ds_load_u8 v124, v107 offset:4736
	v_perm_b32 v129, v137, v136, 0xc0c0004
	v_perm_b32 v130, v139, v138, 0xc0c0004
	v_lshl_or_b32 v118, v117, 16, v48
	ds_load_u8 v148, v107 offset:5504
	ds_load_u8 v139, v107 offset:8704
	ds_load_u8 v133, v107 offset:9472
	ds_load_u8 v135, v107 offset:9984
	ds_load_u8 v136, v107 offset:9728
	ds_load_u8 v134, v107 offset:9216
	ds_load_u8 v138, v107 offset:8960
	v_lshl_or_b32 v117, v130, 16, v129
	ds_load_u8 v48, v107 offset:8448
	ds_load_u8 v137, v107 offset:8192
	v_wmma_i32_16x16x16_iu4 v[25:32], v[117:118], v[125:126], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[117:118], v[127:128], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v121, v122, v121, 0xc0c0004
	ds_load_u8 v122, v107 offset:7552
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v123, v124, v123, 0xc0c0004
	v_perm_b32 v117, v141, v140, 0xc0c0004
	v_perm_b32 v118, v143, v142, 0xc0c0004
	ds_load_u8 v141, v107 offset:8320
	ds_load_u8 v124, v107 offset:7296
	ds_load_u8 v149, v107 offset:5248
	ds_load_u8 v143, v107 offset:8832
	ds_load_u8 v140, v107 offset:8576
	v_perm_b32 v119, v120, v119, 0xc0c0004
	ds_load_u8 v142, v107 offset:9088
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v48, v137, v48, 0xc0c0004
	v_perm_b32 v137, v139, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v137, v137, 16, v48
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v124, v124, v122, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v129, v149, v148, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v122, v45, s[40:43], 0 offen offset:256
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v141, v141, v140, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v143, v142, 0xc0c0004
	v_lshl_or_b32 v120, v119, 16, v129
	v_lshl_or_b32 v119, v123, 16, v121
	ds_load_u8 v121, v107 offset:8064
	ds_load_u8 v123, v107 offset:7808
	ds_load_u8 v129, v107 offset:6528
	ds_load_u8 v130, v107 offset:6272
	ds_load_u8 v143, v107 offset:11520
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[127:128], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v127, v107 offset:7040
	ds_load_u8 v128, v107 offset:6784
	ds_load_u8 v148, v107 offset:9600
	ds_load_u8 v149, v107 offset:9344
	ds_load_u8 v150, v107 offset:10112
	ds_load_u8 v151, v107 offset:9856
	v_wmma_i32_16x16x16_iu4 v[9:16], v[119:120], v[125:126], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v119, v145, v144, 0xc0c0004
	v_perm_b32 v120, v147, v146, 0xc0c0004
	v_lshl_or_b32 v126, v118, 16, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v117, v45, s[40:43], 0 offen
	buffer_load_u16 v118, v45, s[40:43], 0 offen offset:4
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v144, v136, v135, 0xc0c0004
	v_lshl_or_b32 v125, v120, 16, v119
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v119, v45, s[40:43], 0 offen offset:8
	buffer_load_u16 v120, v45, s[40:43], 0 offen offset:20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[43:44], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v123, v123, v121, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v129, v130, v129, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v127, v128, v127, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v121, v45, s[40:43], 0 offen offset:24
	buffer_load_u16 v125, v45, s[40:43], 0 offen offset:284
	buffer_load_u16 v126, v45, s[40:43], 0 offen offset:28
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v128, v123, 16, v124
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v123, v45, s[40:43], 0 offen offset:276
	buffer_load_u16 v124, v45, s[40:43], 0 offen offset:280
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v127, v127, 16, v129
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v149, v148, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v151, v150, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[127:128], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[43:44], v[17:24] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v128, v45, s[40:43], 0 offen offset:16
	buffer_load_u16 v129, v45, s[40:43], 0 offen offset:12
	buffer_load_u16 v127, v45, s[40:43], 0 offen offset:260
	buffer_load_u16 v130, v45, s[40:43], 0 offen offset:264
	buffer_load_u16 v131, v45, s[40:43], 0 offen offset:268
	buffer_load_u16 v132, v45, s[40:43], 0 offen offset:272
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v45, v134, v133, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[41:44], v47, s[24:27], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[133:136], v111 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v140, v145, 16, v139
	v_lshl_or_b32 v139, v142, 16, v141
	v_lshl_or_b32 v138, v144, 16, v45
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[45:48], v46, s[24:27], 0 offen
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v141, v107 offset:11264
	ds_load_u8 v142, v107 offset:12032
	ds_load_u8 v144, v107 offset:11136
	ds_load_u8 v145, v107 offset:10880
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[133:134], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[135:136], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v137, v107 offset:11776
	ds_load_u8 v138, v107 offset:10496
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[135:136], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v133, v107 offset:10240
	ds_load_u8 v134, v107 offset:11008
	ds_load_u8 v135, v107 offset:10752
	ds_load_u8 v136, v107 offset:11648
	ds_load_u8 v139, v107 offset:11392
	ds_load_u8 v140, v107 offset:12160
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v141, v141, v143, 0xc0c0004
	ds_load_u8 v143, v107 offset:11904
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v137, v142, 0xc0c0004
	ds_load_u8 v142, v107 offset:10624
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v133, v133, v138, 0xc0c0004
	ds_load_u8 v138, v107 offset:10368
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v139, v136, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v138, v142, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v141
	v_lshl_or_b32 v137, v134, 16, v133
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[133:136], v112 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v141, v145, v144, 0xc0c0004
	ds_load_u8 v145, v107 offset:12928
	v_perm_b32 v140, v143, v140, 0xc0c0004
	ds_load_u8 v143, v107 offset:13568
	ds_load_u8 v144, v107 offset:13184
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v141, 16, v142
	ds_load_u8 v141, v107 offset:13312
	ds_load_u8 v142, v107 offset:14080
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[133:134], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[135:136], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v137, v107 offset:13824
	ds_load_u8 v138, v107 offset:12544
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[135:136], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v133, v107 offset:12288
	ds_load_u8 v134, v107 offset:13056
	ds_load_u8 v135, v107 offset:12800
	ds_load_u8 v136, v107 offset:13696
	ds_load_u8 v139, v107 offset:13440
	ds_load_u8 v140, v107 offset:14208
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v141, v141, v143, 0xc0c0004
	ds_load_u8 v143, v107 offset:13952
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v137, v137, v142, 0xc0c0004
	ds_load_u8 v142, v107 offset:12672
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v133, v133, v138, 0xc0c0004
	ds_load_u8 v138, v107 offset:12416
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v134, v135, v134, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v139, v139, v136, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v142, v138, v142, 0xc0c0004
	v_lshl_or_b32 v138, v137, 16, v141
	v_lshl_or_b32 v137, v134, 16, v133
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[133:136], v113 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v141, v145, v144, 0xc0c0004
	ds_load_u8 v144, v107 offset:15104
	v_perm_b32 v140, v143, v140, 0xc0c0004
	ds_load_u8 v143, v107 offset:15616
	v_lshl_or_b32 v140, v140, 16, v139
	v_lshl_or_b32 v139, v141, 16, v142
	ds_load_u8 v141, v107 offset:15360
	ds_load_u8 v142, v107 offset:15744
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[137:138], v[133:134], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[137:138], v[135:136], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v137, v107 offset:15488
	ds_load_u8 v138, v107 offset:16256
	v_wmma_i32_16x16x16_iu4 v[9:16], v[139:140], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[139:140], v[135:136], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v133, v107 offset:16000
	ds_load_u8 v134, v107 offset:16128
	ds_load_u8 v135, v107 offset:14720
	ds_load_u8 v136, v107 offset:14464
	ds_load_u8 v139, v107 offset:15232
	ds_load_u8 v140, v107 offset:14976
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v137, v137, v142, 0xc0c0004
	ds_load_u8 v142, v107 offset:14592
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v133, v133, v138, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v135, v136, v135, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v136, v140, v139, 0xc0c0004
	ds_load_u8 v139, v107 offset:14848
	ds_load_u8 v138, v107 offset:14336
	v_perm_b32 v141, v141, v143, 0xc0c0004
	ds_load_u8 v143, v107 offset:15872
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v139, v139, v144, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v142, v138, v142, 0xc0c0004
	v_lshl_or_b32 v138, v133, 16, v137
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v143, v134, 0xc0c0004
	v_lshl_or_b32 v137, v136, 16, v135
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[133:136], v114 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v139, v139, 16, v142
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v140, v140, 16, v141
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b64 v54, v[51:52] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v55, v[41:44]
	s_waitcnt vmcnt(0)
	ds_store_b128 v55, v[45:48] offset:8192
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[137:138], v[133:134], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[139:140], v[133:134], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[139:140], v[135:136], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[137:138], v[135:136], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v20, v20
	v_mul_f32_e32 v40, v116, v40
	v_dual_mul_f32 v15, v115, v15 :: v_dual_add_nc_u32 v60, s6, v60
	v_mul_f32_e32 v9, v115, v9
	v_mul_f32_e32 v14, v115, v14
	v_dual_mul_f32 v16, v115, v16 :: v_dual_mul_f32 v23, v116, v23
	v_dual_mul_f32 v28, v115, v28 :: v_dual_mul_f32 v39, v116, v39
	v_mul_f32_e32 v26, v115, v26
	v_dual_mul_f32 v38, v116, v38 :: v_dual_mul_f32 v27, v115, v27
	v_dual_mul_f32 v37, v116, v37 :: v_dual_mul_f32 v32, v115, v32
	v_dual_mul_f32 v36, v116, v36 :: v_dual_mul_f32 v25, v115, v25
	v_dual_mul_f32 v35, v116, v35 :: v_dual_mul_f32 v30, v115, v30
	v_dual_mul_f32 v34, v116, v34 :: v_dual_mul_f32 v31, v115, v31
	v_dual_mul_f32 v33, v116, v33 :: v_dual_mul_f32 v12, v115, v12
	v_dual_mul_f32 v29, v115, v29 :: v_dual_mul_f32 v20, v116, v20
	v_dual_mul_f32 v21, v116, v21 :: v_dual_mul_f32 v10, v115, v10
	v_mul_f32_e32 v19, v116, v19
	v_dual_mul_f32 v18, v116, v18 :: v_dual_mul_f32 v13, v115, v13
	v_dual_mul_f32 v11, v115, v11 :: v_dual_lshlrev_b32 v130, 16, v130
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v117, 16, v117
	v_lshlrev_b32_e32 v115, 16, v122
	v_lshlrev_b32_e32 v122, 16, v124
	v_lshlrev_b32_e32 v124, 16, v126
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v100, v15, v122 :: v_dual_lshlrev_b32 v127, 16, v127
	v_fmac_f32_e32 v84, v32, v124
	v_dual_fmac_f32 v87, v27, v119 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v121, 16, v121
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v24, v116, v24 :: v_dual_add_nc_u32 v63, s51, v63
	v_dual_mul_f32 v17, v116, v17 :: v_dual_add_nc_u32 v64, s51, v64
	v_mul_f32_e32 v22, v116, v22
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v73, v10, v127 :: v_dual_lshlrev_b32 v126, 16, v129
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v118, 16, v118
	v_lshlrev_b32_e32 v116, 16, v123
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v86, v28, v126 :: v_dual_lshlrev_b32 v123, 16, v125
	v_dual_fmac_f32 v82, v30, v120 :: v_dual_fmac_f32 v83, v31, v121
	v_fmac_f32_e32 v74, v11, v130
	v_dual_fmac_f32 v102, v25, v117 :: v_dual_lshlrev_b32 v125, 16, v128
	v_fmac_f32_e32 v72, v9, v115
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v128, 16, v132
	v_lshlrev_b32_e32 v129, 16, v131
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v99, v16, v123 :: v_dual_fmac_f32 v92, v38, v120
	v_fmac_f32_e32 v81, v29, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v85, v26, v118 :: v_dual_fmac_f32 v76, v13, v128
	v_fmac_f32_e32 v75, v12, v129
	v_dual_fmac_f32 v101, v14, v116 :: v_dual_fmac_f32 v94, v35, v119
	v_dual_fmac_f32 v103, v33, v117 :: v_dual_fmac_f32 v90, v36, v126
	v_dual_fmac_f32 v89, v34, v118 :: v_dual_fmac_f32 v88, v40, v124
	v_dual_fmac_f32 v91, v37, v125 :: v_dual_fmac_f32 v78, v19, v130
	v_dual_fmac_f32 v93, v39, v121 :: v_dual_fmac_f32 v98, v17, v115
	v_dual_fmac_f32 v77, v18, v127 :: v_dual_fmac_f32 v80, v21, v128
	v_dual_fmac_f32 v79, v20, v129 :: v_dual_fmac_f32 v96, v23, v122
	v_fmac_f32_e32 v97, v22, v116
	v_fmac_f32_e32 v95, v24, v123
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow335
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, v53, v67
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_mul_i32 s1, s34, s49
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s5, 0
	v_and_b32_e32 v108, 0x1f0, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	s_add_i32 s1, s1, s0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v2, 32, v1
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s49, v1
	v_and_b32_e32 v109, 16, v0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s49, v2
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v1, s1, v1, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v2, s1, v2, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x1
	buffer_load_u16 v110, v1, s[36:39], 0 offen
	buffer_load_u16 v111, v2, s[36:39], 0 offen
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:                                ; %._crit_edge._crit_edge
.Ltmp22:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_9
.Ltmp23:
.LBB0_8:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s1, -1
                                        ; implicit-def: $vgpr1
.LBB0_9:                                ; %Flow
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	ds_load_u8 v52, v107 offset:3328
	ds_load_u8 v53, v107 offset:3072
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s4, 0
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_and_b32_e32 v1, 0x438, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v1, v67, 6, v1
	v_xad_u32 v2, v1, 56, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v107 offset:3840
	ds_load_u8 v54, v107 offset:3584
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[17:20], v2 offset0:32 offset1:36
	v_xad_u32 v2, v1, 48, 0
	ds_load_2addr_stride64_b64 v[21:24], v2 offset0:32 offset1:36
	v_xad_u32 v2, v1, 40, 0
	ds_load_2addr_stride64_b64 v[25:28], v2 offset0:32 offset1:36
	v_xad_u32 v2, v1, 32, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[29:32], v2 offset0:32 offset1:36
	v_xad_u32 v2, v1, 24, 0
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v107 offset:2304
	ds_load_u8 v54, v107 offset:2048
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[33:36], v2 offset0:32 offset1:36
	v_xad_u32 v2, v1, 16, 0
	ds_load_2addr_stride64_b64 v[37:40], v2 offset0:32 offset1:36
	v_xad_u32 v2, v1, 8, 0
	v_add_nc_u32_e32 v1, 0, v1
	ds_load_2addr_stride64_b64 v[41:44], v2 offset0:32 offset1:36
	ds_load_2addr_stride64_b64 v[45:48], v1 offset0:32 offset1:36
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v1, v107 offset:1280
	ds_load_u8 v2, v107 offset:1024
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v54, v52, 0xc0c0004
	ds_load_u8 v54, v107 offset:2816
	ds_load_u8 v55, v107 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v107 offset:1792
	ds_load_u8 v3, v107 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v54, 16, v52
	ds_load_u8 v54, v107 offset:5376
	ds_load_u8 v55, v107 offset:5120
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v51, v2, 16, v1
	ds_load_u8 v1, v107 offset:256
	ds_load_u8 v2, v107
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v107 offset:5888
	ds_load_u8 v56, v107 offset:5632
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v107 offset:768
	ds_load_u8 v3, v107 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	ds_load_u8 v54, v107 offset:4352
	ds_load_u8 v56, v107 offset:4096
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	v_lshl_or_b32 v50, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v2, s5 :: v_dual_mov_b32 v3, s6
	v_mov_b32_e32 v8, s11
	v_mov_b32_e32 v4, s7
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v56, v54, 0xc0c0004
	ds_load_u8 v56, v107 offset:4864
	ds_load_u8 v57, v107 offset:4608
	v_mov_b32_e32 v5, s8
	v_mov_b32_e32 v7, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[45:46], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[41:42], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v56, 16, v54
	ds_load_u8 v56, v107 offset:7424
	ds_load_u8 v57, v107 offset:7168
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v107 offset:7936
	ds_load_u8 v58, v107 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v56
	ds_load_u8 v56, v107 offset:6400
	ds_load_u8 v58, v107 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v58, v56, 0xc0c0004
	ds_load_u8 v58, v107 offset:6912
	ds_load_u8 v59, v107 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v58, 16, v56
	ds_load_u8 v58, v107 offset:9472
	ds_load_u8 v59, v107 offset:9216
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v107 offset:9984
	ds_load_u8 v60, v107 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v107 offset:8448
	ds_load_u8 v60, v107 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v60, v58, 0xc0c0004
	ds_load_u8 v60, v107 offset:8960
	ds_load_u8 v61, v107 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v60, 16, v58
	ds_load_u8 v60, v107 offset:11520
	ds_load_u8 v61, v107 offset:11264
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[29:30], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v107 offset:12032
	ds_load_u8 v62, v107 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v61, 16, v60
	ds_load_u8 v60, v107 offset:10496
	ds_load_u8 v62, v107 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v62, v60, 0xc0c0004
	ds_load_u8 v62, v107 offset:11008
	ds_load_u8 v63, v107 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v62, 16, v60
	ds_load_u8 v62, v107 offset:13568
	ds_load_u8 v63, v107 offset:13312
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v107 offset:14080
	ds_load_u8 v64, v107 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v107 offset:12544
	ds_load_u8 v64, v107 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v64, v62, 0xc0c0004
	ds_load_u8 v64, v107 offset:13056
	ds_load_u8 v65, v107 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v64, 16, v62
	ds_load_u8 v64, v107 offset:15616
	ds_load_u8 v65, v107 offset:15360
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[21:22], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v107 offset:16128
	ds_load_u8 v112, v107 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v112, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v65, 16, v64
	ds_load_u8 v64, v107 offset:14592
	ds_load_u8 v112, v107 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v64, v112, v64, 0xc0c0004
	ds_load_u8 v112, v107 offset:15104
	ds_load_u8 v113, v107 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v112, 16, v64
	ds_load_u8 v112, v107 offset:1408
	ds_load_u8 v113, v107 offset:1152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[64:65], v[17:18], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v107 offset:1920
	ds_load_u8 v114, v107 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v129, v113, 16, v112
	ds_load_u8 v112, v107 offset:384
	ds_load_u8 v113, v107 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	ds_load_u8 v113, v107 offset:896
	ds_load_u8 v114, v107 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v128, v113, 16, v112
	v_wmma_i32_16x16x16_iu4 v[112:119], v[128:129], v[45:46], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v45, v107 offset:3456
	ds_load_u8 v46, v107 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v107 offset:3968
	ds_load_u8 v120, v107 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v120, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v107 offset:2432
	ds_load_u8 v120, v107 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v120, v45, 0xc0c0004
	ds_load_u8 v120, v107 offset:2944
	ds_load_u8 v121, v107 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v120, 16, v45
	v_wmma_i32_16x16x16_iu4 v[112:119], v[45:46], v[41:42], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v41, v107 offset:5504
	ds_load_u8 v42, v107 offset:5248
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v107 offset:6016
	ds_load_u8 v120, v107 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v120, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v107 offset:4480
	ds_load_u8 v120, v107 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v120, v41, 0xc0c0004
	ds_load_u8 v120, v107 offset:4992
	ds_load_u8 v121, v107 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v120, 16, v41
	v_wmma_i32_16x16x16_iu4 v[112:119], v[41:42], v[37:38], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v37, v107 offset:7552
	ds_load_u8 v38, v107 offset:7296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v38, v37, 0xc0c0004
	ds_load_u8 v38, v107 offset:8064
	ds_load_u8 v120, v107 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v38, v120, v38, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v38, 16, v37
	ds_load_u8 v37, v107 offset:6528
	ds_load_u8 v120, v107 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v37, v120, v37, 0xc0c0004
	ds_load_u8 v120, v107 offset:7040
	ds_load_u8 v121, v107 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v37, v120, 16, v37
	v_wmma_i32_16x16x16_iu4 v[112:119], v[37:38], v[33:34], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v33, v107 offset:9600
	ds_load_u8 v34, v107 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v34, v33, 0xc0c0004
	ds_load_u8 v34, v107 offset:10112
	ds_load_u8 v120, v107 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v34, v120, v34, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v34, 16, v33
	ds_load_u8 v33, v107 offset:8576
	ds_load_u8 v120, v107 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v33, v120, v33, 0xc0c0004
	ds_load_u8 v120, v107 offset:9088
	ds_load_u8 v121, v107 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v120, 16, v33
	v_wmma_i32_16x16x16_iu4 v[112:119], v[33:34], v[29:30], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v29, v107 offset:11648
	ds_load_u8 v30, v107 offset:11392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v30, v29, 0xc0c0004
	ds_load_u8 v30, v107 offset:12160
	ds_load_u8 v120, v107 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v30, v120, v30, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v30, 16, v29
	ds_load_u8 v29, v107 offset:10624
	ds_load_u8 v120, v107 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v29, v120, v29, 0xc0c0004
	ds_load_u8 v120, v107 offset:11136
	ds_load_u8 v121, v107 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v29, v120, 16, v29
	v_wmma_i32_16x16x16_iu4 v[112:119], v[29:30], v[25:26], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v25, v107 offset:13696
	ds_load_u8 v26, v107 offset:13440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	ds_load_u8 v26, v107 offset:14208
	ds_load_u8 v120, v107 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v120, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v26, v26, 16, v25
	ds_load_u8 v25, v107 offset:12672
	ds_load_u8 v120, v107 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v120, v25, 0xc0c0004
	ds_load_u8 v120, v107 offset:13184
	ds_load_u8 v121, v107 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v120, v121, v120, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v25, v120, 16, v25
	v_wmma_i32_16x16x16_iu4 v[112:119], v[25:26], v[21:22], v[112:119] neg_lo:[1,1,0]
	ds_load_u8 v21, v107 offset:15744
	ds_load_u8 v22, v107 offset:15488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v22, v21, 0xc0c0004
	ds_load_u8 v22, v107 offset:16256
	ds_load_u8 v120, v107 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v120, v22, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v22, v22, 16, v21
	ds_load_u8 v21, v107 offset:14720
	ds_load_u8 v120, v107 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v21, v120, v21, 0xc0c0004
	ds_load_u8 v120, v107 offset:15232
	ds_load_u8 v107, v107 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[120:127], v[50:51], v[47:48], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[128:129], v[47:48], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v21, v107, 16, v21
	v_wmma_i32_16x16x16_iu4 v[120:127], v[52:53], v[43:44], v[120:127] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[45:46], v[43:44], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[112:119], v[21:22], v[17:18], v[112:119] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[54:55], v[39:40], v[120:127] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v9
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[39:40], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v18, v10
	v_cvt_f32_i32_e32 v9, v13
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[120:127], v[56:57], v[35:36], v[120:127] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v10, v113
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v13, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[120:127], v[58:59], v[31:32], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[31:32], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[60:61], v[27:28], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[120:127], v[62:63], v[23:24], v[120:127] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[23:24], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v23, v12
	v_cvt_f32_i32_e32 v12, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[120:127], v[64:65], v[19:20], v[120:127] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v14, v15
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v21, v11
	v_cvt_f32_i32_e32 v11, v112
	v_cvt_f32_i32_e32 v15, v115
	v_cvt_f32_i32_e32 v19, v116
	v_cvt_f32_i32_e32 v20, v117
	v_cvt_f32_i32_e32 v22, v118
	v_cvt_f32_i32_e32 v24, v119
	v_cvt_f32_i32_e32 v25, v120
	v_cvt_f32_i32_e32 v26, v121
	v_cvt_f32_i32_e32 v29, v122
	v_cvt_f32_i32_e32 v27, v123
	v_cvt_f32_i32_e32 v28, v124
	v_cvt_f32_i32_e32 v30, v125
	v_cvt_f32_i32_e32 v31, v126
	v_cvt_f32_i32_e32 v32, v127
	v_cvt_f32_i32_e32 v33, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
	v_mov_b32_e32 v1, v106
.LBB0_11:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v34, v105, v104
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
.Ltmp24:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v51.l, 0
.Ltmp25:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s48, s48, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v51.h, v111.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v34, s48, v34, 1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v52.h, v110.l
	v_mov_b16_e32 v52.l, v51.l
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_and_b32 s25, s15, 0xffff
	s_mov_b32 s27, 0x31027000
	v_cndmask_b32_e64 v35, 0x80000000, v34, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v33, v33, v51 :: v_dual_add_nc_u32 v36, 4, v34
	v_dual_mul_f32 v6, v6, v51 :: v_dual_add_nc_u32 v37, 8, v34
	v_dual_mul_f32 v7, v7, v51 :: v_dual_add_nc_u32 v38, 12, v34
	v_dual_mul_f32 v8, v8, v51 :: v_dual_add_nc_u32 v39, 16, v34
	v_dual_mul_f32 v29, v29, v51 :: v_dual_add_nc_u32 v40, 20, v34
	v_dual_mul_f32 v32, v32, v51 :: v_dual_add_nc_u32 v41, 24, v34
	v_dual_mul_f32 v31, v31, v51 :: v_dual_add_nc_u32 v42, 28, v34
	v_dual_mul_f32 v30, v30, v51 :: v_dual_add_nc_u32 v43, 0x100, v34
	v_dual_mul_f32 v27, v27, v51 :: v_dual_add_nc_u32 v44, 0x104, v34
	v_dual_mul_f32 v28, v28, v51 :: v_dual_add_nc_u32 v45, 0x114, v34
	v_dual_mul_f32 v25, v25, v51 :: v_dual_add_nc_u32 v46, 0x118, v34
	v_dual_mul_f32 v26, v26, v51 :: v_dual_add_nc_u32 v47, 0x11c, v34
	v_dual_mul_f32 v5, v5, v51 :: v_dual_add_nc_u32 v48, 0x108, v34
	v_dual_mul_f32 v3, v3, v51 :: v_dual_add_nc_u32 v50, 0x10c, v34
	v_dual_mul_f32 v11, v11, v52 :: v_dual_add_nc_u32 v34, 0x110, v34
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_mov_b32 s24, s14
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	buffer_load_u16 v35, v35, s[24:27], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	s_clause 0xe
	buffer_load_u16 v34, v34, s[24:27], 0 offen
	buffer_load_u16 v50, v50, s[24:27], 0 offen
	buffer_load_u16 v48, v48, s[24:27], 0 offen
	buffer_load_u16 v44, v44, s[24:27], 0 offen
	buffer_load_u16 v43, v43, s[24:27], 0 offen
	buffer_load_u16 v45, v45, s[24:27], 0 offen
	buffer_load_u16 v46, v46, s[24:27], 0 offen
	buffer_load_u16 v47, v47, s[24:27], 0 offen
	buffer_load_u16 v36, v36, s[24:27], 0 offen
	buffer_load_u16 v37, v37, s[24:27], 0 offen
	buffer_load_u16 v38, v38, s[24:27], 0 offen
	buffer_load_u16 v41, v41, s[24:27], 0 offen
	buffer_load_u16 v42, v42, s[24:27], 0 offen
	buffer_load_u16 v39, v39, s[24:27], 0 offen
	buffer_load_u16 v40, v40, s[24:27], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v17, v17, v52
	v_dual_mul_f32 v53, v12, v52 :: v_dual_mul_f32 v2, v2, v51
	v_mul_f32_e32 v23, v23, v52
	v_mul_f32_e32 v20, v20, v52
	v_mul_f32_e32 v18, v18, v52
	v_mul_f32_e32 v16, v16, v52
	v_mul_f32_e32 v14, v14, v52
	v_mul_f32_e32 v19, v19, v52
	v_mul_f32_e32 v10, v10, v52
	v_mul_f32_e32 v22, v22, v52
	v_mul_f32_e32 v24, v24, v52
	v_dual_mul_f32 v4, v4, v51 :: v_dual_mul_f32 v21, v21, v52
	v_mul_f32_e32 v9, v9, v52
	v_mul_f32_e32 v15, v15, v52
	v_mul_f32_e32 v13, v13, v52
	s_mov_b32 s0, 0x76543210
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v12, 16, v35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v25, v25, v12, v103
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v35, 16, v43
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v43, 16, v45
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v45, 16, v46
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v46, 16, v47
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v38, 16, v38
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v41, 16, v41
	v_lshlrev_b32_e32 v48, 16, v48
	v_lshlrev_b32_e32 v44, 16, v44
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v36, v89
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v12, v102
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v47, 16, v50
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v35, v72
	v_fma_f32 v33, v33, v35, v98
	v_fma_f32 v27, v27, v38, v90
	v_fma_f32 v31, v31, v41, v93
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v103, v25, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v35, v18, v36, v85
	v_fma_f32 v36, v23, v38, v86
	v_fma_f32 v38, v14, v41, v83
	v_fma_f32 v3, v3, v48, v78
	v_fma_f32 v41, v10, v44, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v23, v89, v26, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v42, 16, v42
	v_lshlrev_b32_e32 v34, 16, v34
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v93, v31, s2
	v_cndmask_b32_e64 v10, v78, v3, s2
	v_cndmask_b32_e64 v31, v73, v41, s2
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v3, |v12|, |v12|
	v_max_f32_e64 v41, |v23|, |v23|
.Ltmp29:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v20, v20, v43, v101
	v_fma_f32 v50, v22, v45, v100
	v_fma_f32 v52, v24, v46, v99
	v_fma_f32 v6, v6, v43, v97
	v_fma_f32 v7, v7, v45, v96
	v_fma_f32 v8, v8, v46, v95
	v_fma_f32 v28, v28, v39, v91
	v_fma_f32 v32, v32, v42, v88
	v_fma_f32 v29, v29, v37, v94
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v102, v17, s2
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v39, v81
	v_fma_f32 v39, v16, v42, v84
	v_fma_f32 v2, v2, v44, v77
	v_fma_f32 v4, v4, v47, v79
	v_fma_f32 v42, v13, v48, v74
	v_fma_f32 v43, v15, v47, v75
	v_fma_f32 v44, v19, v34, v76
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v24, v72, v11, s2
	v_cndmask_b32_e64 v11, v98, v33, s2
	v_cndmask_b32_e64 v33, v86, v36, s2
	v_cndmask_b32_e64 v36, v85, v35, s2
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v41
.Ltmp31:
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v30, v30, v40, v92
	v_fma_f32 v17, v53, v40, v82
	v_fma_f32 v40, v5, v34, v80
	v_fma_f32 v37, v21, v37, v87
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v22, v101, v20, s2
	v_cndmask_b32_e64 v21, v100, v50, s2
	v_cndmask_b32_e64 v5, v97, v6, s2
	v_cndmask_b32_e64 v6, v96, v7, s2
	v_cndmask_b32_e64 v7, v95, v8, s2
	v_cndmask_b32_e64 v18, v94, v29, s2
	v_cndmask_b32_e64 v13, v88, v32, s2
	v_cndmask_b32_e64 v15, v92, v30, s2
	v_cndmask_b32_e64 v16, v91, v28, s2
	v_cndmask_b32_e64 v19, v90, v27, s2
	v_cndmask_b32_e64 v32, v82, v17, s2
	v_cndmask_b32_e64 v35, v81, v9, s2
	v_cndmask_b32_e64 v8, v80, v40, s2
	v_cndmask_b32_e64 v9, v79, v4, s2
	v_cndmask_b32_e64 v17, v77, v2, s2
	v_cndmask_b32_e64 v26, v76, v44, s2
	v_cndmask_b32_e64 v27, v75, v43, s2
	v_cndmask_b32_e64 v29, v74, v42, s2
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v2, |v25|, |v25|
	v_max_f32_e64 v4, |v36|, |v36|
.Ltmp33:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v20, v99, v52, s2
	v_cndmask_b32_e64 v34, v87, v37, s2
	v_cndmask_b32_e64 v28, v84, v39, s2
	v_cndmask_b32_e64 v30, v83, v38, s2
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v37, |v33|, |v35|, |v32|
	v_max3_f32 v39, |v31|, |v29|, |v27|
	v_max3_f32 v40, |v26|, |v22|, |v21|
	v_max3_f32 v42, |v19|, |v16|, |v15|
	v_max3_f32 v43, |v17|, |v10|, |v9|
	v_max3_f32 v44, |v8|, |v5|, |v6|
	v_max_f32_e32 v2, v2, v4
	v_max3_f32 v38, |v30|, |v28|, |v24|
	v_max3_f32 v4, |v14|, |v13|, |v11|
	v_max3_f32 v39, v39, v40, |v20|
	v_max3_f32 v40, v43, v44, |v7|
	v_max3_f32 v2, v2, |v34|, v37
	v_max3_f32 v3, v3, |v18|, v42
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v37, 0xf0, v71
	v_lshl_add_u32 v41, v69, 8, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v2, v38, v39
	v_max3_f32 v3, v3, v4, v40
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v4, 4, v69
	v_and_b32_e32 v38, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v3, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v42, v70, 3, v4
	v_xor_b32_e32 v4, v4, v37
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v40, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v37, v42, v37
	v_add3_u32 v4, v41, v4, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v39 :: v_dual_max_f32 v3, v3, v40
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v37, 0, v38, v37
	v_lshrrev_b32_e32 v39, 2, v70
	v_lshrrev_b32_e32 v40, 1, v68
	ds_store_b64 v4, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v37, v3
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_add_u32 v38, v38, 3, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v3, v3, v37 :: v_dual_mov_b32 v4, v2
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v38, v38, v39, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v37, v3
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v37, v3, v37
	v_dual_max_f32 v2, v2, v4 :: v_dual_mov_b32 v3, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v4, v2
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v2, v4
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v41, v2, v2 :: v_dual_max_f32 v42, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v3, v4, v41 :: v_dual_lshlrev_b32 v2, 3, v67
	v_max_f32_e32 v4, v37, v42
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v37, 0, v2, v40
	ds_store_b64 v38, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v37
.Ltmp54:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v37, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v38, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v43, vcc_lo, v3, 0x40e00000, v3
	v_rcp_f32_e32 v39, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v41, -v37, v39, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v38, v40, 1.0
	v_fmac_f32_e32 v39, v41, v39
	v_div_scale_f32 v41, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_mul_f32_e32 v42, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v44, v41, v40
	v_fma_f32 v45, -v37, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v38, v44, v41
	v_fmac_f32_e32 v42, v45, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v46, v40
	v_fma_f32 v37, -v37, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v38, v44, v41
	v_div_fmas_f32 v37, v37, v39, v42
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v40, v44
	v_div_fixup_f32 v3, v37, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v37, v38, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.h, v51.l
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v38.h, v51.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v38.l, v37.h
	v_and_b32_e32 v4, 1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v38, 1, v38
	v_add3_u32 v4, v3, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v3, v37, v38, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v79, null, v37, v37, v18
	v_div_scale_f32 v81, null, v37, v37, v19
	v_div_scale_f32 v83, null, v37, v37, v16
	v_rcp_f32_e32 v119, v79
	v_div_scale_f32 v89, null, v37, v37, v13
	v_div_scale_f32 v75, null, v37, v37, v12
	v_div_scale_f32 v77, null, v37, v37, v23
	v_div_scale_f32 v85, null, v37, v37, v15
	v_div_scale_f32 v87, null, v37, v37, v14
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v147, -v79, v119, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v38, 0xffff0000, v4
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v120, v81
	v_rcp_f32_e32 v121, v83
	v_rcp_f32_e32 v124, v89
	v_fmac_f32_e32 v119, v147, v119
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v43, null, v38, v38, v34
	v_div_scale_f32 v52, null, v38, v38, v30
	v_div_scale_f32 v58, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v99, v39
	v_div_scale_f32 v47, null, v38, v38, v35
	v_div_scale_f32 v56, null, v38, v38, v24
	v_rcp_f32_e32 v101, v43
	v_div_scale_f32 v41, null, v38, v38, v36
	v_div_scale_f32 v62, null, v38, v38, v27
	v_div_scale_f32 v64, null, v38, v38, v26
	v_rcp_f32_e32 v105, v52
	v_rcp_f32_e32 v110, v58
	v_div_scale_f32 v60, null, v38, v38, v29
	v_div_scale_f32 v69, null, v38, v38, v22
	v_rcp_f32_e32 v103, v47
	v_div_scale_f32 v45, null, v38, v38, v33
	v_div_scale_f32 v71, null, v38, v38, v21
	v_div_scale_f32 v73, null, v38, v38, v20
	v_rcp_f32_e32 v107, v56
	v_rcp_f32_e32 v100, v41
	v_rcp_f32_e32 v112, v62
	v_rcp_f32_e32 v113, v64
	v_fma_f32 v129, -v39, v99, 1.0
	v_div_scale_f32 v50, null, v38, v38, v32
	v_rcp_f32_e32 v111, v60
	v_rcp_f32_e32 v114, v69
	v_rcp_f32_e32 v102, v45
	v_rcp_f32_e32 v115, v71
	v_rcp_f32_e32 v116, v73
	v_fma_f32 v131, -v43, v101, 1.0
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_fma_f32 v135, -v52, v105, 1.0
	v_fma_f32 v138, -v58, v110, 1.0
	v_fmac_f32_e32 v99, v129, v99
	v_div_scale_f32 v54, null, v38, v38, v28
	v_div_scale_f32 v91, null, v37, v37, v11
	v_div_scale_f32 v93, null, v37, v37, v17
	v_rcp_f32_e32 v104, v50
	v_rcp_f32_e32 v117, v75
	v_rcp_f32_e32 v118, v77
	v_fma_f32 v133, -v47, v103, 1.0
	v_div_scale_f32 v44, s1, v34, v38, v34
	v_rcp_f32_e32 v122, v85
	v_rcp_f32_e32 v123, v87
	v_fma_f32 v137, -v56, v107, 1.0
	v_fmac_f32_e32 v101, v131, v101
	v_div_scale_f32 v53, s5, v30, v38, v30
	v_fma_f32 v130, -v41, v100, 1.0
	v_fma_f32 v140, -v62, v112, 1.0
	v_fma_f32 v141, -v64, v113, 1.0
	v_dual_fmac_f32 v105, v135, v105 :: v_dual_fmac_f32 v110, v138, v110
	v_mul_f32_e32 v129, v40, v99
	v_div_scale_f32 v95, null, v37, v37, v10
	v_rcp_f32_e32 v106, v54
	v_div_scale_f32 v48, s3, v35, v38, v35
	v_rcp_f32_e32 v125, v91
	v_rcp_f32_e32 v126, v93
	v_fma_f32 v139, -v60, v111, 1.0
	v_fma_f32 v142, -v69, v114, 1.0
	v_fmac_f32_e32 v103, v133, v103
	v_div_scale_f32 v57, s7, v24, v38, v24
	v_fma_f32 v132, -v45, v102, 1.0
	v_fma_f32 v143, -v71, v115, 1.0
	v_fma_f32 v144, -v73, v116, 1.0
	v_fmac_f32_e32 v107, v137, v107
	v_mul_f32_e32 v131, v44, v101
	v_div_scale_f32 v42, s0, v36, v38, v36
	v_div_scale_f32 v65, s11, v26, v38, v26
	v_fma_f32 v148, -v81, v120, 1.0
	v_fma_f32 v149, -v83, v121, 1.0
	v_fma_f32 v152, -v89, v124, 1.0
	v_fmac_f32_e32 v100, v130, v100
	v_dual_fmac_f32 v112, v140, v112 :: v_dual_mul_f32 v135, v53, v105
	v_fmac_f32_e32 v113, v141, v113
	v_fma_f32 v157, -v39, v129, v40
	v_rcp_f32_e32 v127, v95
	v_div_scale_f32 v61, s9, v29, v38, v29
	v_fma_f32 v134, -v50, v104, 1.0
	v_fma_f32 v145, -v75, v117, 1.0
	v_fma_f32 v146, -v77, v118, 1.0
	v_dual_fmac_f32 v111, v139, v111 :: v_dual_fmac_f32 v114, v142, v114
	v_mul_f32_e32 v133, v48, v103
	v_div_scale_f32 v46, s2, v33, v38, v33
	v_div_scale_f32 v70, s12, v22, v38, v22
	v_div_scale_f32 v72, s13, v21, v38, v21
	v_fma_f32 v150, -v85, v122, 1.0
	v_fma_f32 v151, -v87, v123, 1.0
	v_dual_fmac_f32 v102, v132, v102 :: v_dual_fmac_f32 v115, v143, v115
	v_dual_fmac_f32 v116, v144, v116 :: v_dual_mul_f32 v137, v57, v107
	v_fma_f32 v159, -v43, v131, v44
	v_div_scale_f32 v74, s14, v20, v38, v20
	v_div_scale_f32 v80, s17, v18, v37, v18
	v_dual_fmac_f32 v120, v148, v120 :: v_dual_mul_f32 v141, v65, v113
	v_dual_fmac_f32 v121, v149, v121 :: v_dual_fmac_f32 v124, v152, v124
	v_dual_fmac_f32 v129, v157, v99 :: v_dual_mul_f32 v130, v42, v100
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v147, v80, v119
	v_fma_f32 v157, -v52, v135, v53
	v_fma_f32 v136, -v54, v106, 1.0
	v_div_scale_f32 v51, s4, v32, v38, v32
	v_div_scale_f32 v63, s10, v27, v38, v27
	v_div_scale_f32 v76, s15, v12, v37, v12
	v_fma_f32 v153, -v91, v125, 1.0
	v_fma_f32 v154, -v93, v126, 1.0
	v_dual_fmac_f32 v104, v134, v104 :: v_dual_fmac_f32 v117, v145, v117
	v_dual_fmac_f32 v118, v146, v118 :: v_dual_mul_f32 v139, v61, v111
	v_fma_f32 v161, -v47, v133, v48
	v_div_scale_f32 v78, s16, v23, v37, v23
	v_div_scale_f32 v84, s19, v16, v37, v16
	v_dual_fmac_f32 v122, v150, v122 :: v_dual_mul_f32 v143, v72, v115
	v_dual_fmac_f32 v123, v151, v123 :: v_dual_mul_f32 v132, v46, v102
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v149, v84, v121 :: v_dual_mul_f32 v142, v70, v114
	v_fmac_f32_e32 v131, v159, v101
	v_fma_f32 v159, -v56, v137, v57
	v_div_scale_f32 v86, s20, v15, v37, v15
	v_dual_mul_f32 v144, v74, v116 :: v_dual_fmac_f32 v135, v157, v105
	v_fma_f32 v158, -v41, v130, v42
	v_fma_f32 v157, -v64, v141, v65
	v_div_scale_f32 v55, s6, v28, v38, v28
	v_fma_f32 v155, -v95, v127, 1.0
	v_fmac_f32_e32 v106, v136, v106
	v_div_scale_f32 v82, s18, v19, v37, v19
	v_div_scale_f32 v88, s21, v14, v37, v14
	v_dual_fmac_f32 v125, v153, v125 :: v_dual_fmac_f32 v126, v154, v126
	v_dual_mul_f32 v145, v76, v117 :: v_dual_mul_f32 v134, v51, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v151, v88, v123 :: v_dual_mul_f32 v140, v63, v112
	v_fmac_f32_e32 v133, v161, v103
	v_fma_f32 v161, -v60, v139, v61
	v_div_scale_f32 v90, s22, v13, v37, v13
	v_dual_mul_f32 v146, v78, v118 :: v_dual_fmac_f32 v137, v159, v107
	v_fma_f32 v160, -v45, v132, v46
	v_fma_f32 v159, -v71, v143, v72
	v_dual_mul_f32 v150, v86, v122 :: v_dual_fmac_f32 v141, v157, v113
	v_fma_f32 v157, -v79, v147, v80
	v_fmac_f32_e32 v130, v158, v100
	v_div_scale_f32 v59, s8, v31, v38, v31
	v_div_scale_f32 v92, s23, v11, v37, v11
	v_fmac_f32_e32 v127, v155, v127
	v_mul_f32_e32 v136, v55, v106
	v_div_scale_f32 v94, s24, v17, v37, v17
	v_dual_mul_f32 v148, v82, v120 :: v_dual_fmac_f32 v139, v161, v111
	v_fma_f32 v162, -v50, v134, v51
	v_fma_f32 v161, -v75, v145, v76
	v_fma_f32 v39, -v39, v129, v40
	v_dual_mul_f32 v152, v90, v124 :: v_dual_fmac_f32 v143, v159, v115
	v_fma_f32 v159, -v83, v149, v84
	v_dual_fmac_f32 v132, v160, v102 :: v_dual_fmac_f32 v147, v157, v119
	v_fma_f32 v40, -v41, v130, v42
	v_div_scale_f32 v96, s25, v10, v37, v10
	v_dual_mul_f32 v138, v59, v110 :: v_dual_mul_f32 v153, v92, v125
	v_fma_f32 v158, -v54, v136, v55
	v_fma_f32 v41, -v43, v131, v44
	v_dual_mul_f32 v154, v94, v126 :: v_dual_fmac_f32 v145, v161, v117
	v_fma_f32 v161, -v87, v151, v88
	v_fmac_f32_e32 v134, v162, v104
	v_div_fmas_f32 v39, v39, v99, v129
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v149, v159, v121
	v_fma_f32 v42, -v45, v132, v46
	v_div_fmas_f32 v40, v40, v100, v130
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v47, v133, v48
	v_mul_f32_e32 v155, v96, v127
	v_fma_f32 v160, -v58, v138, v59
	v_fma_f32 v157, -v91, v153, v92
	v_fmac_f32_e32 v136, v158, v106
	v_div_fmas_f32 v41, v41, v101, v131
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v151, v161, v123
	v_fma_f32 v44, -v50, v134, v51
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v102, v132
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v52, v135, v53
	v_div_fixup_f32 v36, v40, v38, v36
	v_div_fmas_f32 v40, v43, v103, v133
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v159, -v95, v155, v96
	v_dual_fmac_f32 v138, v160, v110 :: v_dual_fmac_f32 v153, v157, v125
	v_fma_f32 v46, -v54, v136, v55
	v_fma_f32 v162, -v62, v140, v63
	v_div_fixup_f32 v34, v41, v38, v34
	v_div_fmas_f32 v41, v44, v104, v134
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v56, v137, v57
	v_div_fixup_f32 v33, v39, v38, v33
	v_div_fmas_f32 v39, v45, v105, v135
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v158, -v69, v142, v70
	v_fmac_f32_e32 v155, v159, v127
	v_fma_f32 v48, -v58, v138, v59
	v_div_fixup_f32 v35, v40, v38, v35
	v_div_fmas_f32 v40, v46, v106, v136
	v_div_scale_f32 v46, null, v37, v37, v7
	v_fmac_f32_e32 v140, v162, v112
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v32, v41, v38, v32
	v_div_fmas_f32 v41, v47, v107, v137
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v50, -v60, v139, v61
	v_fmac_f32_e32 v142, v158, v114
	v_div_fixup_f32 v30, v39, v38, v30
	v_div_fmas_f32 v39, v48, v110, v138
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v51, -v62, v140, v63
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v52, -v64, v141, v65
	v_div_fixup_f32 v28, v40, v38, v28
	v_div_fmas_f32 v40, v50, v111, v139
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v53, -v69, v142, v70
	v_fma_f32 v160, -v73, v144, v74
	v_div_fixup_f32 v24, v41, v38, v24
	v_div_fmas_f32 v41, v51, v112, v140
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v31, v39, v38, v31
	v_div_fmas_f32 v39, v52, v113, v141
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v162, -v77, v146, v78
	v_div_fixup_f32 v29, v40, v38, v29
	v_div_fmas_f32 v40, v53, v114, v142
	v_fma_f32 v53, -v46, v48, 1.0
	v_fmac_f32_e32 v144, v160, v116
	v_fma_f32 v54, -v71, v143, v72
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v56, -v75, v145, v76
	v_fmac_f32_e32 v48, v53, v48
	v_div_scale_f32 v53, s3, v7, v37, v7
	v_fmac_f32_e32 v146, v162, v118
	v_fma_f32 v55, -v73, v144, v74
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fmas_f32 v41, v54, v115, v143
	s_mov_b32 vcc_lo, s14
	v_fma_f32 v57, -v77, v146, v78
	v_div_fixup_f32 v26, v39, v38, v26
	v_div_fmas_f32 v39, v55, v116, v144
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v22, v40, v38, v22
	v_div_fmas_f32 v40, v56, v117, v145
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v21, v41, v38, v21
	v_div_fmas_f32 v41, v57, v118, v146
	v_div_scale_f32 v97, null, v37, v37, v9
	v_fma_f32 v158, -v81, v148, v82
	v_fma_f32 v160, -v85, v150, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v23, v41, v37, v23
	v_div_scale_f32 v41, null, v37, v37, v6
	v_rcp_f32_e32 v128, v97
	v_fmac_f32_e32 v148, v158, v120
	v_fma_f32 v162, -v89, v152, v90
	v_rcp_f32_e32 v44, v41
	v_fma_f32 v58, -v79, v147, v80
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v59, -v81, v148, v82
	v_fma_f32 v60, -v83, v149, v84
	v_fma_f32 v158, -v93, v154, v94
	v_fmac_f32_e32 v152, v162, v124
	v_fma_f32 v156, -v97, v128, 1.0
	v_div_fixup_f32 v20, v39, v38, v20
	v_div_fmas_f32 v38, v58, v119, v147
	v_fma_f32 v51, -v41, v44, 1.0
	s_mov_b32 vcc_lo, s18
	v_fmac_f32_e32 v128, v156, v128
	v_fmac_f32_e32 v150, v160, v122
	v_div_fmas_f32 v39, v59, v120, v148
	v_fmac_f32_e32 v44, v51, v44
	v_div_scale_f32 v51, s2, v6, v37, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v85, v150, v86
	s_mov_b32 vcc_lo, s19
	v_fma_f32 v62, -v87, v151, v88
	v_mul_f32_e32 v55, v51, v44
	v_div_fixup_f32 v12, v40, v37, v12
	v_div_fmas_f32 v40, v60, v121, v149
	s_mov_b32 vcc_lo, s20
	v_fma_f32 v63, -v89, v152, v90
	v_fma_f32 v56, -v41, v55, v51
	v_fmac_f32_e32 v154, v158, v126
	v_div_fixup_f32 v18, v38, v37, v18
	v_div_fmas_f32 v38, v61, v122, v150
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v64, -v91, v153, v92
	v_div_fixup_f32 v19, v39, v37, v19
	v_div_fmas_f32 v39, v62, v123, v151
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v16, v40, v37, v16
	v_div_fmas_f32 v40, v63, v124, v152
	s_mov_b32 vcc_lo, s23
	v_fmac_f32_e32 v55, v56, v44
	v_fma_f32 v65, -v93, v154, v94
	v_div_scale_f32 v98, null, v37, v37, v8
	v_fma_f32 v69, -v95, v155, v96
	v_div_fixup_f32 v15, v38, v37, v15
	v_div_fmas_f32 v38, v64, v125, v153
	s_mov_b32 vcc_lo, s24
	v_div_fixup_f32 v14, v39, v37, v14
	v_div_fmas_f32 v39, v65, v126, v154
	s_mov_b32 vcc_lo, s25
	v_div_fixup_f32 v13, v40, v37, v13
	v_div_fmas_f32 v40, v69, v127, v155
	v_div_fixup_f32 v11, v38, v37, v11
	v_rcp_f32_e32 v38, v98
	v_div_scale_f32 v42, vcc_lo, v9, v37, v9
	v_div_fixup_f32 v17, v39, v37, v17
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v128
	v_div_fixup_f32 v10, v40, v37, v10
	v_mul_f32_e32 v57, v53, v48
	v_rcp_f32_e32 v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v98, v38, 1.0
	v_fma_f32 v50, -v97, v45, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_fmac_f32 v38, v40, v38 :: v_dual_fmac_f32 v45, v50, v128
	v_div_scale_f32 v40, s0, v8, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v39, v43, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v42, -v97, v45, v42
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v43, v47, v43
	v_div_scale_f32 v47, s1, v5, v37, v5
	v_div_fmas_f32 v42, v42, v128, v45
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v45, -v46, v57, v53
	v_mul_f32_e32 v52, v40, v38
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v57, v45, v48
	v_fma_f32 v50, -v98, v52, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v54, v47, v43
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v21
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v52, v50, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v50, -v39, v54, v47
	v_div_fixup_f32 v9, v42, v37, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v45, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v40, -v98, v52, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v54, v50, v43 :: v_dual_and_b32 v17, 15, v26
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v38, v40, v38, v52
	v_fma_f32 v40, -v41, v55, v51
	v_fma_f32 v39, -v39, v54, v47
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v41, -v46, v57, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v29, v29
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v39, v39, v43, v54
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v44, v55
	s_mov_b32 vcc_lo, s3
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v41, v41, v48, v57
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v38, v37, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v7, v41, v37, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v28, v28
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v39, v37, v5
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v37, v12
	v_cvt_i32_f32_e32 v44, v11
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v12, 15, v28
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v28, 11, v0
	v_lshlrev_b32_e32 v30, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v5, v5
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v41, v15
	v_cvt_i32_f32_e32 v42, v14
	v_cvt_i32_f32_e32 v47, v9
	v_cvt_i32_f32_e32 v52, v7
	v_and_b32_e32 v7, 15, v34
	v_and_b32_e32 v9, 15, v35
	v_and_b32_e32 v14, 15, v31
	v_and_b32_e32 v15, 15, v29
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v29, 0x160, v0
	v_and_b32_e32 v28, 0x3000, v28
	v_lshlrev_b32_e32 v31, 7, v109
	v_lshlrev_b32_e32 v34, 7, v0
	v_and_b32_e32 v35, 0x60, v30
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v38, v18
	v_cvt_i32_f32_e32 v39, v19
	v_cvt_i32_f32_e32 v46, v10
	v_cvt_i32_f32_e32 v48, v8
	v_and_b32_e32 v8, 15, v33
	v_and_b32_e32 v10, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v32, 0x200, v1
	v_xor_b32_e32 v33, v49, v29
	v_add3_u32 v31, 0, v28, v31
	v_and_or_b32 v34, 0x3600, v34, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v43, v13
	v_cvt_i32_f32_e32 v50, v5
	v_cvt_i32_f32_e32 v51, v6
	v_and_b32_e32 v5, 15, v25
	v_and_b32_e32 v6, 15, v36
	v_and_b32_e32 v13, 15, v24
	v_and_b32_e32 v18, 15, v22
	v_and_b32_e32 v19, 15, v21
	v_and_b32_e32 v21, 15, v37
	v_and_b32_e32 v22, 15, v23
	v_and_b32_e32 v23, 15, v38
	v_and_b32_e32 v24, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v37, v31, v32, v33
	v_xad_u32 v38, v34, v108, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v40, v16
	v_and_b32_e32 v16, 15, v27
	v_and_b32_e32 v20, 15, v20
	v_and_b32_e32 v28, 15, v44
	v_and_b32_e32 v29, 15, v45
	v_and_b32_e32 v30, 15, v46
	v_and_b32_e32 v31, 15, v47
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v37, v[5:8]
	ds_store_b128 v37, v[13:16] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v38
	ds_load_b128 v[13:16], v38 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[21:24]
	ds_store_b128 v37, v[28:31] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v38
	ds_load_b128 v[29:32], v38 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[9:12]
	ds_store_b128 v37, v[17:20] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v38
	ds_load_b128 v[17:20], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v25, 15, v40
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v27, 15, v42
	v_and_b32_e32 v28, 15, v43
	v_and_b32_e32 v33, 15, v48
	v_and_b32_e32 v34, 15, v50
	v_and_b32_e32 v35, 15, v51
	v_and_b32_e32 v36, 15, v52
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[25:28]
	ds_store_b128 v37, v[33:36] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[25:28], v38
	ds_load_b128 v[33:36], v38 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s34, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	v_lshl_or_b32 v12, v29, 4, v21
	v_lshl_or_b32 v13, v30, 4, v22
	v_lshl_or_b32 v14, v31, 4, v23
	v_lshl_or_b32 v15, v32, 4, v24
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v18, s2, s1, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v33, 4, v25
	v_lshl_or_b32 v19, v34, 4, v26
	v_lshl_or_b32 v20, v35, 4, v27
	v_lshl_or_b32 v21, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.h, v2.h, v2.l
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v66
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v21.l
	v_and_b16 v6.l, 0xff, v20.l
	v_lshlrev_b16 v6.h, 8, v19.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v9.l, v2.h, v2.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v67
	v_lshrrev_b32_e32 v3, 2, v68
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v4, 2, v66
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s0, 5
	v_add_nc_u32_e32 v22, v18, v16
	v_add3_u32 v16, v16, s0, v18
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, 0, v2, v3
	v_add3_u32 v1, 0, v1, v4
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, v0, 63, s34
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s25, s29, 0xffff
	s_mov_b32 s24, s28
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v22, s[24:27], 0 offen
	buffer_store_b64 v[10:11], v16, s[24:27], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s25, s31, 0xffff
	s_mov_b32 s24, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[24:27], 0 offen
.Ltmp55:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 163
		.amdhsa_next_free_sgpr 53
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 163
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14472
; TotalNumSgprs: 55
; NumVgprs: 163
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 163
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
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	181                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc128_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     163
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
