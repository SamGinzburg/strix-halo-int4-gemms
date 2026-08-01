	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
	v_and_b32_e32 v71, 7, v0
	v_and_b32_e32 v69, 15, v0
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v68, 4, v0
	v_and_b32_e32 v70, 0x100, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v72, 0xe0, v0
	v_lshlrev_b32_e32 v41, 4, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v3, 32, v68
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
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
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 119 20 is_stmt 0              ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29 is_stmt 1              ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s7, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s17, s16
	s_sub_i32 s18, 0, s16
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s17
	v_readfirstlane_b32 s17, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v71
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s31, s11
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s10, s17, 0x4f7ffffe
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_mad_u64_u32 v[4:5], null, s34, v2, v[1:2]
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_mad_u64_u32 v[5:6], null, s35, v68, v[41:42]
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_u32_f32 s17, s10
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_mov_b32 s30, s10
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
	s_xor_b32 s18, s5, s17
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s21, s4, 0x7f
.Ltmp13:
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s19, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s4, s16
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s18, s17
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s21, 31
.Ltmp15:
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v6, s19, v2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s20, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s33, s6
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v7, s19, v68
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s3, s3, 25
.Ltmp17:
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 197 22                        ; generate_amdgcn.py:197:22
	v_or_b32_e32 v8, s19, v3
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s23, s21, s3
.Ltmp19:
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s7
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e32 vcc_lo, s20, v6
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s3, 64, v6
	.loc	1 127 14 is_stmt 1              ; generate_amdgcn.py:127:14
	s_lshl_b32 s49, s33, 8
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s7, s23, 7
.Ltmp21:
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s48, s2, 6
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	s_mul_i32 s16, s34, s19
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_mul_i32 s22, s35, s19
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s5, s20, v7
	.loc	1 198 51 is_stmt 0              ; generate_amdgcn.py:198:51
	v_cmp_gt_i32_e64 s4, 64, v7
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0x7f
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_gt_i32_e64 s6, s20, v8
	.loc	1 214 34                        ; generate_amdgcn.py:214:34
	v_add3_u32 v4, s16, s48, v4
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cselect_b32 s2, -1, 0
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_add_i32 s22, s49, s22
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s16, s3, vcc_lo
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	s_lshl_b32 s23, s35, 5
	v_add_nc_u32_e32 v6, s22, v5
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s5, s4, s5
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s16
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add3_u32 v5, s22, s23, v5
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s6, s4, s6
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v9, 0x80000000, v5, vcc_lo
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[13:14], v4, s[8:11], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[5:8], v6, s[28:31], 0 offen
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_lshlrev_b32_e32 v4, 3, v0
	s_mov_b32 s5, -1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s21, 0xff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_add_nc_u32_e32 v45, 0, v4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v46, v45, v4
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v4, 4, v70
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v45, v[13:14] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[5:8]
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[9:12] offset:8192
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
.LBB0_3:                                ; %Flow306
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_load_b128 s[24:27], s[0:1], 0x20
	v_lshrrev_b32_e32 v105, 1, v72
	v_or_b32_e32 v44, v4, v69
	v_bfe_u32 v106, v0, 4, 1
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v48, 0, v69, v105
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v107, 0, v44
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v85, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s5, s7, -1
	s_cbranch_vccnz .LBB0_6
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v5, s18, 9, v72
	s_mov_b32 s16, 0
	s_lshl_b32 s0, s17, 9
	v_sub_nc_u32_e32 v47, s20, v3
	v_sub_nc_u32_e32 v49, s20, v2
	v_sub_nc_u32_e32 v50, s20, v68
	v_subrev_nc_u32_e32 v52, s0, v5
	s_lshl_b32 s0, s18, 8
	s_mov_b32 s18, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v3, s19, v68
	s_add_i32 s50, s19, 64
	s_mov_b32 s19, s16
	v_mov_b32_e32 v85, 0
	v_add3_u32 v4, s48, v4, v69
	v_add_nc_u32_e32 v6, 0x60, v3
	v_add_nc_u32_e32 v3, 64, v3
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v94, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s35, v6
	v_mul_lo_u32 v3, s35, v3
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v104, 0
	v_add3_u32 v5, v5, s0, v41
	v_add3_u32 v3, v3, s0, v41
	s_lshl_b32 s0, s17, 8
	s_mov_b32 s17, s16
	v_add_nc_u32_e32 v7, 32, v4
	v_add_nc_u32_e32 v2, s50, v2
	v_mul_lo_u32 v4, s7, v4
	v_subrev_nc_u32_e32 v55, s0, v5
	v_subrev_nc_u32_e32 v56, s0, v3
	v_mul_lo_u32 v6, s7, v7
	v_mul_lo_u32 v2, s34, v2
	v_dual_mov_b32 v102, 0 :: v_dual_lshlrev_b32 v51, 1, v106
	v_mov_b32_e32 v100, 0
	v_lshlrev_b32_e32 v54, 1, v4
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v88, 0 :: v_dual_lshlrev_b32 v53, 1, v6
	v_add3_u32 v57, v2, s48, v1
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v75, 0
	v_mov_b32_e32 v73, 0
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_mov_b64 s[36:37], s[12:13]
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_max_i32 s6, s5, 1
	s_lshl_b32 s51, s35, 1
	s_lshl_b32 s52, s35, 6
	s_lshl_b32 s34, s34, 6
	s_mov_b32 s44, s12
	s_mov_b32 s45, s13
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e32 vcc_lo, s50, v49
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v58, v54, s[44:47], 0 offen
	buffer_load_u16 v59, v53, s[44:47], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s0, s50, v50
	v_cmp_lt_i32_e64 s1, s50, v47
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 vcc_lo, vcc_lo, s3
	.loc	1 214 26 is_stmt 1              ; generate_amdgcn.py:214:26
	v_dual_cndmask_b32 v9, 0x80000000, v57 :: v_dual_add_nc_u32 v62, v51, v52
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s0, s0, s4
	s_and_b32 s1, s1, s4
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v61, 0x80000000, v56, s0
	v_cndmask_b32_e64 v60, 0x80000000, v55, s1
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[42:43], v9, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v107 offset:16704
	ds_load_u8 v10, v107 offset:16640
	ds_load_u8 v11, v107 offset:16832
	ds_load_u8 v12, v107 offset:16768
	ds_load_u8 v13, v107 offset:16448
	ds_load_u8 v14, v107 offset:16384
	ds_load_u8 v15, v107 offset:16416
	ds_load_u8 v16, v107 offset:16576
	ds_load_u8 v17, v107 offset:16512
	ds_load_u8 v18, v48 offset:1280
	ds_load_u8 v19, v48 offset:1024
	ds_load_u8 v20, v48 offset:1792
	ds_load_u8 v21, v48 offset:1536
	ds_load_u8 v22, v48 offset:256
	ds_load_u8 v23, v48
	ds_load_u8 v24, v48 offset:768
	ds_load_u8 v25, v48 offset:512
	ds_load_u8 v26, v107 offset:17216
	ds_load_u8 v27, v107 offset:17152
	ds_load_u8 v28, v107 offset:17344
	ds_load_u8 v29, v107 offset:17280
	ds_load_u8 v30, v107 offset:16960
	ds_load_u8 v31, v107 offset:16896
	ds_load_u8 v32, v107 offset:17088
	ds_load_u8 v33, v107 offset:17024
	ds_load_u8 v34, v48 offset:3328
	ds_load_u8 v35, v48 offset:3072
	ds_load_u8 v36, v48 offset:3840
	ds_load_u8 v37, v48 offset:3584
	ds_load_u8 v38, v48 offset:2304
	ds_load_u8 v39, v48 offset:2048
	ds_load_u8 v40, v48 offset:2816
	ds_load_u8 v63, v48 offset:2560
	ds_load_u8 v67, v107 offset:17728
	ds_load_u8 v112, v107 offset:17664
	ds_load_u8 v113, v107 offset:17856
	ds_load_u8 v114, v107 offset:17792
	ds_load_u8 v64, v48 offset:1408
	ds_load_u8 v65, v48 offset:1152
	ds_load_u8 v66, v48 offset:1920
	ds_load_u8 v108, v48 offset:1664
	ds_load_u8 v109, v48 offset:384
	ds_load_u8 v110, v48 offset:128
	ds_load_u8 v111, v48 offset:896
	ds_load_u8 v115, v48 offset:640
	ds_load_u8 v116, v48 offset:3456
	ds_load_u8 v117, v48 offset:3200
	ds_load_u8 v118, v48 offset:3968
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v48 offset:3712
	ds_load_u8 v123, v48 offset:5376
	ds_load_u8 v126, v48 offset:5632
	ds_load_u8 v124, v48 offset:5120
	s_waitcnt lgkmcnt(48)
	v_perm_b32 v11, v12, v11, 0xc0c0004
	ds_load_u8 v12, v48 offset:2432
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v16, v17, v16, 0xc0c0004
	ds_load_u8 v17, v48 offset:2944
	s_waitcnt lgkmcnt(43)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	ds_load_u8 v19, v48 offset:2688
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v20, v21, v20, 0xc0c0004
	ds_load_u8 v21, v107 offset:16736
	s_waitcnt lgkmcnt(41)
	v_perm_b32 v22, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(39)
	v_perm_b32 v24, v25, v24, 0xc0c0004
	ds_load_u8 v25, v107 offset:16864
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(36)
	v_perm_b32 v28, v29, v28, 0xc0c0004
	ds_load_u8 v29, v107 offset:16480
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v30, v31, v30, 0xc0c0004
	ds_load_u8 v31, v107 offset:16608
	s_waitcnt lgkmcnt(34)
	v_perm_b32 v32, v33, v32, 0xc0c0004
	ds_load_u8 v33, v107 offset:16544
	s_waitcnt lgkmcnt(19)
	v_perm_b32 v66, v108, v66, 0xc0c0004
	ds_load_u8 v108, v107 offset:16928
	ds_load_u8 v27, v107 offset:16800
	ds_load_u8 v23, v107 offset:16672
	v_perm_b32 v13, v14, v13, 0xc0c0004
	ds_load_u8 v14, v48 offset:2176
	v_perm_b32 v34, v35, v34, 0xc0c0004
	ds_load_u8 v35, v107 offset:17248
	v_perm_b32 v36, v37, v36, 0xc0c0004
	v_perm_b32 v38, v39, v38, 0xc0c0004
	ds_load_u8 v39, v107 offset:17376
	v_perm_b32 v40, v63, v40, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	ds_load_u8 v65, v107 offset:16992
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v107 offset:17120
	s_waitcnt lgkmcnt(23)
	v_perm_b32 v111, v115, v111, 0xc0c0004
	ds_load_u8 v115, v107 offset:17056
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v116, v117, v116, 0xc0c0004
	ds_load_u8 v117, v107 offset:17472
	ds_load_u8 v63, v107 offset:17312
	ds_load_u8 v37, v107 offset:17184
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v17, v19, v17, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v19, v23, v21, 0xc0c0004
	v_perm_b32 v21, v27, v25, 0xc0c0004
	v_perm_b32 v23, v15, v29, 0xc0c0004
	v_perm_b32 v25, v33, v31, 0xc0c0004
	v_perm_b32 v118, v10, v118, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v120, v14, v12, 0xc0c0004
	v_lshl_or_b32 v10, v11, 16, v9
	v_lshl_or_b32 v9, v16, 16, v13
	v_lshl_or_b32 v12, v20, 16, v18
	v_lshl_or_b32 v11, v24, 16, v22
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v31, v108, v65, 0xc0c0004
	v_lshl_or_b32 v64, v66, 16, v64
	v_lshl_or_b32 v108, v25, 16, v23
	v_lshl_or_b32 v14, v28, 16, v26
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v33, v115, v110, 0xc0c0004
	v_lshl_or_b32 v13, v32, 16, v30
	v_lshl_or_b32 v16, v36, 16, v34
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v29, v63, v39, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v37, v35, 0xc0c0004
	v_lshl_or_b32 v63, v111, 16, v109
	v_lshl_or_b32 v109, v21, 16, v19
	v_lshl_or_b32 v15, v40, 16, v38
	v_lshl_or_b32 v66, v118, 16, v116
	v_lshl_or_b32 v65, v17, 16, v120
	v_lshl_or_b32 v111, v29, 16, v27
	v_lshl_or_b32 v110, v33, 16, v31
	v_wmma_i32_16x16x16_iu4 v[33:40], v[11:12], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[63:64], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[11:12], v[108:109], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v119, v107 offset:17408
	ds_load_u8 v125, v48 offset:5888
	ds_load_u8 v116, v48 offset:4992
	ds_load_u8 v118, v48 offset:4736
	v_wmma_i32_16x16x16_iu4 v[33:40], v[15:16], v[13:14], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[13:14], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[15:16], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[63:64], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v63, v112, v67, 0xc0c0004
	ds_load_u8 v67, v48 offset:5504
	ds_load_u8 v112, v48 offset:6016
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[110:111], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v65, v48 offset:4352
	ds_load_u8 v66, v48 offset:4096
	ds_load_u8 v108, v48 offset:4864
	ds_load_u8 v109, v48 offset:4608
	v_perm_b32 v64, v114, v113, 0xc0c0004
	ds_load_u8 v114, v48 offset:5760
	ds_load_u8 v110, v48 offset:5248
	v_perm_b32 v115, v124, v123, 0xc0c0004
	ds_load_u8 v121, v107 offset:17600
	ds_load_u8 v122, v107 offset:17536
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v111, v119, v117, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v117, v126, v125, 0xc0c0004
	ds_load_u8 v119, v107 offset:17760
	v_lshl_or_b32 v64, v64, 16, v63
	ds_load_u8 v120, v107 offset:17696
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s6, s6, -1
	s_add_i32 s50, s50, 64
	s_cmp_lg_u32 s6, 0
	v_add_nc_u32_e32 v52, s51, v52
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	v_lshl_or_b32 v66, v117, 16, v115
	ds_load_u8 v115, v107 offset:17888
	ds_load_u8 v117, v107 offset:17824
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v67, v110, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v65, v108, 16, v65
	v_perm_b32 v108, v114, v112, 0xc0c0004
	v_perm_b32 v114, v118, v116, 0xc0c0004
	ds_load_u8 v112, v107 offset:17440
	ds_load_u8 v118, v107 offset:18368
	v_lshl_or_b32 v109, v108, 16, v67
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v117, v115, 0xc0c0004
	ds_load_u8 v117, v107 offset:18304
	ds_load_u8 v116, v107 offset:17568
	ds_load_u8 v110, v107 offset:17504
	v_perm_b32 v113, v122, v121, 0xc0c0004
	ds_load_u8 v121, v107 offset:19424
	ds_load_u8 v122, v107 offset:19360
	v_lshl_or_b32 v63, v113, 16, v111
	ds_load_u8 v111, v48 offset:4480
	ds_load_u8 v113, v48 offset:4224
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[63:64], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v112, v110, 0xc0c0004
	ds_load_u8 v112, v107 offset:17984
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v111, v113, v111, 0xc0c0004
	ds_load_u8 v113, v107 offset:17632
	v_lshl_or_b32 v108, v114, 16, v111
	ds_load_u8 v67, v107 offset:18240
	ds_load_u8 v114, v107 offset:18176
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[63:64], v[25:32] neg_lo:[1,1,0]
	v_perm_b32 v64, v117, v118, 0xc0c0004
	ds_load_u8 v118, v48 offset:7040
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v113, v116, v113, 0xc0c0004
	ds_load_u8 v116, v107 offset:17920
	v_lshl_or_b32 v110, v113, 16, v110
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v63, v114, v67, 0xc0c0004
	ds_load_u8 v67, v48 offset:7552
	v_lshl_or_b32 v64, v64, 16, v63
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v112, v116, v112, 0xc0c0004
	ds_load_u8 v116, v48 offset:8064
	v_perm_b32 v111, v120, v119, 0xc0c0004
	ds_load_u8 v119, v48 offset:7424
	ds_load_u8 v120, v48 offset:7168
	v_lshl_or_b32 v111, v115, 16, v111
	ds_load_u8 v113, v107 offset:18112
	ds_load_u8 v115, v107 offset:18048
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[110:111], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v48 offset:7936
	ds_load_u8 v66, v48 offset:7680
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[110:111], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v108, v48 offset:6400
	ds_load_u8 v109, v48 offset:6144
	ds_load_u8 v110, v48 offset:6912
	ds_load_u8 v111, v48 offset:6656
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v117, v120, v119, 0xc0c0004
	ds_load_u8 v119, v48 offset:6784
	ds_load_u8 v120, v107 offset:18272
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v115, v113, 0xc0c0004
	ds_load_u8 v115, v48 offset:7808
	ds_load_u8 v114, v48 offset:7296
	v_lshl_or_b32 v63, v113, 16, v112
	ds_load_u8 v112, v48 offset:6528
	ds_load_u8 v113, v48 offset:6272
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	v_lshl_or_b32 v66, v65, 16, v117
	ds_load_u8 v111, v107 offset:18400
	ds_load_u8 v117, v107 offset:18336
	v_lshl_or_b32 v65, v109, 16, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[63:64], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v108, v115, v116, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v114, v67, 0xc0c0004
	v_perm_b32 v116, v119, v118, 0xc0c0004
	ds_load_u8 v114, v107 offset:18016
	ds_load_u8 v115, v107 offset:17952
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	v_lshl_or_b32 v109, v108, 16, v67
	ds_load_u8 v113, v107 offset:18144
	ds_load_u8 v118, v107 offset:18080
	v_lshl_or_b32 v108, v116, 16, v112
	ds_load_u8 v116, v107 offset:18880
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v111, v117, v111, 0xc0c0004
	ds_load_u8 v117, v107 offset:18816
	ds_load_u8 v67, v107 offset:18752
	ds_load_u8 v112, v107 offset:18688
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[63:64], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v113, v118, v113, 0xc0c0004
	ds_load_u8 v118, v107 offset:18432
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v64, v117, v116, 0xc0c0004
	ds_load_u8 v116, v48 offset:10112
	v_perm_b32 v114, v115, v114, 0xc0c0004
	ds_load_u8 v115, v107 offset:18496
	ds_load_u8 v110, v107 offset:18208
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v63, v112, v67, 0xc0c0004
	ds_load_u8 v67, v48 offset:9600
	v_lshl_or_b32 v64, v64, 16, v63
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v110, v110, v120, 0xc0c0004
	ds_load_u8 v119, v48 offset:9472
	ds_load_u8 v120, v48 offset:9216
	v_lshl_or_b32 v111, v111, 16, v110
	v_lshl_or_b32 v110, v113, 16, v114
	ds_load_u8 v113, v107 offset:18624
	ds_load_u8 v114, v107 offset:18560
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[110:111], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v48 offset:9984
	ds_load_u8 v66, v48 offset:9728
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[110:111], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v108, v48 offset:8448
	ds_load_u8 v109, v48 offset:8192
	ds_load_u8 v110, v48 offset:8960
	ds_load_u8 v111, v48 offset:8704
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v117, v120, v119, 0xc0c0004
	ds_load_u8 v119, v48 offset:8832
	ds_load_u8 v120, v107 offset:18784
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v113, v114, v113, 0xc0c0004
	ds_load_u8 v114, v48 offset:9856
	ds_load_u8 v112, v48 offset:9344
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v109, v111, v110, 0xc0c0004
	ds_load_u8 v110, v107 offset:18720
	v_lshl_or_b32 v66, v65, 16, v117
	ds_load_u8 v111, v107 offset:18912
	ds_load_u8 v117, v107 offset:18848
	v_lshl_or_b32 v65, v109, 16, v108
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v108, v114, v116, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v111, v117, v111, 0xc0c0004
	ds_load_u8 v117, v107 offset:19328
	ds_load_u8 v114, v107 offset:18464
	v_perm_b32 v115, v118, v115, 0xc0c0004
	ds_load_u8 v118, v48 offset:9088
	v_perm_b32 v67, v112, v67, 0xc0c0004
	ds_load_u8 v112, v107 offset:18528
	v_lshl_or_b32 v63, v113, 16, v115
	ds_load_u8 v113, v48 offset:8576
	ds_load_u8 v115, v48 offset:8320
	v_lshl_or_b32 v109, v108, 16, v67
	v_wmma_i32_16x16x16_iu4 v[33:40], v[65:66], v[63:64], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v116, v119, v118, 0xc0c0004
	ds_load_u8 v118, v107 offset:18592
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v112, v114, v112, 0xc0c0004
	ds_load_u8 v114, v107 offset:19008
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v113, v115, v113, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v108, v116, 16, v113
	ds_load_u8 v116, v107 offset:19392
	ds_load_u8 v115, v107 offset:18656
	v_perm_b32 v110, v110, v120, 0xc0c0004
	ds_load_u8 v67, v107 offset:19264
	ds_load_u8 v113, v107 offset:19200
	v_wmma_i32_16x16x16_iu4 v[25:32], v[108:109], v[63:64], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v63, v48 offset:11520
	ds_load_u8 v64, v48 offset:11264
	v_lshl_or_b32 v111, v111, 16, v110
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v115, v118, v115, 0xc0c0004
	ds_load_u8 v118, v107 offset:18944
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	v_lshl_or_b32 v110, v115, 16, v112
	ds_load_u8 v112, v107 offset:19136
	ds_load_u8 v115, v107 offset:19072
	ds_load_u8 v64, v48 offset:11136
	v_wmma_i32_16x16x16_iu4 v[17:24], v[65:66], v[110:111], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v65, v48 offset:12032
	ds_load_u8 v119, v48 offset:11776
	v_wmma_i32_16x16x16_iu4 v[9:16], v[108:109], v[110:111], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v108, v48 offset:10496
	ds_load_u8 v109, v48 offset:10240
	ds_load_u8 v110, v48 offset:11008
	ds_load_u8 v111, v48 offset:10752
	v_perm_b32 v66, v113, v67, 0xc0c0004
	v_perm_b32 v67, v117, v116, 0xc0c0004
	ds_load_u8 v117, v48 offset:12160
	ds_load_u8 v113, v48 offset:11648
	v_lshl_or_b32 v67, v67, 16, v66
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v114, v118, v114, 0xc0c0004
	ds_load_u8 v118, v48 offset:10880
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v112, v115, v112, 0xc0c0004
	ds_load_u8 v115, v48 offset:11904
	ds_load_u8 v116, v48 offset:11392
	v_lshl_or_b32 v66, v112, 16, v114
	ds_load_u8 v112, v48 offset:10624
	ds_load_u8 v114, v48 offset:10368
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v65, v119, v65, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v108, v109, v108, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v110, v111, v110, 0xc0c0004
	ds_load_u8 v119, v107 offset:19296
	v_lshl_or_b32 v109, v65, 16, v63
	v_lshl_or_b32 v108, v110, 16, v108
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v64, v118, v64, 0xc0c0004
	ds_load_u8 v118, v107 offset:19776
	ds_load_u8 v120, v107 offset:19232
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[66:67], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v65, v115, v117, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v63, v116, v113, 0xc0c0004
	ds_load_u8 v113, v107 offset:19040
	v_perm_b32 v117, v122, v121, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v114, v112, 0xc0c0004
	ds_load_u8 v112, v107 offset:19168
	ds_load_u8 v114, v107 offset:19104
	ds_load_u8 v115, v107 offset:18976
	v_lshl_or_b32 v111, v65, 16, v63
	v_lshl_or_b32 v110, v64, 16, v110
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v63, v62, s[40:43], 0 offen
	buffer_load_u16 v64, v62, s[40:43], 0 offen offset:4
	buffer_load_u16 v65, v62, s[40:43], 0 offen offset:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[66:67], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v66, v107 offset:19456
	ds_load_u8 v67, v107 offset:19648
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v116, v120, v119, 0xc0c0004
	ds_load_u8 v119, v107 offset:19712
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v114, v112, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v115, v115, v113, 0xc0c0004
	v_lshl_or_b32 v113, v117, 16, v116
	ds_load_u8 v114, v107 offset:19904
	v_lshl_or_b32 v112, v112, 16, v115
	ds_load_u8 v115, v107 offset:19840
	ds_load_u8 v116, v107 offset:19520
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[112:113], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v108, v107 offset:19584
	ds_load_u8 v109, v48 offset:13568
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[112:113], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v110, v48 offset:13312
	ds_load_u8 v111, v48 offset:14080
	ds_load_u8 v112, v48 offset:13824
	ds_load_u8 v113, v48 offset:12544
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v114, v115, v114, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v66, v116, 0xc0c0004
	ds_load_u8 v115, v48 offset:13056
	ds_load_u8 v116, v48 offset:12800
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v108, v108, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v108, 16, v66
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v108, v110, v109, 0xc0c0004
	ds_load_u8 v110, v48 offset:13952
	v_perm_b32 v117, v119, v118, 0xc0c0004
	ds_load_u8 v118, v48 offset:12288
	ds_load_u8 v119, v48 offset:13696
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v109, v112, v111, 0xc0c0004
	ds_load_u8 v111, v48 offset:12672
	v_lshl_or_b32 v67, v114, 16, v117
	ds_load_u8 v114, v48 offset:13440
	ds_load_u8 v117, v48 offset:14208
	v_lshl_or_b32 v109, v109, 16, v108
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v112, v118, v113, 0xc0c0004
	ds_load_u8 v118, v107 offset:19744
	ds_load_u8 v113, v48 offset:12416
	v_perm_b32 v115, v116, v115, 0xc0c0004
	ds_load_u8 v116, v48 offset:13184
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v114, v114, v119, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v110, v110, v117, 0xc0c0004
	ds_load_u8 v117, v107 offset:19936
	v_lshl_or_b32 v108, v115, 16, v112
	ds_load_u8 v112, v48 offset:12928
	ds_load_u8 v115, v107 offset:19808
	ds_load_u8 v119, v107 offset:19872
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[66:67], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v113, v113, v111, 0xc0c0004
	v_lshl_or_b32 v111, v110, 16, v114
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v114, v118, v115, 0xc0c0004
	ds_load_u8 v115, v107 offset:19616
	v_perm_b32 v112, v112, v116, 0xc0c0004
	ds_load_u8 v118, v107 offset:20288
	ds_load_u8 v116, v107 offset:19552
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v117, v119, v117, 0xc0c0004
	ds_load_u8 v119, v107 offset:20416
	v_lshl_or_b32 v110, v112, 16, v113
	ds_load_u8 v112, v107 offset:19488
	ds_load_u8 v113, v107 offset:19680
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[66:67], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v66, v107 offset:19968
	ds_load_u8 v67, v107 offset:20160
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v112, v112, v116, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v115, v115, v113, 0xc0c0004
	v_lshl_or_b32 v113, v117, 16, v114
	ds_load_u8 v116, v107 offset:20224
	v_lshl_or_b32 v112, v115, 16, v112
	ds_load_u8 v114, v107 offset:20352
	ds_load_u8 v115, v107 offset:20032
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[112:113], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v108, v107 offset:20096
	ds_load_u8 v109, v48 offset:15616
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[112:113], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v110, v48 offset:15360
	ds_load_u8 v113, v48 offset:16128
	ds_load_u8 v117, v48 offset:15872
	ds_load_u8 v120, v48 offset:14592
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v111, v116, v118, 0xc0c0004
	ds_load_u8 v116, v48 offset:14336
	ds_load_u8 v118, v48 offset:14464
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v112, v114, v119, 0xc0c0004
	ds_load_u8 v114, v48 offset:15104
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v66, v66, v115, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v67, v108, v67, 0xc0c0004
	ds_load_u8 v108, v48 offset:15744
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v109, v110, v109, 0xc0c0004
	ds_load_u8 v110, v48 offset:16000
	ds_load_u8 v119, v48 offset:15232
	ds_load_u8 v115, v48 offset:14848
	v_lshl_or_b32 v112, v112, 16, v111
	v_lshl_or_b32 v111, v67, 16, v66
	ds_load_u8 v66, v48 offset:15488
	ds_load_u8 v67, v48 offset:16256
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v113, v117, v113, 0xc0c0004
	ds_load_u8 v117, v48 offset:14720
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v116, v116, v120, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v115, v115, v114, 0xc0c0004
	v_lshl_or_b32 v114, v113, 16, v109
	ds_load_u8 v109, v48 offset:14976
	ds_load_u8 v120, v107 offset:20320
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v66, v66, v108, 0xc0c0004
	ds_load_u8 v108, v107 offset:20256
	v_lshl_or_b32 v113, v115, 16, v116
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v67, v110, v67, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v115, v118, v117, 0xc0c0004
	ds_load_u8 v110, v107 offset:20448
	ds_load_u8 v117, v107 offset:20384
	ds_load_u8 v118, v107 offset:20064
	v_lshl_or_b32 v116, v67, 16, v66
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v66, v62, s[40:43], 0 offen offset:12
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[113:114], v[111:112], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v109, v109, v119, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v119, v108, v120, 0xc0c0004
	ds_load_u8 v108, v107 offset:20128
	v_lshl_or_b32 v115, v109, 16, v115
	ds_load_u8 v67, v107 offset:20000
	ds_load_u8 v109, v107 offset:20192
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v110, v117, v110, 0xc0c0004
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[111:112], v[25:32] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v111, v62, s[40:43], 0 offen offset:256
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v117, v67, v118, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v109, v108, v109, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v67, v62, s[40:43], 0 offen offset:16
	buffer_load_u16 v108, v62, s[40:43], 0 offen offset:20
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v118, v110, 16, v119
	v_lshl_or_b32 v117, v109, 16, v117
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v109, v62, s[40:43], 0 offen offset:24
	buffer_load_u16 v110, v62, s[40:43], 0 offen offset:28
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[117:118], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[115:116], v[117:118], v[9:16] neg_lo:[1,1,0]
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x6
	buffer_load_u16 v112, v62, s[40:43], 0 offen offset:260
	buffer_load_u16 v113, v62, s[40:43], 0 offen offset:264
	buffer_load_u16 v114, v62, s[40:43], 0 offen offset:268
	buffer_load_u16 v115, v62, s[40:43], 0 offen offset:272
	buffer_load_u16 v116, v62, s[40:43], 0 offen offset:276
	buffer_load_u16 v117, v62, s[40:43], 0 offen offset:280
	buffer_load_u16 v62, v62, s[40:43], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_dual_mul_f32 v17, v59, v17 :: v_dual_lshlrev_b32 v58, 16, v58
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_mul_f32_e32 v34, v58, v34
	v_dual_mul_f32 v33, v58, v33 :: v_dual_mul_f32 v18, v59, v18
	v_dual_mul_f32 v35, v58, v35 :: v_dual_mul_f32 v20, v59, v20
	v_dual_mul_f32 v36, v58, v36 :: v_dual_mul_f32 v19, v59, v19
	v_dual_mul_f32 v37, v58, v37 :: v_dual_mul_f32 v22, v59, v22
	v_dual_mul_f32 v38, v58, v38 :: v_dual_mul_f32 v21, v59, v21
	v_dual_mul_f32 v39, v58, v39 :: v_dual_mul_f32 v24, v59, v24
	v_dual_mul_f32 v40, v58, v40 :: v_dual_mul_f32 v23, v59, v23
	v_dual_mul_f32 v25, v58, v25 :: v_dual_mul_f32 v118, v59, v10
	v_dual_mul_f32 v26, v58, v26 :: v_dual_mul_f32 v119, v59, v11
	v_mul_f32_e32 v27, v58, v27
	v_dual_mul_f32 v28, v58, v28 :: v_dual_mul_f32 v121, v59, v13
	v_dual_mul_f32 v29, v58, v29 :: v_dual_mul_f32 v120, v59, v12
	v_dual_mul_f32 v30, v58, v30 :: v_dual_mul_f32 v123, v59, v15
	v_dual_mul_f32 v31, v58, v31 :: v_dual_mul_f32 v122, v59, v14
	v_mul_f32_e32 v32, v58, v32
	v_mul_f32_e32 v58, v59, v9
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[9:12], v61, s[28:31], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v59, v59, v16
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	buffer_load_b128 v[13:16], v60, s[28:31], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(18)
	ds_store_b64 v45, v[42:43] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v46, v[9:12]
	s_waitcnt vmcnt(0)
	ds_store_b128 v46, v[13:16] offset:8192
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v61, 16, v63
	v_lshlrev_b32_e32 v63, 16, v64
	v_lshlrev_b32_e32 v64, 16, v65
	v_lshlrev_b32_e32 v65, 16, v110
	v_lshlrev_b32_e32 v62, 16, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v104, v17, v61 :: v_dual_fmac_f32 v103, v34, v63
	v_dual_fmac_f32 v97, v40, v65 :: v_dual_lshlrev_b32 v34, 16, v67
	v_dual_fmac_f32 v85, v33, v61 :: v_dual_fmac_f32 v102, v35, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v19, v64 :: v_dual_fmac_f32 v100, v37, v34
	v_dual_fmac_f32 v88, v18, v63 :: v_dual_lshlrev_b32 v67, 16, v112
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v112, 16, v117
	v_lshlrev_b32_e32 v33, 16, v66
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v95, v26, v67 :: v_dual_lshlrev_b32 v60, 16, v109
	v_dual_fmac_f32 v89, v32, v62 :: v_dual_lshlrev_b32 v110, 16, v115
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v35, 16, v108
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v90, v31, v112 :: v_dual_lshlrev_b32 v109, 16, v114
	v_fmac_f32_e32 v86, v20, v33
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v66, 16, v111
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v84, v21, v34 :: v_dual_lshlrev_b32 v111, 16, v116
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v108, 16, v113
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v98, v39, v60 :: v_dual_add_nc_u32 v53, 2, v53
	v_dual_fmac_f32 v101, v36, v33 :: v_dual_add_nc_u32 v54, 2, v54
	v_fmac_f32_e32 v93, v28, v109
	v_dual_fmac_f32 v96, v25, v66 :: v_dual_add_nc_u32 v55, s52, v55
	v_fmac_f32_e32 v92, v29, v110
	v_dual_fmac_f32 v99, v38, v35 :: v_dual_add_nc_u32 v56, s52, v56
	v_fmac_f32_e32 v91, v30, v111
	v_dual_fmac_f32 v94, v27, v108 :: v_dual_add_nc_u32 v57, s34, v57
	v_dual_fmac_f32 v83, v22, v35 :: v_dual_fmac_f32 v82, v23, v60
	v_dual_fmac_f32 v81, v24, v65 :: v_dual_fmac_f32 v80, v58, v66
	v_fmac_f32_e32 v77, v120, v109
	v_dual_fmac_f32 v79, v118, v67 :: v_dual_fmac_f32 v78, v119, v108
	v_dual_fmac_f32 v76, v121, v110 :: v_dual_fmac_f32 v75, v122, v111
	v_fmac_f32_e32 v74, v123, v112
	v_fmac_f32_e32 v73, v59, v62
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
.LBB0_6:                                ; %Flow307
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v1, 32, v44
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v2, s7, v44
	s_mul_i32 s1, s48, s7
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_max_i32 s0, s5, 0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v108, 0x1f0, v0
	.loc	1 195 26                        ; generate_amdgcn.py:195:26
	v_mul_lo_u32 v1, s7, v1
	s_add_i32 s1, s1, s0
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v109, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 195 18 is_stmt 0              ; generate_amdgcn.py:195:18
	v_add_lshl_u32 v2, s1, v2, 1
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_add_lshl_u32 v1, s1, v1, 1
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x1
	buffer_load_u16 v110, v2, s[36:39], 0 offen
	buffer_load_u16 v111, v1, s[36:39], 0 offen
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_mov_b32 s4, 0
	.loc	1 221 27 is_stmt 1              ; generate_amdgcn.py:221:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v17, v107 offset:17216
	ds_load_u8 v18, v107 offset:17152
	ds_load_u8 v1, v107 offset:16704
	ds_load_u8 v2, v107 offset:16640
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:17344
	ds_load_u8 v19, v107 offset:17280
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v107 offset:16832
	ds_load_u8 v3, v107 offset:16768
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v29, v18, 16, v17
	ds_load_u8 v17, v107 offset:16960
	ds_load_u8 v18, v107 offset:16896
	v_lshl_or_b32 v27, v2, 16, v1
	ds_load_u8 v1, v107 offset:16448
	ds_load_u8 v2, v107 offset:16384
	ds_load_u8 v25, v107 offset:16416
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:17088
	ds_load_u8 v19, v107 offset:17024
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v107 offset:16576
	ds_load_u8 v3, v107 offset:16512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v28, v18, 16, v17
	ds_load_u8 v17, v48 offset:3328
	ds_load_u8 v18, v48 offset:3072
	v_lshl_or_b32 v26, v2, 16, v1
	ds_load_u8 v1, v48 offset:1280
	ds_load_u8 v2, v48 offset:1024
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:3840
	ds_load_u8 v19, v48 offset:3584
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v48 offset:1792
	ds_load_u8 v3, v48 offset:1536
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v63, v18, 16, v17
	ds_load_u8 v17, v48 offset:2304
	ds_load_u8 v18, v48 offset:2048
	v_lshl_or_b32 v67, v2, 16, v1
	ds_load_u8 v1, v48 offset:256
	ds_load_u8 v2, v48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:2816
	ds_load_u8 v19, v48 offset:2560
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v2, v48 offset:768
	ds_load_u8 v3, v48 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v62, v18, 16, v17
	ds_load_u8 v17, v107 offset:17728
	ds_load_u8 v18, v107 offset:17664
	v_lshl_or_b32 v66, v2, 16, v1
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[66:67], v[26:27], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[28:29], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:17856
	ds_load_u8 v19, v107 offset:17792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v31, v18, 16, v17
	ds_load_u8 v17, v107 offset:17472
	ds_load_u8 v18, v107 offset:17408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:17600
	ds_load_u8 v19, v107 offset:17536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v30, v18, 16, v17
	ds_load_u8 v17, v48 offset:5376
	ds_load_u8 v18, v48 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:5888
	ds_load_u8 v19, v48 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v18, 16, v17
	ds_load_u8 v17, v48 offset:4352
	ds_load_u8 v18, v48 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:4864
	ds_load_u8 v19, v48 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v18, 16, v17
	ds_load_u8 v17, v107 offset:18240
	ds_load_u8 v18, v107 offset:18176
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[30:31], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:18368
	ds_load_u8 v19, v107 offset:18304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v18, 16, v17
	ds_load_u8 v17, v107 offset:17984
	ds_load_u8 v18, v107 offset:17920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:18112
	ds_load_u8 v19, v107 offset:18048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v18, 16, v17
	ds_load_u8 v17, v48 offset:7424
	ds_load_u8 v18, v48 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:7936
	ds_load_u8 v19, v48 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v18, 16, v17
	ds_load_u8 v17, v48 offset:6400
	ds_load_u8 v18, v48 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:6912
	ds_load_u8 v19, v48 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v18, 16, v17
	ds_load_u8 v17, v107 offset:18752
	ds_load_u8 v18, v107 offset:18688
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[42:43], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:18880
	ds_load_u8 v19, v107 offset:18816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v18, 16, v17
	ds_load_u8 v17, v107 offset:18496
	ds_load_u8 v18, v107 offset:18432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:18624
	ds_load_u8 v19, v107 offset:18560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v18, 16, v17
	ds_load_u8 v17, v48 offset:9472
	ds_load_u8 v18, v48 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:9984
	ds_load_u8 v19, v48 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v18, 16, v17
	ds_load_u8 v17, v48 offset:8448
	ds_load_u8 v18, v48 offset:8192
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:8960
	ds_load_u8 v19, v48 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v56, v18, 16, v17
	ds_load_u8 v17, v107 offset:19264
	ds_load_u8 v18, v107 offset:19200
	v_wmma_i32_16x16x16_iu4 v[9:16], v[56:57], v[44:45], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:19392
	ds_load_u8 v19, v107 offset:19328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v18, 16, v17
	ds_load_u8 v17, v107 offset:19008
	ds_load_u8 v18, v107 offset:18944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:19136
	ds_load_u8 v19, v107 offset:19072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v18, 16, v17
	ds_load_u8 v17, v48 offset:11520
	ds_load_u8 v18, v48 offset:11264
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:12032
	ds_load_u8 v19, v48 offset:11776
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v18, 16, v17
	ds_load_u8 v17, v48 offset:10496
	ds_load_u8 v18, v48 offset:10240
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:11008
	ds_load_u8 v19, v48 offset:10752
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v54, v18, 16, v17
	ds_load_u8 v17, v107 offset:19776
	ds_load_u8 v18, v107 offset:19712
	v_wmma_i32_16x16x16_iu4 v[9:16], v[54:55], v[46:47], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:19904
	ds_load_u8 v19, v107 offset:19840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v18, 16, v17
	ds_load_u8 v17, v107 offset:19520
	ds_load_u8 v18, v107 offset:19456
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:19648
	ds_load_u8 v19, v107 offset:19584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v64, v18, 16, v17
	ds_load_u8 v17, v48 offset:13568
	ds_load_u8 v18, v48 offset:13312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:14080
	ds_load_u8 v19, v48 offset:13824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v18, 16, v17
	ds_load_u8 v17, v48 offset:12544
	ds_load_u8 v18, v48 offset:12288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:13056
	ds_load_u8 v19, v48 offset:12800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v52, v18, 16, v17
	ds_load_u8 v17, v107 offset:20288
	ds_load_u8 v18, v107 offset:20224
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[64:65], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:20416
	ds_load_u8 v19, v107 offset:20352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v113, v18, 16, v17
	ds_load_u8 v17, v107 offset:20032
	ds_load_u8 v18, v107 offset:19968
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v107 offset:20160
	ds_load_u8 v19, v107 offset:20096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v112, v18, 16, v17
	ds_load_u8 v17, v48 offset:15616
	ds_load_u8 v18, v48 offset:15360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:16128
	ds_load_u8 v19, v48 offset:15872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v51, v18, 16, v17
	ds_load_u8 v17, v48 offset:14592
	ds_load_u8 v18, v48 offset:14336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:15104
	ds_load_u8 v19, v48 offset:14848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v50, v18, 16, v17
	ds_load_u8 v17, v48 offset:1408
	ds_load_u8 v18, v48 offset:1152
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[112:113], v[9:16] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:1920
	ds_load_u8 v19, v48 offset:1664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v18, 16, v17
	ds_load_u8 v17, v48 offset:384
	ds_load_u8 v18, v48 offset:128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v17, v18, v17, 0xc0c0004
	ds_load_u8 v18, v48 offset:896
	ds_load_u8 v19, v48 offset:640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v18, v19, v18, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v18, 16, v17
	v_wmma_i32_16x16x16_iu4 v[17:24], v[33:34], v[26:27], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v26, v48 offset:3456
	ds_load_u8 v27, v48 offset:3200
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:3968
	ds_load_u8 v32, v48 offset:3712
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v32, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v36, v27, 16, v26
	ds_load_u8 v26, v48 offset:2432
	ds_load_u8 v27, v48 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:2944
	ds_load_u8 v32, v48 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v32, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v27, 16, v26
	ds_load_u8 v26, v48 offset:5504
	ds_load_u8 v27, v48 offset:5248
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[28:29], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:6016
	ds_load_u8 v28, v48 offset:5760
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v38, v27, 16, v26
	ds_load_u8 v26, v48 offset:4480
	ds_load_u8 v27, v48 offset:4224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:4992
	ds_load_u8 v28, v48 offset:4736
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v37, v27, 16, v26
	ds_load_u8 v26, v48 offset:7552
	ds_load_u8 v27, v48 offset:7296
	v_wmma_i32_16x16x16_iu4 v[17:24], v[37:38], v[30:31], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:8064
	ds_load_u8 v28, v48 offset:7808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v27, 16, v26
	ds_load_u8 v26, v48 offset:6528
	ds_load_u8 v27, v48 offset:6272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:7040
	ds_load_u8 v28, v48 offset:6784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v27, 16, v26
	ds_load_u8 v26, v48 offset:9600
	ds_load_u8 v27, v48 offset:9344
	v_wmma_i32_16x16x16_iu4 v[17:24], v[39:40], v[42:43], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:10112
	ds_load_u8 v28, v48 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v27, 16, v26
	ds_load_u8 v26, v48 offset:8576
	ds_load_u8 v27, v48 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:9088
	ds_load_u8 v28, v48 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v27, 16, v26
	ds_load_u8 v26, v48 offset:11648
	ds_load_u8 v27, v48 offset:11392
	v_wmma_i32_16x16x16_iu4 v[17:24], v[42:43], v[44:45], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:12160
	ds_load_u8 v28, v48 offset:11904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v27, 16, v26
	ds_load_u8 v26, v48 offset:10624
	ds_load_u8 v27, v48 offset:10368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:11136
	ds_load_u8 v28, v48 offset:10880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v27, 16, v26
	ds_load_u8 v26, v48 offset:13696
	ds_load_u8 v27, v48 offset:13440
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[46:47], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:14208
	ds_load_u8 v28, v48 offset:13952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v47, v27, 16, v26
	ds_load_u8 v26, v48 offset:12672
	ds_load_u8 v27, v48 offset:12416
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:13184
	ds_load_u8 v28, v48 offset:12928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v27, 16, v26
	ds_load_u8 v26, v48 offset:15744
	ds_load_u8 v27, v48 offset:15488
	v_wmma_i32_16x16x16_iu4 v[17:24], v[46:47], v[64:65], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:16256
	ds_load_u8 v28, v48 offset:16000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v27, 16, v26
	ds_load_u8 v26, v48 offset:14720
	ds_load_u8 v27, v48 offset:14464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v48 offset:15232
	ds_load_u8 v28, v48 offset:14976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v27, 16, v26
	ds_load_u8 v26, v107 offset:16736
	ds_load_u8 v27, v107 offset:16672
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[112:113], v[17:24] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	ds_load_u8 v27, v107 offset:16864
	ds_load_u8 v28, v107 offset:16800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v65, v27, 16, v26
	ds_load_u8 v26, v107 offset:16480
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v25, v25, v26, 0xc0c0004
	ds_load_u8 v26, v107 offset:16608
	ds_load_u8 v27, v107 offset:16544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v64, v26, 16, v25
	v_wmma_i32_16x16x16_iu4 v[25:32], v[66:67], v[64:65], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v66, v107 offset:17248
	ds_load_u8 v67, v107 offset:17184
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[64:65], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	ds_load_u8 v67, v107 offset:17376
	ds_load_u8 v112, v107 offset:17312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v112, v67, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v66, v107 offset:16992
	ds_load_u8 v112, v107 offset:16928
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v112, v66, 0xc0c0004
	ds_load_u8 v112, v107 offset:17120
	ds_load_u8 v113, v107 offset:17056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v66, v112, 16, v66
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[66:67], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v62, v107 offset:17760
	ds_load_u8 v63, v107 offset:17696
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[66:67], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	ds_load_u8 v63, v107 offset:17888
	ds_load_u8 v112, v107 offset:17824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v112, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v63, v63, 16, v62
	ds_load_u8 v62, v107 offset:17504
	ds_load_u8 v112, v107 offset:17440
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v112, v62, 0xc0c0004
	ds_load_u8 v112, v107 offset:17632
	ds_load_u8 v113, v107 offset:17568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v62, v112, 16, v62
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[62:63], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v60, v107 offset:18272
	ds_load_u8 v61, v107 offset:18208
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[62:63], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v61, v60, 0xc0c0004
	ds_load_u8 v61, v107 offset:18400
	ds_load_u8 v112, v107 offset:18336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v112, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v61, v61, 16, v60
	ds_load_u8 v60, v107 offset:18016
	ds_load_u8 v112, v107 offset:17952
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v60, v112, v60, 0xc0c0004
	ds_load_u8 v112, v107 offset:18144
	ds_load_u8 v113, v107 offset:18080
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v60, v112, 16, v60
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[60:61], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v58, v107 offset:18784
	ds_load_u8 v59, v107 offset:18720
	v_wmma_i32_16x16x16_iu4 v[1:8], v[39:40], v[60:61], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v59, v58, 0xc0c0004
	ds_load_u8 v59, v107 offset:18912
	ds_load_u8 v112, v107 offset:18848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v112, v59, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v59, v59, 16, v58
	ds_load_u8 v58, v107 offset:18528
	ds_load_u8 v112, v107 offset:18464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v112, v58, 0xc0c0004
	ds_load_u8 v112, v107 offset:18656
	ds_load_u8 v113, v107 offset:18592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v58, v112, 16, v58
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[58:59], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v56, v107 offset:19296
	ds_load_u8 v57, v107 offset:19232
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[58:59], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v57, v56, 0xc0c0004
	ds_load_u8 v57, v107 offset:19424
	ds_load_u8 v112, v107 offset:19360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v112, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v57, v57, 16, v56
	ds_load_u8 v56, v107 offset:19040
	ds_load_u8 v112, v107 offset:18976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v56, v112, v56, 0xc0c0004
	ds_load_u8 v112, v107 offset:19168
	ds_load_u8 v113, v107 offset:19104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v56, v112, 16, v56
	v_wmma_i32_16x16x16_iu4 v[25:32], v[54:55], v[56:57], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v54, v107 offset:19808
	ds_load_u8 v55, v107 offset:19744
	v_wmma_i32_16x16x16_iu4 v[1:8], v[44:45], v[56:57], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v55, v54, 0xc0c0004
	ds_load_u8 v55, v107 offset:19936
	ds_load_u8 v112, v107 offset:19872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v55, v112, v55, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v55, v55, 16, v54
	ds_load_u8 v54, v107 offset:19552
	ds_load_u8 v112, v107 offset:19488
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v54, v112, v54, 0xc0c0004
	ds_load_u8 v112, v107 offset:19680
	ds_load_u8 v113, v107 offset:19616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v112, v113, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v54, v112, 16, v54
	v_wmma_i32_16x16x16_iu4 v[25:32], v[52:53], v[54:55], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v52, v107 offset:20320
	ds_load_u8 v53, v107 offset:20256
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[54:55], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v107 offset:20448
	ds_load_u8 v112, v107 offset:20384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v112, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v53, v53, 16, v52
	ds_load_u8 v52, v107 offset:20064
	ds_load_u8 v112, v107 offset:20000
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v112, v52, 0xc0c0004
	ds_load_u8 v112, v107 offset:20192
	ds_load_u8 v107, v107 offset:20128
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v107, v107, v112, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v52, v107, 16, v52
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[52:53], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[48:49], v[52:53], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_8:
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v33, v106, v105
	.loc	1 232 36                        ; generate_amdgcn.py:232:36
	s_mul_i32 s0, s0, s35
