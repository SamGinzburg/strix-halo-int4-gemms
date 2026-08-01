	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s16, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	v_lshrrev_b32_e32 v20, 1, v0
	v_lshlrev_b32_e32 v21, 2, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s24, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	v_rcp_iflag_f32_e32 v1, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s9, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s8, s8
	s_mul_i32 s9, s9, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_xor_b32 s2, s4, s6
	s_mul_hi_u32 s8, s9, s8
	s_ashr_i32 s2, s2, 31
	s_mul_i32 s10, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s9, s9, s10
	s_add_i32 s10, s8, 1
	s_sub_i32 s11, s9, s7
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s8, s10, s8
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s8, 1
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s7, s10, s8
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s16, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s17, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s24, s17, s2
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s24, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s20, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v2, 1, v0
.Ltmp15:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr2
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b128 s[12:15], s[0:1], 0x20
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v19, 7, v0
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v15, 15, v0
	v_dual_mov_b32 v5, 0 :: v_dual_and_b32 v16, 0x100, v0
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v18, 0xe0, v0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v17, 16, v0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_mov_b32_e32 v43, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s26, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v3, 4, v16
	s_mov_b32 s36, 0
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s21, s3, 6
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v1, 3, v19
	v_lshlrev_b32_e32 v6, 6, v15
	v_lshlrev_b32_e32 v8, 5, v18
	v_and_b32_e32 v9, 56, v21
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s26, v3, v15
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s0, s16, 31
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s1, s20, 31
	v_and_or_b32 v7, 0x438, v21, v6
	v_or3_b32 v6, v8, v9, v6