.Ltmp22:
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v50.l, 0
.Ltmp23:
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	s_add_i32 s49, s49, s0
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v50.h, v111.l
	.loc	1 232 26                        ; generate_amdgcn.py:232:26
	v_add_lshl_u32 v33, s49, v33, 1
	.loc	1 232 18 is_stmt 0              ; generate_amdgcn.py:232:18
	s_and_b32 s21, s15, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s14
	.loc	1 233 20 is_stmt 1              ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v26, v26, v50 :: v_dual_add_nc_u32 v35, 4, v33
	v_dual_mul_f32 v25, v25, v50 :: v_dual_add_nc_u32 v36, 8, v33
	v_dual_mul_f32 v28, v28, v50 :: v_dual_add_nc_u32 v37, 12, v33
	v_dual_mul_f32 v27, v27, v50 :: v_dual_add_nc_u32 v38, 16, v33
	v_dual_mul_f32 v30, v30, v50 :: v_dual_add_nc_u32 v39, 20, v33
	v_dual_mul_f32 v29, v29, v50 :: v_dual_add_nc_u32 v40, 24, v33
	v_dual_mul_f32 v31, v31, v50 :: v_dual_add_nc_u32 v42, 28, v33
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v34, 0x80000000, v33, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v38, 0x80000000, v38, s2
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	s_clause 0x7
	buffer_load_u16 v34, v34, s[20:23], 0 offen
	buffer_load_u16 v35, v35, s[20:23], 0 offen
	buffer_load_u16 v36, v36, s[20:23], 0 offen
	buffer_load_u16 v37, v37, s[20:23], 0 offen
	buffer_load_u16 v38, v38, s[20:23], 0 offen
	buffer_load_u16 v39, v39, s[20:23], 0 offen
	buffer_load_u16 v40, v40, s[20:23], 0 offen
	buffer_load_u16 v42, v42, s[20:23], 0 offen
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v32, v32, v50 :: v_dual_add_nc_u32 v43, 0x100, v33
	v_dual_mul_f32 v1, v1, v50 :: v_dual_add_nc_u32 v44, 0x104, v33
	v_dual_mul_f32 v2, v2, v50 :: v_dual_add_nc_u32 v45, 0x108, v33
	v_dual_mul_f32 v3, v3, v50 :: v_dual_add_nc_u32 v46, 0x10c, v33
	v_dual_mul_f32 v4, v4, v50 :: v_dual_add_nc_u32 v47, 0x110, v33
	v_dual_mul_f32 v5, v5, v50 :: v_dual_add_nc_u32 v48, 0x114, v33
	v_dual_mul_f32 v6, v6, v50 :: v_dual_add_nc_u32 v49, 0x118, v33
	v_dual_mul_f32 v8, v8, v50 :: v_dual_add_nc_u32 v33, 0x11c, v33
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s2
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	s_clause 0x7
	buffer_load_u16 v43, v43, s[20:23], 0 offen
	buffer_load_u16 v44, v44, s[20:23], 0 offen
	buffer_load_u16 v45, v45, s[20:23], 0 offen
	buffer_load_u16 v46, v46, s[20:23], 0 offen
	buffer_load_u16 v47, v47, s[20:23], 0 offen
	buffer_load_u16 v48, v48, s[20:23], 0 offen
	buffer_load_u16 v49, v49, s[20:23], 0 offen
	buffer_load_u16 v33, v33, s[20:23], 0 offen
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	v_mov_b16_e32 v51.h, v110.l
	v_mov_b16_e32 v51.l, v50.l
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v7, v7, v50
	s_mov_b32 s0, 0x76543210
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp25:
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v12, v12, v51
	v_mul_f32_e32 v9, v9, v51
	v_mul_f32_e32 v10, v10, v51
	v_mul_f32_e32 v14, v14, v51
	v_mul_f32_e32 v16, v16, v51
	v_mul_f32_e32 v17, v17, v51
	v_mul_f32_e32 v11, v11, v51
	v_mul_f32_e32 v13, v13, v51
	v_mul_f32_e32 v15, v15, v51
	v_mul_f32_e32 v18, v18, v51
	v_mul_f32_e32 v19, v19, v51
	v_mul_f32_e32 v21, v21, v51
	v_mul_f32_e32 v23, v23, v51