.Ltmp18:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v9, s21, v1
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s16, s16, s0
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s1, 24
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v11, 32, v3
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s20, s20, s0
.Ltmp22:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s3, s20, 8
.Ltmp24:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v10, 64, v9
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v9
	v_lshrrev_b32_e32 v9, 3, v17
	v_mul_lo_u32 v11, s3, v11
	v_mul_lo_u32 v3, s3, v3
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s1, s16, 1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s16, s2, 9
	v_dual_mov_b32 v74, 0 :: v_dual_and_b32 v23, 2, v9
	v_lshl_or_b32 v9, s17, 8, v2
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v2, s26, v2
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v25, 1, v11
	v_lshlrev_b32_e32 v26, 1, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v3, 0xc0, v9
	s_lshl_b32 s2, s2, 8
	v_or_b32_e32 v11, 64, v9
	v_subrev_nc_u32_e32 v14, s2, v9
	v_dual_mov_b32 v29, 0 :: v_dual_lshlrev_b32 v4, 3, v0
	v_and_b32_e32 v5, 56, v20
	v_cmp_gt_i32_e64 s0, 0x80, v10
	v_subrev_nc_u32_e32 v3, s2, v3
	v_mad_u64_u32 v[9:10], null, s1, v2, v[1:2]
	v_subrev_nc_u32_e32 v2, s2, v11
	v_lshl_or_b32 v12, s17, 9, v18
	v_or_b32_e32 v13, 0x80, v14
	v_xor_b32_e32 v4, v4, v5
	v_xor_b32_e32 v5, 8, v7
	v_xor_b32_e32 v8, 32, v7
	v_mad_u64_u32 v[10:11], null, s1, v3, v[1:2]
	v_xor_b32_e32 v27, 16, v7
	v_xor_b32_e32 v28, 24, v7
	v_xor_b32_e32 v30, 40, v7
	v_xor_b32_e32 v31, 48, v7
	v_xor_b32_e32 v32, 56, v7
	v_xor_b32_e32 v33, 8, v6
	v_xor_b32_e32 v34, 16, v6
	v_xor_b32_e32 v35, 24, v6
	v_xor_b32_e32 v36, 32, v6
	v_xor_b32_e32 v37, 40, v6
	v_xor_b32_e32 v39, 48, v6
	v_xor_b32_e32 v41, 56, v6
	v_subrev_nc_u32_e32 v24, s16, v12
	v_mad_u64_u32 v[11:12], null, s1, v2, v[1:2]
	v_mad_u64_u32 v[12:13], null, s1, v13, v[1:2]
	v_mad_u64_u32 v[13:14], null, s1, v14, v[1:2]
	v_sub_nc_u32_e32 v22, s1, v1
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v38, 0, v4
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v40, 0, v7
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v42, 0, v5
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v47, 0, v8
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v52, 0, v6
	v_dual_mov_b32 v1, s36 :: v_dual_add_nc_u32 v44, 0, v27
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v46, 0, v28
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v48, 0, v30
	v_mov_b32_e32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v49, 0, v31
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v50, 0, v32
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v54, 0, v33
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v56, 0, v34
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v58, 0, v35
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v60, 0, v36
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v61, 0, v37
	v_add_nc_u32_e32 v62, 0, v39
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v68, 0, v41
	v_dual_mov_b32 v2, s37 :: v_dual_mov_b32 v3, s38
	v_dual_mov_b32 v4, s39 :: v_dual_mov_b32 v5, s40
	v_dual_mov_b32 v6, s41 :: v_dual_mov_b32 v7, s42
	v_dual_mov_b32 v8, s43 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v27, 0
	v_mov_b32_e32 v14, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s27, s25, 1
	s_add_i32 s28, s21, 64
	s_mov_b32 s16, s8
	s_mov_b32 s17, s9
	s_mov_b32 s20, s4
	s_mov_b32 s21, s5
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v75, v26, s[16:19], 0 offen
	buffer_load_u16 v76, v25, s[16:19], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_add_nc_u32_e32 v77, s28, v9
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	s_sub_i32 s2, s28, 64
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v120, s28, v11
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s1, s28, v22
	v_cmp_lt_i32_e64 s2, s2, v22
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_subrev_nc_u32_e32 v78, 64, v77
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s3, s3, -1
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_subrev_nc_u32_e32 v80, 64, v120
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s1, s1, s0
	s_and_b32 s2, s2, vcc_lo
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	v_cndmask_b32_e64 v87, 0x80000000, v77, s1
	v_cndmask_b32_e64 v77, 0x80000000, v78, s2
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v83, 0x80000000, v80, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v25, 2, v25
	v_add_nc_u32_e32 v26, 2, v26
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v75, 16, v75
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_add_nc_u32_e32 v119, s28, v13
	v_add_nc_u32_e32 v121, s28, v12
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_add_nc_u32_e32 v122, s28, v10
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_addk_i32 s28, 0x80
	s_cmp_lg_u32 s3, 0
	.loc	1 218 34                        ; generate_amdgcn.py:218:34
	v_subrev_nc_u32_e32 v79, 64, v119
	v_subrev_nc_u32_e32 v81, 64, v121
	.loc	1 218 26 is_stmt 0              ; generate_amdgcn.py:218:26
	v_subrev_nc_u32_e32 v82, 64, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v84, 0x80000000, v81, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v85, 0x80000000, v82, s2
	.loc	1 216 26 is_stmt 1              ; generate_amdgcn.py:216:26
	buffer_load_b64 v[77:78], v77, s[20:23], 0 offen
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_clause 0x3
	buffer_load_b64 v[79:80], v79, s[4:7], 0 offen
	buffer_load_b64 v[81:82], v83, s[4:7], 0 offen
	buffer_load_b64 v[83:84], v84, s[4:7], 0 offen
	buffer_load_b64 v[85:86], v85, s[4:7], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[117:118], v87, s[20:23], 0 offen
	s_waitcnt vmcnt(5)
	ds_store_b64 v38, v[77:78] offset:16384
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v38, v[79:80], v[81:82] offset1:8
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b64 v38, v[83:84], v[85:86] offset0:16 offset1:24
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[107:110], v40 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[111:114], v52 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[111:112], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[113:114], v[107:108], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[111:112], v[109:110], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[113:114], v[109:110], v[1:8] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v42 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v54 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v44 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v56 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v46 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v58 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v47 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v60 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v48 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v61 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v49 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v62 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v50 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v68 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v109, 0x80000000, v119, s1
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	v_cndmask_b32_e64 v111, 0x80000000, v120, s1
	v_cndmask_b32_e64 v113, 0x80000000, v121, s1
	v_cndmask_b32_e64 v115, 0x80000000, v122, s1
	s_clause 0x3
	buffer_load_b64 v[109:110], v109, s[4:7], 0 offen
	buffer_load_b64 v[111:112], v111, s[4:7], 0 offen
	buffer_load_b64 v[113:114], v113, s[4:7], 0 offen
	buffer_load_b64 v[115:116], v115, s[4:7], 0 offen
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v38, v[109:110], v[111:112] offset1:8
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v38, v[113:114], v[115:116] offset0:16 offset1:24
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_store_b64 v38, v[117:118] offset:16384
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[109:112], v40 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v52 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v42 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v54 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v44 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v56 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v46 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v58 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v47 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v60 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v48 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v61 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v49 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v62 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	.loc	1 216 26                        ; generate_amdgcn.py:216:26
	ds_load_2addr_stride64_b64 v[109:112], v50 offset0:32 offset1:36
	.loc	1 218 26                        ; generate_amdgcn.py:218:26
	ds_load_2addr_stride64_b64 v[113:116], v68 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[77:84], v[113:114], v[109:110], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[113:114], v[111:112], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[85:92], v[115:116], v[109:110], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[101:108], v[115:116], v[111:112], v[101:108] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v109, v77
	v_cvt_f32_i32_e32 v110, v78
	v_cvt_f32_i32_e32 v77, v97
	v_cvt_f32_i32_e32 v78, v98
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v97, v23, v24
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v111, v79
	v_cvt_f32_i32_e32 v79, v99
	v_cvt_f32_i32_e32 v93, v93
	v_mul_f32_e32 v78, v76, v78
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v98, v97, s[8:11], 0 offen
	buffer_load_u16 v99, v97, s[8:11], 0 offen offset:4
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v96, v96
	v_mul_f32_e32 v93, v76, v93
	v_cvt_f32_i32_e32 v112, v80
	v_cvt_f32_i32_e32 v80, v100
	v_mul_f32_e32 v100, v75, v109
	v_cvt_f32_i32_e32 v114, v82
	v_cvt_f32_i32_e32 v115, v83
	v_cvt_f32_i32_e32 v82, v102
	v_cvt_f32_i32_e32 v83, v103
	v_cvt_f32_i32_e32 v113, v81
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v81, v101
	v_cvt_f32_i32_e32 v117, v85
	v_cvt_f32_i32_e32 v118, v86
	v_cvt_f32_i32_e32 v86, v106
	v_cvt_f32_i32_e32 v116, v84
	v_cvt_f32_i32_e32 v119, v87
	v_cvt_f32_i32_e32 v120, v88
	v_cvt_f32_i32_e32 v89, v89
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v88, v108
	v_cvt_f32_i32_e32 v84, v104
	v_cvt_f32_i32_e32 v85, v105
	v_cvt_f32_i32_e32 v87, v107
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add_nc_u32_e32 v24, s27, v24
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v98, 16, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v51, v93, v98
	.loc	1 233 20 is_stmt 0              ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v94, v76, v94
	v_mul_f32_e32 v96, v76, v96
	v_dual_mul_f32 v103, v75, v112 :: v_dual_mul_f32 v82, v76, v82
	v_mul_f32_e32 v77, v76, v77
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v45, v94, v99
	v_fmac_f32_e32 v29, v100, v98
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v93, v97, s[8:11], 0 offen offset:12
	buffer_load_u16 v98, v97, s[8:11], 0 offen offset:16
	buffer_load_u16 v100, v97, s[8:11], 0 offen offset:8
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v80, v76, v80
	v_mul_f32_e32 v84, v76, v84
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v86, v76, v86 :: v_dual_lshlrev_b32 v93, 16, v93
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v72, v103, v93
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v101, v75, v110
	v_dual_mul_f32 v95, v76, v95 :: v_dual_mul_f32 v108, v75, v117
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v103, v97, s[8:11], 0 offen offset:268
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v106, v75, v115
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v74, v101, v99
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	buffer_load_u16 v101, v97, s[8:11], 0 offen offset:20
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_dual_mul_f32 v102, v75, v111 :: v_dual_fmac_f32 v41, v96, v93
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v100, 16, v100
	s_clause 0x3
	buffer_load_u16 v94, v97, s[8:11], 0 offen offset:24
	buffer_load_u16 v99, v97, s[8:11], 0 offen offset:28
	buffer_load_u16 v93, v97, s[8:11], 0 offen offset:272
	buffer_load_u16 v96, v97, s[8:11], 0 offen offset:276
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v104, v75, v113
	v_mul_f32_e32 v105, v75, v114
	.loc	1 233 13 is_stmt 0              ; generate_amdgcn.py:233:13
	v_fmac_f32_e32 v73, v102, v100
	v_fmac_f32_e32 v43, v95, v100
	.loc	1 232 18 is_stmt 1              ; generate_amdgcn.py:232:18
	s_clause 0x2
	buffer_load_u16 v95, v97, s[8:11], 0 offen offset:260
	buffer_load_u16 v100, v97, s[8:11], 0 offen offset:264
	buffer_load_u16 v102, v97, s[8:11], 0 offen offset:256
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v107, v75, v116
	v_mul_f32_e32 v109, v75, v118
	v_mul_f32_e32 v110, v75, v119
	v_mul_f32_e32 v111, v75, v120
	v_mul_f32_e32 v89, v75, v89
	v_mul_f32_e32 v90, v75, v90
	v_mul_f32_e32 v91, v75, v91
	v_mul_f32_e32 v75, v75, v92
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v92, v97, s[8:11], 0 offen offset:280
	buffer_load_u16 v97, v97, s[8:11], 0 offen offset:284
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_mul_f32_e32 v81, v76, v81
	v_mul_f32_e32 v79, v76, v79
	v_mul_f32_e32 v83, v76, v83
	v_mul_f32_e32 v85, v76, v85
	v_mul_f32_e32 v87, v76, v87
	v_mul_f32_e32 v76, v76, v88
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v88, 16, v98
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v98, 16, v101
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v94, 16, v94
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v70, v105, v98 :: v_dual_lshlrev_b32 v99, 16, v99
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v69, v106, v94 :: v_dual_lshlrev_b32 v96, 16, v96
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v67, v107, v99 :: v_dual_lshlrev_b32 v100, 16, v100
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v101, 16, v102
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v57, v90, v96 :: v_dual_lshlrev_b32 v102, 16, v103
	v_fmac_f32_e32 v36, v79, v94
	v_dual_fmac_f32 v64, v110, v100 :: v_dual_lshlrev_b32 v95, 16, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v66, v108, v101
	v_dual_fmac_f32 v71, v104, v88 :: v_dual_fmac_f32 v34, v81, v101
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v32, v83, v100 :: v_dual_lshlrev_b32 v97, 16, v97
	v_fmac_f32_e32 v39, v77, v88
	v_dual_fmac_f32 v37, v78, v98 :: v_dual_fmac_f32 v30, v85, v93
	v_fmac_f32_e32 v65, v109, v95
	v_fmac_f32_e32 v63, v111, v102
	v_fmac_f32_e32 v59, v89, v93
	v_fmac_f32_e32 v55, v91, v92
	v_fmac_f32_e32 v53, v75, v97
	v_fmac_f32_e32 v35, v80, v99
	v_fmac_f32_e32 v33, v82, v95
	v_dual_fmac_f32 v31, v84, v102 :: v_dual_fmac_f32 v28, v86, v96
	v_dual_fmac_f32 v27, v87, v92 :: v_dual_fmac_f32 v14, v76, v97
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v1, v29, v29 :: v_dual_max_f32 v2, v74, v74
	v_dual_max_f32 v29, v43, v43 :: v_dual_max_f32 v38, v41, v41
	v_max_f32_e32 v39, v39, v39
	v_dual_max_f32 v23, v55, v55 :: v_dual_max_f32 v24, v53, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v44, 0, v29
	v_dual_max_f32 v37, v37, v37 :: v_dual_max_f32 v46, 0, v39
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v3, v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v72, v72 :: v_dual_max_f32 v47, 0, v37
	v_dual_max_f32 v5, v71, v71 :: v_dual_max_f32 v6, v70, v70
	v_dual_max_f32 v7, v69, v69 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v26, v45, v45
	v_dual_max_f32 v45, 0, v38 :: v_dual_max_f32 v32, v32, v32
	v_dual_max_f32 v29, v36, v36 :: v_dual_max_f32 v50, 0, v34
	v_max_f32_e32 v35, v35, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v52, 0, v32
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, v67, v67
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, v65, v65
	v_dual_max_f32 v9, v66, v66 :: v_dual_max_f32 v12, v63, v63
	v_max_f32_e32 v11, v64, v64
	v_dual_max_f32 v13, v59, v59 :: v_dual_max_f32 v22, v57, v57
	v_dual_max_f32 v25, v51, v51 :: v_dual_max_f32 v48, 0, v29
	v_dual_max_f32 v49, 0, v35 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v51, 0, v33 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v29, v31, v31 :: v_dual_max_f32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v27, v27, v27 :: v_dual_max_f32 v54, 0, v30
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v6, 0, v6
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_max_f32_e32 v24, 0, v24
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v53, 0, v29
	v_dual_max_f32 v56, 0, v27 :: v_dual_max_f32 v55, 0, v28
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_mul_f32_e32 v42, v2, v2
	.loc	1 240 19                        ; generate_amdgcn.py:240:19
	v_dual_max_f32 v57, 0, v14 :: v_dual_mul_f32 v40, v4, v4
	.loc	1 241 19                        ; generate_amdgcn.py:241:19
	v_dual_mul_f32 v43, v1, v1 :: v_dual_mul_f32 v38, v6, v6
	v_dual_mul_f32 v41, v3, v3 :: v_dual_mul_f32 v36, v8, v8
	v_dual_mul_f32 v39, v5, v5 :: v_dual_mul_f32 v34, v10, v10
	v_dual_mul_f32 v37, v7, v7 :: v_dual_mul_f32 v32, v12, v12
	v_dual_mul_f32 v35, v9, v9 :: v_dual_mul_f32 v30, v22, v22
	v_dual_mul_f32 v33, v11, v11 :: v_dual_mul_f32 v28, v24, v24
	v_dual_mul_f32 v31, v13, v13 :: v_dual_mul_f32 v26, v26, v26
	v_dual_mul_f32 v29, v23, v23 :: v_dual_mul_f32 v24, v45, v45
	v_dual_mul_f32 v27, v25, v25 :: v_dual_mul_f32 v22, v47, v47
	v_dual_mul_f32 v25, v44, v44 :: v_dual_mul_f32 v12, v50, v50
	v_dual_mul_f32 v23, v46, v46 :: v_dual_mul_f32 v14, v48, v48
	v_dual_mul_f32 v13, v49, v49 :: v_dual_mul_f32 v6, v55, v55
	v_dual_mul_f32 v11, v51, v51 :: v_dual_mul_f32 v8, v53, v53
	v_dual_mul_f32 v9, v52, v52 :: v_dual_mul_f32 v4, v57, v57
	v_dual_mul_f32 v7, v54, v54 :: v_dual_mov_b32 v2, v20
	v_mul_f32_e32 v5, v56, v56
	v_mov_b32_e32 v1, v21
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 19 is_stmt 0                ; generate_amdgcn.py:0:19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v3, v42, v42 :: v_dual_max_f32 v10, v43, v43
	v_dual_max_f32 v21, v26, v26 :: v_dual_max_f32 v44, v27, v27
	v_max3_f32 v20, v40, v39, v38
	v_max3_f32 v45, v34, v33, v32
	v_max_f32_e32 v3, v10, v3
	v_max3_f32 v46, v31, v30, v29
	v_max_f32_e32 v21, v44, v21
	v_max3_f32 v44, v24, v23, v22
	v_max3_f32 v47, v11, v9, v8
	v_max3_f32 v48, v7, v6, v5
	v_max3_f32 v10, v37, v36, v35
	v_max3_f32 v3, v3, v41, v20
	v_max3_f32 v20, v45, v46, v28
	v_max3_f32 v45, v14, v13, v12
	v_max3_f32 v21, v21, v25, v44
	v_max3_f32 v44, v47, v48, v4
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v3, v3, v10, v20
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v10, v21, v45, v44
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v44, 4, v19
	v_permlanex16_b32 v20, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v19, v19, 8, 0