.Ltmp26:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s25, 0xffff
	s_mov_b32 s20, s24
.Ltmp27:
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v34, 16, v34
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v35, 16, v35
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v36, 16, v36
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v37, 16, v37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v9, v9, v34, v85
	v_fma_f32 v25, v25, v34, v104
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v12, v12, v37, v101
	v_fma_f32 v10, v10, v35, v103
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v9, v85, v9, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v20, v20, v51
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v12, v101, v12, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v25, v104, v25, s2
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v22, v22, v51
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v10, v103, v10, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v9, v9, v9
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v24, v24, v51
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fma_f32 v11, v11, v36, v102
	v_fma_f32 v13, v13, v38, v100
	v_fma_f32 v15, v15, v40, v98
	v_fma_f32 v27, v27, v36, v87
	v_fma_f32 v28, v28, v37, v86
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v14, v14, v39, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v48, 16, v48
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v16, v16, v42, v97
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v33
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v14, v99, v14, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v18, v18, v44, v95
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v16, v97, v16, s2
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v19, v19, v45, v94
	v_fma_f32 v20, v20, v46, v93
	v_fma_f32 v23, v23, v49, v90
	v_fma_f32 v29, v29, v38, v84
	v_fma_f32 v30, v30, v39, v83
	v_fma_f32 v31, v31, v40, v82
	v_fma_f32 v32, v32, v42, v81
	v_fma_f32 v2, v2, v44, v79
	v_fma_f32 v3, v3, v45, v78
	v_fma_f32 v4, v4, v46, v77
	v_fma_f32 v6, v6, v48, v75
	v_fma_f32 v7, v7, v49, v74
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v25, v25, v25
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v22, v22, v48, v91
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v9, 0, v9
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v24, v24, v33, v89
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v10, v10, v10
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v26, v26, v35, v88
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v14, v14, v14
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v17, v17, v43, v96
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_max_f32_e32 v16, v16, v16
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fma_f32 v21, v21, v47, v92
	v_fma_f32 v5, v5, v47, v76
	v_fma_f32 v1, v1, v43, v80
	v_fma_f32 v8, v8, v33, v73
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_cndmask_b32_e64 v11, v102, v11, s2
	v_cndmask_b32_e64 v13, v100, v13, s2
	v_cndmask_b32_e64 v15, v98, v15, s2
	v_cndmask_b32_e64 v17, v96, v17, s2
	v_cndmask_b32_e64 v18, v95, v18, s2
	v_cndmask_b32_e64 v19, v94, v19, s2
	v_cndmask_b32_e64 v20, v93, v20, s2
	v_cndmask_b32_e64 v21, v92, v21, s2
	v_cndmask_b32_e64 v22, v91, v22, s2
	v_cndmask_b32_e64 v23, v90, v23, s2
	v_cndmask_b32_e64 v24, v89, v24, s2
	v_cndmask_b32_e64 v26, v88, v26, s2
	v_cndmask_b32_e64 v27, v87, v27, s2
	v_cndmask_b32_e64 v28, v86, v28, s2
	v_cndmask_b32_e64 v29, v84, v29, s2
	v_cndmask_b32_e64 v30, v83, v30, s2
	v_cndmask_b32_e64 v31, v82, v31, s2
	v_cndmask_b32_e64 v32, v81, v32, s2
	v_cndmask_b32_e64 v2, v79, v2, s2
	v_cndmask_b32_e64 v3, v78, v3, s2
	v_cndmask_b32_e64 v4, v77, v4, s2
	v_cndmask_b32_e64 v5, v76, v5, s2
	v_cndmask_b32_e64 v6, v75, v6, s2
	v_cndmask_b32_e64 v7, v74, v7, s2
	v_cndmask_b32_e64 v1, v80, v1, s2
	v_cndmask_b32_e64 v8, v73, v8, s2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v18, v18, v18
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v17, v17, v17 :: v_dual_max_f32 v24, v24, v24
	v_dual_max_f32 v19, v19, v19 :: v_dual_max_f32 v26, v26, v26
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v32, v32, v32
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v2, v2, v2
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v6, v6, v6
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v8, v8, v8
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v38, 0, v23
	v_dual_max_f32 v37, 0, v18 :: v_dual_max_f32 v42, 0, v27
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v40, 0, v26
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v46, 0, v31
	v_dual_max_f32 v39, 0, v24 :: v_dual_max_f32 v44, 0, v29
	v_dual_max_f32 v43, 0, v28 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v45, 0, v30 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v47, 0, v32 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v28, v9, v9
	v_dual_max_f32 v5, 0, v5 :: v_dual_mul_f32 v36, v10, v10
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v18, v25, v25
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v8, 0, v8
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v35, v11, v11 :: v_dual_mul_f32 v34, v12, v12
	v_dual_mul_f32 v33, v13, v13 :: v_dual_mul_f32 v32, v14, v14
	v_dual_mul_f32 v31, v15, v15 :: v_dual_mul_f32 v30, v16, v16
	v_dual_mul_f32 v29, v17, v17 :: v_dual_mul_f32 v26, v19, v19
	v_mul_f32_e32 v27, v37, v37
	v_dual_mul_f32 v25, v20, v20 :: v_dual_mul_f32 v24, v21, v21
	v_dual_mul_f32 v23, v22, v22 :: v_dual_mul_f32 v16, v44, v44
	v_dual_mul_f32 v21, v38, v38 :: v_dual_mul_f32 v14, v45, v45
	v_dual_mul_f32 v19, v40, v40 :: v_dual_mul_f32 v20, v42, v42
	v_dual_mul_f32 v17, v43, v43 :: v_dual_mul_f32 v10, v46, v46
	v_dual_mul_f32 v13, v2, v2 :: v_dual_mul_f32 v4, v4, v4
	v_dual_mul_f32 v9, v3, v3 :: v_dual_mul_f32 v6, v6, v6
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v8, v8, v8
	v_mul_f32_e32 v7, v7, v7
	v_mul_f32_e32 v22, v39, v39
	v_dual_mul_f32 v11, v47, v47 :: v_dual_mul_f32 v12, v1, v1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v1, v28, v36 :: v_dual_max_f32 v38, v18, v19
	v_max3_f32 v2, v34, v33, v32
	v_max3_f32 v15, v27, v26, v25
	v_max3_f32 v37, v24, v23, v21
	v_max3_f32 v39, v17, v16, v14
	v_max3_f32 v40, v13, v9, v4
	v_max3_f32 v42, v5, v6, v7
	v_max3_f32 v3, v31, v30, v29
	v_max3_f32 v43, v10, v11, v12
	v_max3_f32 v1, v1, v35, v2
	v_max3_f32 v2, v15, v37, v22
	v_max3_f32 v15, v38, v20, v39
	v_max3_f32 v37, v40, v42, v8
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v38, 1, v0
	v_lshl_add_u32 v40, v71, 8, 0
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, v1, v3, v2
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v3, 4, v71
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, v15, v43, v37
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v37, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v38, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v42, v72, 3, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v39, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v3, v3, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v38, v38, v38
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v37, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v39, v39, v39
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_and_b32_e32 v15, 8, v0
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v1, v1, v38
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v38, 2, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v39
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v3, v40, v3, v15
	v_add3_u32 v37, 0, v15, v37
	v_lshrrev_b32_e32 v39, 1, v70
	v_lshl_add_u32 v15, v15, 3, 0
	ds_store_b64 v3, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[1:2], v37
	v_add3_u32 v15, v15, v38, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v37, v2
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v37, v37 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v37
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v37, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v37, v2, v37
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v2, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v3, v1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v42, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v3
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v1, v3
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v1, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v1, v1 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v40, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v3, v40 :: v_dual_lshlrev_b32 v1, 3, v69
	v_max_f32_e32 v3, v37, v42
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v37, 0, v1, v39
	ds_store_b64 v15, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v37