.Ltmp29:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v17, 7, v17
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v21, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v45, 0xf0, v2
	v_lshl_or_b32 v46, v18, 3, v44
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v20, v20
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v18, 2, v18
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v20, v21, v21 :: v_dual_and_b32 v21, 8, v0
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_xor_b32_e32 v44, v44, v45
	v_xor_b32_e32 v45, v46, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v3, v2 :: v_dual_max_f32 v3, v10, v20
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v20, 1, v16
	v_add3_u32 v10, v19, v44, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v19, 0, v21, v45
	v_lshl_add_u32 v21, v21, 3, 0
	ds_store_b64 v10, v[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[2:3], v19
	v_add3_u32 v21, v21, v18, v20
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v10, v2 :: v_dual_mov_b32 v19, v3
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v2, v2, v10 :: v_dual_max_f32 v3, v3, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v10, v2 :: v_dual_mov_b32 v19, v3
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, v2, v10 :: v_dual_max_f32 v3, v3, v19
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v2, v10 :: v_dual_mov_b32 v19, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v44, v2, v2 :: v_dual_max_f32 v19, v19, v19
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v2, 3, v15
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v18, v10, v44 :: v_dual_max_f32 v19, v3, v19
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v3, 0, v2, v20
	ds_store_b64 v21, v[18:19]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[18:19], v3
.Ltmp47:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v18, v18 :: v_dual_max_f32 v10, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v10, 0x2b8cbccc, v10
	v_div_scale_f32 v18, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v10
	v_div_scale_f32 v46, vcc_lo, v3, 0x40e00000, v3
	v_rcp_f32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v19
	v_fma_f32 v44, -v18, v20, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v19, v21, 1.0
	v_dual_fmac_f32 v20, v44, v20 :: v_dual_fmac_f32 v21, v45, v21
	v_div_scale_f32 v44, s0, v10, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v45, v46, v20
	v_mul_f32_e32 v47, v44, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v18, v45, v46
	v_fma_f32 v49, -v19, v47, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v48, v20
	v_fmac_f32_e32 v47, v49, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v18, v45, v46
	v_fma_f32 v19, -v19, v47, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v18, v18, v20, v45
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v20.h, 0
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v19, v19, v21, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v3, v18, 0x40e00000, v3
	v_div_fixup_f32 v18, v19, 0x40e00000, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v10.h, v20.h
	v_mov_b16_e32 v10.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v20.l, v18.h
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v19, 1, v20
	v_add3_u32 v10, v3, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 0xffff0000, v10
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v21, null, v20, v20, v43
	v_div_scale_f32 v45, null, v20, v20, v42
	v_div_scale_f32 v47, null, v20, v20, v41
	v_div_scale_f32 v53, null, v20, v20, v38
	v_div_scale_f32 v57, null, v20, v20, v36
	v_rcp_f32_e32 v69, v21
	v_div_scale_f32 v49, null, v20, v20, v40
	v_rcp_f32_e32 v70, v45
	v_div_scale_f32 v51, null, v20, v20, v39
	v_div_scale_f32 v61, null, v20, v20, v34
	v_rcp_f32_e32 v71, v47
	v_rcp_f32_e32 v74, v53
	v_rcp_f32_e32 v76, v57
	v_div_scale_f32 v59, null, v20, v20, v35
	v_rcp_f32_e32 v72, v49
	v_div_scale_f32 v55, null, v20, v20, v37
	v_rcp_f32_e32 v73, v51
	v_rcp_f32_e32 v78, v61
	v_fma_f32 v83, -v21, v69, 1.0
	v_rcp_f32_e32 v77, v59
	v_fma_f32 v84, -v45, v70, 1.0
	v_div_scale_f32 v65, null, v20, v20, v32
	v_rcp_f32_e32 v75, v55
	v_fma_f32 v85, -v47, v71, 1.0
	v_div_scale_f32 v44, vcc_lo, v43, v20, v43
	v_fma_f32 v88, -v53, v74, 1.0
	v_fma_f32 v90, -v57, v76, 1.0
	v_fmac_f32_e32 v69, v83, v69
	v_fma_f32 v86, -v49, v72, 1.0
	v_fmac_f32_e32 v70, v84, v70
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, v18, v19, 0x7fff
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v46, s0, v42, v20, v42
	v_rcp_f32_e32 v80, v65
	v_div_scale_f32 v63, null, v20, v20, v33
	v_div_scale_f32 v48, s1, v41, v20, v41
	v_fma_f32 v87, -v51, v73, 1.0
	v_fma_f32 v92, -v61, v78, 1.0
	v_dual_fmac_f32 v71, v85, v71 :: v_dual_fmac_f32 v76, v90, v76
	v_div_scale_f32 v58, s6, v36, v20, v36
	v_fmac_f32_e32 v74, v88, v74
	v_mul_f32_e32 v83, v44, v69
	v_dual_fmac_f32 v72, v86, v72 :: v_dual_and_b32 v19, 0xffff0000, v3
	v_div_scale_f32 v50, s2, v40, v20, v40
	v_fma_f32 v91, -v59, v77, 1.0
	v_fma_f32 v89, -v55, v75, 1.0
	v_mul_f32_e32 v84, v46, v70
	v_rcp_f32_e32 v79, v63
	v_div_scale_f32 v62, s8, v34, v20, v34
	v_dual_fmac_f32 v73, v87, v73 :: v_dual_fmac_f32 v78, v92, v78
	v_dual_mul_f32 v85, v48, v71 :: v_dual_mul_f32 v90, v58, v76
	v_fma_f32 v96, -v21, v83, v44
	v_dual_fmac_f32 v77, v91, v77 :: v_dual_mul_f32 v86, v50, v72
	v_div_scale_f32 v56, s5, v37, v20, v37
	v_fma_f32 v94, -v65, v80, 1.0
	v_fmac_f32_e32 v75, v89, v75
	v_fma_f32 v97, -v45, v84, v46
	v_mul_f32_e32 v92, v62, v78
	v_fma_f32 v98, -v47, v85, v48
	v_fma_f32 v103, -v57, v90, v58
	v_fmac_f32_e32 v83, v96, v69
	v_div_scale_f32 v52, s3, v39, v20, v39
	v_div_scale_f32 v60, s7, v35, v20, v35
	v_div_scale_f32 v68, null, v20, v20, v30
	v_fma_f32 v99, -v49, v86, v50
	v_dual_fmac_f32 v80, v94, v80 :: v_dual_mul_f32 v89, v56, v75
	v_fmac_f32_e32 v84, v97, v70
	v_div_scale_f32 v54, s4, v38, v20, v38
	v_fma_f32 v93, -v63, v79, 1.0
	v_fma_f32 v105, -v61, v92, v62
	v_dual_fmac_f32 v85, v98, v71 :: v_dual_fmac_f32 v90, v103, v76
	v_fma_f32 v21, -v21, v83, v44
	v_div_scale_f32 v66, s10, v32, v20, v32
	v_rcp_f32_e32 v82, v68
	v_mul_f32_e32 v87, v52, v73
	v_dual_mul_f32 v91, v60, v77 :: v_dual_fmac_f32 v86, v99, v72
	v_fma_f32 v44, -v45, v84, v46
	v_dual_fmac_f32 v79, v93, v79 :: v_dual_mul_f32 v88, v54, v74
	v_fmac_f32_e32 v92, v105, v78
	v_fma_f32 v45, -v47, v85, v48
	v_div_fmas_f32 v21, v21, v69, v83
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v94, v66, v80
	v_fma_f32 v100, -v51, v87, v52
	v_fma_f32 v46, -v49, v86, v50
	v_div_fmas_f32 v44, v44, v70, v84
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v64, s9, v33, v20, v33
	v_fma_f32 v101, -v53, v88, v54
	v_div_fmas_f32 v45, v45, v71, v85
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v102, -v55, v89, v56
	v_div_fixup_f32 v21, v21, v20, v43
	v_div_fmas_f32 v43, v46, v72, v86
	v_fma_f32 v46, -v68, v82, 1.0
	v_fmac_f32_e32 v87, v100, v73
	v_dual_mul_f32 v93, v64, v79 :: v_dual_fmac_f32 v88, v101, v74
	v_fmac_f32_e32 v89, v102, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v46, v82
	v_fma_f32 v47, -v51, v87, v52
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v53, v88, v54
	v_fma_f32 v49, -v55, v89, v56
	v_div_fixup_f32 v42, v44, v20, v42
	v_div_fmas_f32 v44, v47, v73, v87
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v50, -v57, v90, v58
	v_div_scale_f32 v47, null, v20, v20, v29
	v_div_fixup_f32 v41, v45, v20, v41
	v_div_fmas_f32 v45, v48, v74, v88
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v40, v43, v20, v40
	v_div_fmas_f32 v43, v49, v75, v89
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v39, v44, v20, v39
	v_div_fmas_f32 v44, v50, v76, v90
	v_rcp_f32_e32 v50, v47
	v_div_scale_f32 v67, null, v20, v20, v31
	v_fma_f32 v104, -v59, v91, v60
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v38, v45, v20, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v81, v67
	v_fma_f32 v106, -v63, v93, v64
	v_fma_f32 v52, -v61, v92, v62
	v_div_fixup_f32 v36, v44, v20, v36
	v_fma_f32 v54, -v47, v50, 1.0
	v_fmac_f32_e32 v91, v104, v77
	v_fma_f32 v44, -v65, v94, v66
	v_div_fixup_f32 v37, v43, v20, v37
	v_div_scale_f32 v46, s1, v30, v20, v30
	v_fmac_f32_e32 v50, v54, v50
	v_fma_f32 v51, -v59, v91, v60
	v_fma_f32 v95, -v67, v81, 1.0
	v_fmac_f32_e32 v94, v44, v80
	v_div_scale_f32 v56, null, v19, v19, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v45, v51, v77, v91
	v_fmac_f32_e32 v81, v95, v81
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v48, -v65, v94, v66
	v_div_fmas_f32 v43, v52, v78, v92
	v_div_fixup_f32 v35, v45, v20, v35
	v_div_scale_f32 v45, s0, v31, v20, v31
	v_fmac_f32_e32 v93, v106, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v34, v43, v20, v34
	v_div_scale_f32 v52, null, v20, v20, v28
	v_mul_f32_e32 v44, v45, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v63, v93, v64
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v58, null, v19, v19, v24
	v_fma_f32 v49, -v67, v44, v45
	v_mul_f32_e32 v51, v46, v82
	v_div_fmas_f32 v43, v43, v79, v93
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v60, v58
	v_fmac_f32_e32 v44, v49, v81
	v_rcp_f32_e32 v49, v52
	v_fma_f32 v53, -v68, v51, v46
	v_div_fmas_f32 v48, v48, v80, v94
	v_div_fixup_f32 v33, v43, v20, v33
	v_fma_f32 v43, -v67, v44, v45
	v_div_scale_f32 v45, s2, v29, v20, v29
	v_fmac_f32_e32 v51, v53, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v32, v48, v20, v32
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v52, v49, 1.0
	v_div_fmas_f32 v43, v43, v81, v44
	v_fma_f32 v44, -v68, v51, v46
	v_mul_f32_e32 v46, v45, v50
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v53, s0, v28, v20, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v44, v44, v82, v51
	v_fma_f32 v54, -v47, v46, v45
	v_fmac_f32_e32 v49, v48, v49
	v_div_scale_f32 v48, null, v19, v19, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v44, v20, v30
	v_fmac_f32_e32 v46, v54, v50
	v_rcp_f32_e32 v44, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v51, v48
	v_div_fixup_f32 v31, v43, v20, v31
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v45, -v47, v46, v45
	v_div_scale_f32 v47, null, v19, v19, v25
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v45, v45, v50, v46
	v_fma_f32 v57, -v56, v44, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v48, v51, 1.0
	s_mov_b32 vcc_lo, s0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v39, v39
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v29, v45, v20, v29
	v_dual_fmac_f32 v44, v57, v44 :: v_dual_fmac_f32 v51, v54, v51
	v_mul_f32_e32 v55, v53, v49
	v_rcp_f32_e32 v54, v47
	v_fma_f32 v45, -v58, v60, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v43, -v52, v55, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v38, v38
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v60, v45, v60
	v_div_scale_f32 v45, s0, v24, v19, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v43, v49
	v_div_scale_f32 v43, s1, v27, v19, v27
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v40, v40
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v46, -v52, v55, v53
	v_fma_f32 v53, -v47, v54, 1.0
	v_div_scale_f32 v52, s2, v26, v19, v26
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v29, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v46, v46, v49, v55
	v_fmac_f32_e32 v54, v53, v54
	v_mul_f32_e32 v50, v43, v51
	v_div_scale_f32 v53, s3, v25, v19, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v46, v20, v28
	v_div_scale_f32 v46, null, v19, v19, v23
	v_fma_f32 v57, -v48, v50, v43
	v_mul_f32_e32 v59, v52, v44
	v_mul_f32_e32 v55, v53, v54
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v50, v57, v51
	v_fma_f32 v49, -v56, v59, v52
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v28, -v48, v50, v43
	v_fma_f32 v43, -v47, v55, v53
.Ltmp48:
	.loc	1 126 32 is_stmt 1              ; generate_amdgcn.py:126:32
	v_and_b32_e32 v18, 0x1f0, v0
.Ltmp49:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s25, 31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v28, v28, v51, v50
	v_fmac_f32_e32 v55, v43, v54
	v_rcp_f32_e32 v43, v46
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v28, v19, v27
	v_fma_f32 v47, -v47, v55, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v27, v27
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v50, -v46, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v50, v43
	v_div_scale_f32 v50, s1, v23, v19, v23
	v_dual_mul_f32 v28, v50, v43 :: v_dual_fmac_f32 v59, v49, v44
	v_div_scale_f32 v49, null, v19, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v56, v59, v52
	v_rcp_f32_e32 v51, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v44, v48, v44, v59
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v47, v47, v54, v55
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v44, v19, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v49, v51, 1.0
	v_mul_f32_e32 v48, v45, v60
	v_div_fixup_f32 v25, v47, v19, v25
	v_div_scale_f32 v47, null, v19, v19, v14
	v_fmac_f32_e32 v51, v44, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v58, v48, v45
	v_div_scale_f32 v44, s2, v22, v19, v22
	v_rcp_f32_e32 v53, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v48, v52, v60
	v_fma_f32 v52, -v46, v28, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v26, v26
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v45, -v58, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v28, v52, v43
	v_div_scale_f32 v52, null, v19, v19, v13
	v_div_fmas_f32 v45, v45, v60, v48
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v54, v52
	v_div_fixup_f32 v24, v45, v19, v24
	v_fma_f32 v45, -v46, v28, v50
	v_fma_f32 v50, -v47, v53, 1.0
	v_mul_f32_e32 v48, v44, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v24, v24
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v28, v45, v43, v28
	v_div_scale_f32 v43, null, v19, v19, v12
	v_fmac_f32_e32 v53, v50, v53
	v_fma_f32 v46, -v49, v48, v44
	v_div_scale_f32 v45, s0, v14, v19, v14
	v_div_scale_f32 v50, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v48, v46, v51
	v_rcp_f32_e32 v46, v43
	v_div_fixup_f32 v23, v28, v19, v23
	v_fma_f32 v28, -v52, v54, 1.0
	v_rcp_f32_e32 v56, v50
	v_fma_f32 v44, -v49, v48, v44
	v_mul_f32_e32 v49, v45, v53
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v54, v28, v54
	v_div_scale_f32 v28, s1, v13, v19, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v55, -v43, v46, 1.0
	v_div_fmas_f32 v44, v44, v51, v48
	v_fma_f32 v48, -v47, v49, v45
	v_fma_f32 v58, -v50, v56, 1.0
	v_mul_f32_e32 v51, v28, v54
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v55, null, v19, v19, v9
	v_div_scale_f32 v57, s2, v12, v19, v12
	v_fmac_f32_e32 v49, v48, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v59, v55
	v_fmac_f32_e32 v56, v58, v56
	v_fma_f32 v48, -v52, v51, v28
	v_div_scale_f32 v58, s3, v11, v19, v11
	v_mul_f32_e32 v60, v57, v46
	v_div_fixup_f32 v22, v44, v19, v22
	v_fma_f32 v44, -v47, v49, v45
	v_fmac_f32_e32 v51, v48, v54
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v47, v58, v56
	v_fma_f32 v45, -v43, v60, v57
	v_fma_f32 v48, -v55, v59, 1.0
	v_div_fmas_f32 v44, v44, v53, v49
	v_fma_f32 v28, -v52, v51, v28
	v_div_scale_f32 v49, null, v19, v19, v8
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v60, v45, v46 :: v_dual_fmac_f32 v59, v48, v59
	v_fma_f32 v45, -v50, v47, v58
	v_div_scale_f32 v48, s0, v9, v19, v9
	v_div_fmas_f32 v28, v28, v54, v51
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v43, -v43, v60, v57
	v_fmac_f32_e32 v47, v45, v56
	v_mul_f32_e32 v45, v48, v59
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v44, v19, v14
	v_div_fmas_f32 v43, v43, v46, v60
	v_fma_f32 v46, -v50, v47, v58
	v_fma_f32 v50, -v55, v45, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v44, -v49, v51, 1.0
	v_div_fixup_f32 v13, v28, v19, v13
	v_div_fmas_f32 v46, v46, v56, v47
	v_fmac_f32_e32 v45, v50, v59
	v_div_fixup_f32 v12, v43, v19, v12
	v_fmac_f32_e32 v51, v44, v51
	v_div_scale_f32 v44, null, v19, v19, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v55, v45, v48
	v_div_scale_f32 v43, null, v19, v19, v7
	v_rcp_f32_e32 v48, v44
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v11, v46, v19, v11
	v_div_fmas_f32 v28, v28, v59, v45
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v46, null, v19, v19, v5
	v_div_scale_f32 v53, null, v19, v19, v4
	v_div_scale_f32 v47, vcc_lo, v8, v19, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v46
	v_fma_f32 v54, -v44, v48, 1.0
	v_div_fixup_f32 v9, v28, v19, v9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v28, -v43, v45, 1.0
	v_rcp_f32_e32 v55, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v48, v54, v48
	v_div_scale_f32 v54, s1, v6, v19, v6
	v_fmac_f32_e32 v45, v28, v45
	v_div_scale_f32 v28, s0, v7, v19, v7
	v_fma_f32 v57, -v46, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v60, v54, v48
	v_mul_f32_e32 v52, v47, v51
	v_mul_f32_e32 v58, v28, v45
	v_fma_f32 v59, -v53, v55, 1.0
	v_fmac_f32_e32 v50, v57, v50
	v_div_scale_f32 v57, s2, v5, v19, v5
	v_fma_f32 v56, -v49, v52, v47
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v61, v57, v50
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v52, v56, v51
	v_fma_f32 v56, -v43, v58, v28
	v_fmac_f32_e32 v55, v59, v55
	v_div_scale_f32 v59, s3, v4, v19, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v49, v52, v47
	v_fmac_f32_e32 v58, v56, v45
	v_fma_f32 v56, -v46, v61, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v62, v59, v55
	v_fma_f32 v49, -v44, v60, v54
	v_div_fmas_f32 v47, v47, v51, v52
	v_fma_f32 v28, -v43, v58, v28
	v_fmac_f32_e32 v61, v56, v50
	v_fma_f32 v43, -v53, v62, v59
	v_fmac_f32_e32 v60, v49, v48
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v8, v47, v19, v8
	v_div_fmas_f32 v28, v28, v45, v58
	v_fmac_f32_e32 v62, v43, v55
	v_fma_f32 v44, -v44, v60, v54
	v_fma_f32 v43, -v46, v61, v57
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v7, v28, v19, v7
	v_fma_f32 v45, -v53, v62, v59
	v_div_fmas_f32 v44, v44, v48, v60
	s_mov_b32 vcc_lo, s2
	s_mov_b32 s0, 0xc1000000
	v_div_fmas_f32 v43, v43, v50, v61
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v6, v44, v19, v6
	v_div_fmas_f32 v45, v45, v55, v62
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v43, v19, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v33, v33, s0, 0x40e00000
	v_med3_f32 v39, v39, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v4, v45, v19, v4
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v21
	v_rndne_f32_e32 v21, v42
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v35, v35, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v33, v33
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v28, v41
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_med3_f32 v37, v37, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v4, v4, s0, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v47, v14
	v_cvt_i32_f32_e32 v53, v5
	v_and_b32_e32 v5, 15, v21
	v_and_b32_e32 v14, 15, v36
	v_and_b32_e32 v21, 15, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v33, 11, v0
	v_lshlrev_b32_e32 v36, 5, v0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v40, v40, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v41, v20
	v_cvt_i32_f32_e32 v50, v11
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v54, v4
	v_and_b32_e32 v4, 15, v19
	v_and_b32_e32 v11, 15, v39
	v_and_b32_e32 v19, 15, v35
	v_and_b32_e32 v20, 15, v34
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v34, 4, v15
	v_and_b32_e32 v35, 0x160, v0
	v_and_b32_e32 v33, 0x3000, v33
	v_lshlrev_b32_e32 v39, 7, v0
	v_and_b32_e32 v36, 0x60, v36
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v22, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v28, v28
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v43, v25
	v_cvt_i32_f32_e32 v48, v13
	v_cvt_i32_f32_e32 v49, v12
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v12, 15, v38
	v_and_b32_e32 v13, 15, v37
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v37, 0x200, v1
	v_xor_b32_e32 v38, v34, v35
	v_add3_u32 v17, 0, v33, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v35, 15, v9
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v9, 0x3600, v39, v36
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v32, v32
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v23, v23
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_cvt_i32_f32_e32 v51, v7
	v_cvt_i32_f32_e32 v52, v6
	v_and_b32_e32 v6, 15, v28
	v_and_b32_e32 v7, 15, v40
	v_and_b32_e32 v25, 15, v29
	v_and_b32_e32 v29, 15, v43
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v43, v17, v37, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v36, 15, v8
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v8, v9, v18, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v46, v22
	v_and_b32_e32 v22, 15, v32
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v42, v26
	v_cvt_i32_f32_e32 v44, v24
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_cvt_i32_f32_e32 v31, v31
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v43, v[4:7]
	ds_store_b128 v43, v[19:22] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[4:7], v8
	ds_load_b128 v[17:20], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v24, 15, v30
	v_and_b32_e32 v27, 15, v27
	v_and_b32_e32 v28, 15, v42
	v_and_b32_e32 v30, 15, v44
	v_cvt_i32_f32_e32 v45, v23
	v_and_b32_e32 v23, 15, v31
	v_and_b32_e32 v26, 15, v41
	v_and_b32_e32 v33, 15, v49
	v_and_b32_e32 v34, 15, v50
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v43, v[27:30]
	ds_store_b128 v43, v[33:36] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v8
	ds_load_b128 v[35:38], v8 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v43, v[11:14]
	ds_store_b128 v43, v[23:26] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[11:14], v8
	ds_load_b128 v[21:24], v8 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v31, 15, v45
	v_and_b32_e32 v32, 15, v46
	v_and_b32_e32 v33, 15, v47
	v_and_b32_e32 v34, 15, v48
	v_and_b32_e32 v39, 15, v51
	v_and_b32_e32 v40, 15, v52
	v_and_b32_e32 v41, 15, v53
	v_and_b32_e32 v42, 15, v54
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v43, v[31:34]
	ds_store_b128 v43, v[39:42] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v8
	ds_load_b128 v[39:42], v8 offset:2048
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v17, 4, v4
.Ltmp50:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v17, 4, v0
.Ltmp51:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v6, v19, 4, v6
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s24, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v19, s0, v17
	s_mul_i32 s2, s26, s0
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v5, v18, 4, v5
	v_lshl_or_b32 v7, v20, 4, v7
	v_lshl_or_b32 v9, v21, 4, v11
	v_lshl_or_b32 v8, v23, 4, v13
	v_lshl_or_b32 v11, v24, 4, v14
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, s2, s1, v2
	s_lshl_b32 s0, s0, 5
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v25.l, v10.h
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v10, v22, 4, v12
	v_lshl_or_b32 v12, v35, 4, v27
	v_lshl_or_b32 v13, v36, 4, v28
	v_lshl_or_b32 v14, v37, 4, v29
	v_lshl_or_b32 v18, v38, 4, v30
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v24, v2, v19
	v_add3_u32 v19, v19, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v39, 4, v31
	v_lshl_or_b32 v21, v40, 4, v32
	v_lshl_or_b32 v22, v41, 4, v33
	v_lshl_or_b32 v23, v42, 4, v34
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.h, v2.h, v2.l
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	v_lshlrev_b16 v3.l, 8, v18.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_lshlrev_b16 v5.h, 8, v23.l
	v_and_b16 v6.l, 0xff, v22.l
	v_lshlrev_b16 v6.h, 8, v21.l
	v_and_b16 v7.l, 0xff, v20.l
	v_or_b16 v9.l, v2.h, v2.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v25.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v2, 2, v15
	v_lshrrev_b32_e32 v3, 2, v16
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v4, 2, v17
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	s_and_b32 s1, s13, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s12
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v2, 0, v2, v3
	v_add3_u32 v1, 0, v1, v4
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v24, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v19, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v3, v0, 63, s26
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b32 v2, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v3, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s15, 0xffff
	s_mov_b32 s0, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s24, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp52:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp53:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 123
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 123
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8748
; TotalNumSgprs: 46
; NumVgprs: 123
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 123
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_relu2_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     123
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