.Ltmp56:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v2, 0x2b8cbccc, v2 :: v_dual_max_f32 v3, 0x2b8cbccc, v3
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v37, null, 0x40e00000, 0x40e00000, v3
	v_div_scale_f32 v43, vcc_lo, v2, 0x40e00000, v2
	v_rcp_f32_e32 v38, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v39, v37
	v_fma_f32 v40, -v15, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v37, v39, 1.0
	v_fmac_f32_e32 v38, v40, v38
	v_div_scale_f32 v40, s0, v3, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v39, v42, v39 :: v_dual_mul_f32 v42, v43, v38
	v_mul_f32_e32 v44, v40, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v15, v42, v43
	v_fma_f32 v46, -v37, v44, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v42, v45, v38
	v_fmac_f32_e32 v44, v46, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v15, -v15, v42, v43
	v_fma_f32 v37, -v37, v44, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v15, v15, v38, v42
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v37, v37, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v2, v15, 0x40e00000, v2
	v_div_fixup_f32 v15, v37, 0x40e00000, v3
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v3.h, v50.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v3.l, v2.h
	v_mov_b16_e32 v37.h, v50.l
	v_mov_b16_e32 v37.l, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v3, 1, v3
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v2, v3, 0x7fff
	v_add3_u32 v2, v15, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 0xffff0000, v3
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v45, null, v37, v37, v34
	v_div_scale_f32 v46, s2, v34, v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v88, v45
	v_fma_f32 v112, -v45, v88, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, v112, v88
	v_mul_f32_e32 v112, v46, v88
	v_div_scale_f32 v53, null, v37, v37, v30
	v_div_scale_f32 v40, null, v37, v37, v36
	v_div_scale_f32 v57, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v92, v53
	v_div_scale_f32 v49, null, v37, v37, v32
	v_div_scale_f32 v61, null, v37, v37, v25
	v_rcp_f32_e32 v86, v40
	v_div_scale_f32 v38, null, v37, v37, v28
	v_div_scale_f32 v43, null, v37, v37, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v116, -v53, v92, 1.0
	v_rcp_f32_e32 v94, v57
	v_div_scale_f32 v54, s6, v30, v37, v30
	v_div_scale_f32 v72, null, v37, v37, v22
	v_dual_fmac_f32 v92, v116, v92 :: v_dual_and_b32 v15, 0xffff0000, v2
	v_rcp_f32_e32 v90, v49
	v_div_scale_f32 v47, null, v37, v37, v33
	v_rcp_f32_e32 v96, v61
	v_rcp_f32_e32 v85, v38
	v_rcp_f32_e32 v87, v43
	v_mul_f32_e32 v116, v54, v92
	v_div_scale_f32 v80, null, v15, v15, v17
	v_div_scale_f32 v59, null, v37, v37, v26
	v_rcp_f32_e32 v100, v72
	v_div_scale_f32 v55, null, v37, v37, v29
	v_rcp_f32_e32 v89, v47
	v_fma_f32 v110, -v40, v86, 1.0
	v_div_scale_f32 v82, null, v15, v15, v16
	v_fma_f32 v118, -v57, v94, 1.0
	v_div_scale_f32 v51, null, v37, v37, v31
	v_div_scale_f32 v65, null, v37, v37, v23
	v_div_scale_f32 v78, null, v15, v15, v20
	v_rcp_f32_e32 v104, v80
	v_div_scale_f32 v74, null, v15, v15, v18
	v_rcp_f32_e32 v95, v59
	v_fma_f32 v114, -v49, v90, 1.0
	v_div_scale_f32 v42, s0, v36, v37, v36
	v_rcp_f32_e32 v93, v55
	v_fma_f32 v120, -v61, v96, 1.0
	v_fmac_f32_e32 v86, v110, v86
	v_div_scale_f32 v58, s8, v27, v37, v27
	v_rcp_f32_e32 v105, v82
	v_fma_f32 v107, -v38, v85, 1.0
	v_fma_f32 v111, -v43, v87, 1.0
	v_fmac_f32_e32 v94, v118, v94
	v_rcp_f32_e32 v91, v51
	v_rcp_f32_e32 v98, v65
	v_rcp_f32_e32 v103, v78
	v_div_scale_f32 v50, s4, v32, v37, v32
	v_rcp_f32_e32 v101, v74
	v_fma_f32 v124, -v72, v100, 1.0
	v_fmac_f32_e32 v90, v114, v90
	v_div_scale_f32 v62, s10, v25, v37, v25
	v_fma_f32 v113, -v47, v89, 1.0
	v_fmac_f32_e32 v96, v120, v96
	v_mul_f32_e32 v110, v42, v86
	v_div_scale_f32 v39, vcc_lo, v28, v37, v28
	v_dual_fmac_f32 v85, v107, v85 :: v_dual_mul_f32 v114, v50, v90
	v_dual_fmac_f32 v87, v111, v87 :: v_dual_mul_f32 v118, v58, v94
	v_div_scale_f32 v63, null, v37, v37, v24
	v_fma_f32 v128, -v80, v104, 1.0
	v_div_scale_f32 v73, s14, v22, v37, v22
	v_fma_f32 v119, -v59, v95, 1.0
	v_fmac_f32_e32 v100, v124, v100
	v_div_scale_f32 v44, s1, v35, v37, v35
	v_fma_f32 v117, -v55, v93, 1.0
	v_dual_fmac_f32 v89, v113, v89 :: v_dual_mul_f32 v120, v62, v96
	v_fma_f32 v130, -v40, v110, v42
	v_fma_f32 v129, -v82, v105, 1.0
	v_fma_f32 v138, -v57, v118, v58
	v_mul_f32_e32 v107, v39, v85
	v_rcp_f32_e32 v97, v63
	v_div_scale_f32 v81, s18, v17, v15, v17
	v_fma_f32 v115, -v51, v91, 1.0
	v_fma_f32 v122, -v65, v98, 1.0
	v_fma_f32 v127, -v78, v103, 1.0
	v_fmac_f32_e32 v104, v128, v104
	v_div_scale_f32 v48, s3, v33, v37, v33
	v_fma_f32 v125, -v74, v101, 1.0
	v_dual_fmac_f32 v95, v119, v95 :: v_dual_mul_f32 v124, v73, v100
	v_fma_f32 v134, -v49, v114, v50
	v_dual_fmac_f32 v93, v117, v93 :: v_dual_fmac_f32 v110, v130, v86
	v_fma_f32 v130, -v61, v120, v62
	v_mul_f32_e32 v111, v44, v87
	v_fma_f32 v136, -v53, v116, v54
	v_dual_fmac_f32 v105, v129, v105 :: v_dual_fmac_f32 v118, v138, v94
	v_fma_f32 v129, -v38, v107, v39
	v_div_scale_f32 v52, s5, v31, v37, v31
	v_div_scale_f32 v66, s12, v23, v37, v23
	v_dual_fmac_f32 v98, v122, v98 :: v_dual_fmac_f32 v91, v115, v91
	v_dual_fmac_f32 v103, v127, v103 :: v_dual_mul_f32 v128, v81, v104
	v_div_scale_f32 v67, null, v37, v37, v21
	v_div_scale_f32 v76, null, v15, v15, v19
	v_dual_fmac_f32 v101, v125, v101 :: v_dual_fmac_f32 v114, v134, v90
	v_fma_f32 v134, -v72, v124, v73
	v_dual_mul_f32 v113, v48, v89 :: v_dual_fmac_f32 v120, v130, v96
	v_fma_f32 v131, -v43, v111, v44
	v_fmac_f32_e32 v107, v129, v85
	v_div_scale_f32 v56, s7, v29, v37, v29
	v_div_scale_f32 v84, null, v15, v15, v14
	v_fma_f32 v121, -v63, v97, 1.0
	v_fma_f32 v132, -v45, v112, v46
	v_mul_f32_e32 v122, v66, v98
	v_fma_f32 v138, -v80, v128, v81
	v_mul_f32_e32 v115, v52, v91
	v_rcp_f32_e32 v99, v67
	v_rcp_f32_e32 v102, v76
	v_fmac_f32_e32 v124, v134, v100
	v_fma_f32 v133, -v47, v113, v48
	v_fmac_f32_e32 v111, v131, v87
	v_div_scale_f32 v60, s9, v26, v37, v26
	v_fma_f32 v38, -v38, v107, v39
	v_rcp_f32_e32 v106, v84
	v_dual_fmac_f32 v97, v121, v97 :: v_dual_fmac_f32 v112, v132, v88
	v_dual_mul_f32 v117, v56, v93 :: v_dual_fmac_f32 v128, v138, v104
	v_fma_f32 v135, -v51, v115, v52
	v_fma_f32 v39, -v40, v110, v42
	v_fmac_f32_e32 v113, v133, v89
	v_fma_f32 v40, -v43, v111, v44
	v_div_scale_f32 v64, s11, v24, v37, v24
	v_mul_f32_e32 v119, v60, v95
	v_div_fmas_f32 v38, v38, v85, v107
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v137, -v55, v117, v56
	v_fma_f32 v42, -v45, v112, v46
	v_fmac_f32_e32 v115, v135, v91
	v_div_fmas_f32 v39, v39, v86, v110
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v123, -v67, v99, 1.0
	v_fma_f32 v126, -v76, v102, 1.0
	v_fma_f32 v43, -v47, v113, v48
	v_fmac_f32_e32 v116, v136, v92
	v_div_fmas_f32 v40, v40, v87, v111
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v121, v64, v97
	v_fma_f32 v129, -v59, v119, v60
	v_fma_f32 v44, -v49, v114, v50
	v_fmac_f32_e32 v117, v137, v93
	v_div_fixup_f32 v28, v38, v37, v28
	v_div_fmas_f32 v38, v42, v88, v112
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v51, v115, v52
	v_div_scale_f32 v71, s13, v21, v37, v21
	v_div_scale_f32 v77, s17, v19, v15, v19
	v_dual_fmac_f32 v102, v126, v102 :: v_dual_fmac_f32 v99, v123, v99
	v_div_fixup_f32 v36, v39, v37, v36
	v_div_fmas_f32 v39, v43, v89, v113
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v46, -v53, v116, v54
	v_fma_f32 v131, -v63, v121, v64
	v_fmac_f32_e32 v119, v129, v95
	v_div_fixup_f32 v35, v40, v37, v35
	v_div_fmas_f32 v40, v44, v90, v114
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v47, -v55, v117, v56
	v_div_fixup_f32 v34, v38, v37, v34
	v_div_fmas_f32 v38, v45, v91, v115
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v75, s15, v18, v15, v18
	v_mul_f32_e32 v126, v77, v102
	v_fma_f32 v132, -v65, v122, v66
	v_mul_f32_e32 v123, v71, v99
	v_fma_f32 v48, -v57, v118, v58
	v_div_fixup_f32 v33, v39, v37, v33
	v_div_fmas_f32 v39, v46, v92, v116
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v121, v131, v97
	v_fma_f32 v49, -v59, v119, v60
	v_div_fixup_f32 v32, v40, v37, v32
	v_div_fmas_f32 v40, v47, v93, v117
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v136, -v76, v126, v77
	v_dual_mul_f32 v125, v75, v101 :: v_dual_fmac_f32 v122, v132, v98
	v_fma_f32 v133, -v67, v123, v71
	v_fma_f32 v50, -v61, v120, v62
	v_div_fixup_f32 v31, v38, v37, v31
	v_div_fmas_f32 v38, v48, v94, v118
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v79, s19, v20, v15, v20
	v_fma_f32 v51, -v63, v121, v64
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_fmas_f32 v39, v49, v95, v119
	v_div_scale_f32 v49, null, v15, v15, v13
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v123, v133, v99 :: v_dual_fmac_f32 v126, v136, v102
	v_fma_f32 v135, -v74, v125, v75
	v_div_fixup_f32 v29, v40, v37, v29
	v_div_fmas_f32 v40, v50, v96, v120
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v127, v79, v103
	v_div_fixup_f32 v27, v38, v37, v27
	v_div_fmas_f32 v38, v51, v97, v121
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v52, -v65, v122, v66
	v_fmac_f32_e32 v125, v135, v101
	v_fma_f32 v53, -v67, v123, v71
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v137, -v78, v127, v79
	v_fma_f32 v54, -v72, v124, v73
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_fmas_f32 v39, v52, v98, v122
	s_mov_b32 vcc_lo, s13
	v_fma_f32 v55, -v74, v125, v75
	v_div_fixup_f32 v25, v40, v37, v25
	v_div_fmas_f32 v40, v53, v99, v123
	s_mov_b32 vcc_lo, s14
	v_div_scale_f32 v83, s16, v16, v15, v16
	v_fmac_f32_e32 v127, v137, v103
	v_fma_f32 v56, -v76, v126, v77
	v_div_fixup_f32 v24, v38, v37, v24
	v_div_fmas_f32 v38, v54, v100, v124
	v_fma_f32 v54, -v49, v51, 1.0
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v23, v39, v37, v23
	v_div_fmas_f32 v39, v55, v101, v125
	s_mov_b32 vcc_lo, s17
	v_fma_f32 v57, -v78, v127, v79
	v_div_fmas_f32 v42, v56, v102, v126
	v_div_fixup_f32 v21, v40, v37, v21
	v_div_fixup_f32 v22, v38, v37, v22
	v_fmac_f32_e32 v51, v54, v51
	v_mul_f32_e32 v37, v83, v105
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v18, v39, v15, v18
	v_div_fmas_f32 v43, v57, v103, v127
	v_div_fixup_f32 v19, v42, v15, v19
	v_fma_f32 v39, -v80, v128, v81
	v_div_scale_f32 v40, null, v15, v15, v10
	v_fma_f32 v42, -v82, v37, v83
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v20, v43, v15, v20
	v_fma_f32 v38, -v84, v106, 1.0
	v_rcp_f32_e32 v43, v40
	v_div_fmas_f32 v39, v39, v104, v128
	v_fmac_f32_e32 v37, v42, v105
	v_div_scale_f32 v44, null, v15, v15, v11
	v_fmac_f32_e32 v106, v38, v106
	v_div_scale_f32 v38, s0, v14, v15, v14
	v_div_fixup_f32 v17, v39, v15, v17
	v_fma_f32 v39, -v82, v37, v83
	s_mov_b32 vcc_lo, s16
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v38, v106
	v_fma_f32 v46, -v40, v43, 1.0
	v_rcp_f32_e32 v47, v44
	v_div_fmas_f32 v37, v39, v105, v37
	v_div_scale_f32 v39, null, v15, v15, v12
	v_fma_f32 v45, -v84, v42, v38
	v_fmac_f32_e32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v16, v37, v15, v16
	v_rcp_f32_e32 v46, v39
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v42, v45, v106
	v_div_scale_f32 v45, s1, v10, v15, v10
	v_fma_f32 v37, -v44, v47, 1.0
	v_div_scale_f32 v53, s0, v12, v15, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v84, v42, v38
	v_mul_f32_e32 v48, v45, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v47
	v_div_scale_f32 v37, s2, v11, v15, v11
	v_fma_f32 v50, -v39, v46, 1.0
	v_div_fmas_f32 v38, v38, v106, v42
	v_fma_f32 v42, -v40, v48, v45
	v_mul_f32_e32 v52, v37, v47
	v_div_scale_f32 v54, s3, v13, v15, v13
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, null, v15, v15, v9
	v_fmac_f32_e32 v48, v42, v43
	v_fma_f32 v42, -v44, v52, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v56, v53, v46
	v_rcp_f32_e32 v55, v50
	v_div_fixup_f32 v14, v38, v15, v14
	v_fma_f32 v38, -v40, v48, v45
	v_fmac_f32_e32 v52, v42, v47
	v_fma_f32 v40, -v39, v56, v53
	v_mul_f32_e32 v42, v54, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v37, -v44, v52, v37
	v_fmac_f32_e32 v56, v40, v46
	v_fma_f32 v40, -v49, v42, v54
	v_fma_f32 v45, -v50, v55, 1.0
	v_div_fmas_f32 v38, v38, v43, v48
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v42, v40, v51
	v_fmac_f32_e32 v55, v45, v55
	v_div_scale_f32 v43, s1, v9, v15, v9
	v_div_fmas_f32 v37, v37, v47, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v49, v42, v54
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v40, v43, v55
	v_div_fmas_f32 v39, v39, v46, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, null, v15, v15, v4
	v_div_fmas_f32 v42, v45, v51, v42
	v_fma_f32 v46, -v50, v40, v43
	v_div_fixup_f32 v12, v39, v15, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v11, v37, v15, v11
	v_div_fixup_f32 v13, v42, v15, v13
	v_div_scale_f32 v42, null, v15, v15, v7
	v_fmac_f32_e32 v40, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v10, v38, v15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v38, null, v15, v15, v5
	v_fma_f32 v39, -v44, v47, 1.0
	v_div_scale_f32 v49, null, v15, v15, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v53, -v42, v46, 1.0
	v_fmac_f32_e32 v47, v39, v47
	v_div_scale_f32 v39, null, v15, v15, v6
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s2, v7, v15, v7
	v_rcp_f32_e32 v45, v39
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v57, v53, v46
	v_fma_f32 v37, -v50, v40, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v32, v32
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v37, v37, v55, v40
	v_div_scale_f32 v43, vcc_lo, v4, v15, v4
	v_fma_f32 v50, -v39, v45, 1.0
	v_rcp_f32_e32 v40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v9, v37, v15, v9
	v_mul_f32_e32 v48, v43, v47
	v_fma_f32 v55, -v49, v51, 1.0
	v_fmac_f32_e32 v45, v50, v45
	v_div_scale_f32 v50, s1, v6, v15, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v52, -v44, v48, v43
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v37, -v38, v40, 1.0
	v_mul_f32_e32 v56, v50, v45
	v_fmac_f32_e32 v48, v52, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v35, v35
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, s0, v5, v15, v5
	v_fma_f32 v43, -v44, v48, v43
	v_fma_f32 v44, -v39, v56, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v54, v37, v40
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v52, -v38, v54, v37
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v56, v44, v45
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v54, v52, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s3, v8, v15, v8
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v37, -v38, v54, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v58, v55, v51
	v_fma_f32 v39, -v39, v56, v50
	v_fmac_f32_e32 v57, v52, v46
	v_div_fmas_f32 v37, v37, v40, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v38, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v45, v56
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v43, v15, v4
	v_div_fixup_f32 v5, v37, v15, v5
	v_fmac_f32_e32 v58, v38, v51
	v_fma_f32 v38, -v42, v57, v53
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v42, v14
	v_and_b32_e32 v14, 15, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v39, v15, v6
	v_fma_f32 v40, -v49, v58, v55
	v_div_fmas_f32 v38, v38, v46, v57
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v40, v40, v51, v58
	v_div_fixup_f32 v7, v38, v15, v7
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v40, v15, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v28
	v_rndne_f32_e32 v28, v36
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v27, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v9, v9
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v33, v33
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v36, v18
	v_cvt_i32_f32_e32 v45, v12
	v_cvt_i32_f32_e32 v46, v13
	v_and_b32_e32 v12, 15, v29
	v_and_b32_e32 v13, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v27, 11, v0
	v_lshlrev_b32_e32 v29, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v4, v4
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_cvt_i32_f32_e32 v31, v31
	v_cvt_i32_f32_e32 v38, v20
	v_cvt_i32_f32_e32 v44, v11
	v_cvt_i32_f32_e32 v49, v5
	v_cvt_i32_f32_e32 v51, v7
	v_cvt_i32_f32_e32 v52, v8
	v_and_b32_e32 v5, 15, v28
	v_and_b32_e32 v7, 15, v34
	v_and_b32_e32 v8, 15, v33
	v_and_b32_e32 v11, 15, v30
	v_and_b32_e32 v20, 15, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v36, 2, v0
	v_and_b32_e32 v28, 0x160, v0
	v_and_b32_e32 v27, 0x3000, v27
	v_lshlrev_b32_e32 v30, 7, v109
	v_lshlrev_b32_e32 v33, 7, v0
	v_and_b32_e32 v34, 0x60, v29
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v23, v23
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v37, v19
	v_cvt_i32_f32_e32 v39, v17
	v_cvt_i32_f32_e32 v43, v10
	v_cvt_i32_f32_e32 v47, v9
	v_and_b32_e32 v9, 15, v32
	v_and_b32_e32 v10, 15, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 0x200, v36
	v_xor_b32_e32 v32, v41, v28
	v_add3_u32 v30, 0, v27, v30
	v_and_or_b32 v33, 0x3600, v33, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v48, v4
	v_cvt_i32_f32_e32 v40, v16
	v_cvt_i32_f32_e32 v50, v6
	v_and_b32_e32 v4, 15, v15
	v_and_b32_e32 v6, 15, v35
	v_and_b32_e32 v17, 15, v23
	v_and_b32_e32 v18, 15, v21
	v_and_b32_e32 v19, 15, v22
	v_and_b32_e32 v21, 15, v37
	v_and_b32_e32 v22, 15, v38
	v_and_b32_e32 v23, 15, v39
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v37, v30, v31, v32
	v_xad_u32 v38, v33, v108, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 15, v25
	v_and_b32_e32 v16, 15, v24
	v_and_b32_e32 v27, 15, v45
	v_and_b32_e32 v28, 15, v46
	v_and_b32_e32 v29, 15, v47
	v_and_b32_e32 v30, 15, v48
	v_and_b32_e32 v24, 15, v40
	v_and_b32_e32 v25, 15, v42
	v_and_b32_e32 v26, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v37, v[4:7]
	ds_store_b128 v37, v[12:15] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v38
	ds_load_b128 v[12:15], v38 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[20:23]
	ds_store_b128 v37, v[27:30] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v38
	ds_load_b128 v[28:31], v38 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[8:11]
	ds_store_b128 v37, v[16:19] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[8:11], v38
	ds_load_b128 v[16:19], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v27, 15, v44
	v_and_b32_e32 v32, 15, v49
	v_and_b32_e32 v33, 15, v50
	v_and_b32_e32 v34, 15, v51
	v_and_b32_e32 v35, 15, v52
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[24:27]
	ds_store_b128 v37, v[32:35] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v38
	ds_load_b128 v[32:35], v38 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s35, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.l, v3.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, v12, 4, v4
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s48, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v8, v16, 4, v8
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v11, v28, 4, v20
	v_lshl_or_b32 v12, v29, 4, v21
	v_lshl_or_b32 v13, v30, 4, v22
	v_lshl_or_b32 v14, v31, 4, v23
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v17, s2, s1, v1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v19, v34, 4, v26
	v_lshl_or_b32 v20, v35, 4, v27
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v1.h, 0xff, v5.l
	v_lshlrev_b16 v2.l, 8, v4.l
	v_and_b16 v3.l, 0xff, v3.l
	v_lshlrev_b16 v3.h, 8, v10.l
	v_and_b16 v4.l, 0xff, v7.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v16, v32, 4, v24
	v_lshl_or_b32 v18, v33, 4, v25
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v7.h, v1.h, v1.l
	v_or_b16 v7.l, v3.l, v2.l
	v_or_b16 v8.h, v4.l, v3.h
	v_lshlrev_b16 v1.l, 8, v9.l
	v_and_b16 v1.h, 0xff, v8.l
	v_lshlrev_b16 v2.l, 8, v14.l
	v_and_b16 v3.l, 0xff, v13.l
	v_lshlrev_b16 v3.h, 8, v12.l
	v_and_b16 v4.l, 0xff, v11.l
	v_lshlrev_b16 v4.h, 8, v20.l
	v_and_b16 v5.l, 0xff, v19.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v15, s0, v68
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v18.l
	v_and_b16 v6.l, 0xff, v16.l
	v_or_b16 v8.l, v1.h, v1.l
	v_or_b16 v9.h, v3.l, v2.l
	v_or_b16 v9.l, v4.l, v3.h
	v_or_b16 v10.h, v5.l, v4.h
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.h, v2.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v69
	v_lshrrev_b32_e32 v2, 2, v70
	v_and_b32_e32 v3, 0x7c, v36
	v_and_b32_e32 v4, 2, v68
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s0, s0, 5
	v_add_nc_u32_e32 v21, v17, v15
	v_add3_u32 v15, v15, s0, v17
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s35, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v10.l, v6.l, v5.h
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v1, 0, v1, v2
	v_add3_u32 v3, 0, v3, v4
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v2, v0, 63, s48
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[7:8], v21, s[20:23], 0 offen
	buffer_store_b64 v[9:10], v15, s[20:23], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v1, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v3
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v2, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp57:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp58:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 139
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 139
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 53
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19208
; TotalNumSgprs: 55
; NumVgprs: 139
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 55
; NumVGPRsForWavesPerEU: 139
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     55
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc128_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     139
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
