	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v100, 0xe0, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v63, 15, v0
	v_lshlrev_b32_e32 v103, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshrrev_b32_e32 v102, 2, v100
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s35, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s34, 63
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s8, s9
	s_abs_i32 s9, s4
	s_add_i32 s8, s8, s2
	s_mul_hi_u32 s2, s9, s8
	s_xor_b32 s8, s4, s6
	s_mul_i32 s10, s2, s7
	s_ashr_i32 s13, s8, 31
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s8, s7
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s8, s7
	s_cselect_b32 s2, s9, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s14, s2, s13
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s12, 0xff
.Ltmp13:
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s33, s14, s13
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s6, s33, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s6
	.loc	1 120 13 is_stmt 0              ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	s_cmpk_gt_i32 s2, 0xff
	s_mov_b32 s5, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v3, 2, v100
.Ltmp15:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v1, 2, v0
	s_branch .LBB0_3
.Ltmp16:
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow329
	s_load_b128 s[20:23], s[0:1], 0x20
	v_dual_mov_b32 v78, 0 :: v_dual_and_b32 v101, 7, v0
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v65, 0x1f0, v0
	v_dual_mov_b32 v75, 0 :: v_dual_and_b32 v64, 0x100, v0
	v_dual_mov_b32 v77, 0 :: v_dual_lshlrev_b32 v66, 4, v63
	v_dual_mov_b32 v82, 0 :: v_dual_and_b32 v67, 16, v0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v88, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v90, 0
	v_dual_mov_b32 v89, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v91, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_mov_b32_e32 v73, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s40, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 188 9 is_stmt 1               ; generate_amdgcn.py:188:9
	v_lshl_or_b32 v26, s14, 9, v100
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 197 39                        ; generate_amdgcn.py:197:39
	s_lshl_b32 s41, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s1, s12, 1
	s_mov_b32 s12, 0
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_lshl_b32 s3, s13, 9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v1, 3, v65
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_subrev_nc_u32_e32 v108, s3, v26
	s_lshl_b32 s3, s13, 8
	s_mov_b32 s13, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshlrev_b32_e32 v5, 3, v101
	v_lshrrev_b32_e32 v3, 4, v64
	v_and_b32_e32 v7, 56, v103
	v_lshlrev_b32_e32 v11, 5, v100
.Ltmp17:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s0, s2, 31
	v_xor_b32_e32 v4, v5, v1
.Ltmp18:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_or_b32_e32 v8, v3, v63
	v_xor_b32_e32 v7, v7, v102
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_add3_u32 v3, s40, v3, v63
.Ltmp19:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_lshr_b32 s0, s0, 24
	v_lshl_or_b32 v9, v63, 10, v4
	v_lshlrev_b32_e32 v4, 6, v63
.Ltmp20:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_sub_nc_u32_e32 v106, s1, v1
.Ltmp21:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_add_i32 s2, s2, s0
.Ltmp22:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v2, 3, v0
.Ltmp23:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:181:22 ]
	s_ashr_i32 s42, s2, 8
	v_or3_b32 v7, v4, v11, v7
.Ltmp24:
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	v_or_b32_e32 v4, s41, v1
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v1, 32, v3
	v_mul_lo_u32 v3, s42, v3
	v_or_b32_e32 v22, s41, v2
	v_sub_nc_u32_e32 v105, s1, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_mul_lo_u32 v1, s42, v1
	v_lshrrev_b32_e32 v2, 3, v67
	v_add_nc_u32_e32 v24, 64, v4
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v26, 0x41, v4
	s_lshl_b32 s14, s14, 8
	v_dual_mov_b32 v68, 0 :: v_dual_and_b32 v107, 2, v2
	v_dual_mov_b32 v94, 0 :: v_dual_lshlrev_b32 v109, 1, v1
	v_mad_u64_u32 v[1:2], null, s35, v4, s[14:15]
	v_lshlrev_b32_e32 v110, 1, v3
	v_mad_u64_u32 v[2:3], null, s35, v24, s[14:15]
	v_cmp_gt_i32_e64 s0, 0x80, v4
	v_mad_u64_u32 v[3:4], null, s35, v26, s[14:15]
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	v_add_nc_u32_e32 v25, 64, v22
	v_mul_lo_u32 v4, s34, v22
	v_dual_mov_b32 v73, 0 :: v_dual_lshlrev_b32 v6, 3, v0
	v_add_nc_u32_e32 v104, 0, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_gt_i32_e64 s1, 0x80, v25
	v_mul_lo_u32 v25, s34, v25
	v_xor_b32_e32 v8, 8, v7
	v_xor_b32_e32 v10, 0x88, v9
	v_xor_b32_e32 v12, 0x110, v9
	v_xor_b32_e32 v13, 0x198, v9
	v_xor_b32_e32 v14, 0x220, v9
	v_xor_b32_e32 v15, 0x2a8, v9
	v_xor_b32_e32 v11, 0x330, v9
	v_xor_b32_e32 v16, 0x3b8, v9
	v_xor_b32_e32 v17, 16, v7
	v_xor_b32_e32 v18, 24, v7
	v_xor_b32_e32 v19, 32, v7
	v_xor_b32_e32 v20, 40, v7
	v_xor_b32_e32 v21, 48, v7
	v_xor_b32_e32 v23, 56, v7
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v22
	v_dual_mov_b32 v95, 0 :: v_dual_add_nc_u32 v22, s35, v1
	v_add3_u32 v111, v25, s40, v5
	v_subrev_nc_u32_e32 v112, s3, v2
	v_subrev_nc_u32_e32 v113, s3, v3
	v_subrev_nc_u32_e32 v114, s3, v1
	v_add3_u32 v116, v4, s40, v5
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v117, 0, v6
	v_dual_mov_b32 v97, 0 :: v_dual_add_nc_u32 v126, 0, v7
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v127, 0, v8
	v_mov_b32_e32 v1, s12
	v_subrev_nc_u32_e32 v115, s3, v22
	v_dual_mov_b32 v93, 0 :: v_dual_add_nc_u32 v118, 0, v9
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v119, 0, v10
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v120, 0, v12
	v_dual_mov_b32 v84, 0 :: v_dual_add_nc_u32 v121, 0, v13
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v122, 0, v14
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v123, 0, v15
	v_dual_mov_b32 v99, 0 :: v_dual_add_nc_u32 v124, 0, v11
	v_dual_mov_b32 v96, 0 :: v_dual_add_nc_u32 v125, 0, v16
	v_dual_mov_b32 v89, 0 :: v_dual_add_nc_u32 v128, 0, v17
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v129, 0, v18
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v130, 0, v19
	v_dual_mov_b32 v76, 0 :: v_dual_add_nc_u32 v131, 0, v20
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v132, 0, v21
	v_dual_mov_b32 v74, 0 :: v_dual_add_nc_u32 v133, 0, v23
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_cmp_gt_i32_e64 s2, 0x80, v24
	v_dual_mov_b32 v6, s17 :: v_dual_mov_b32 v7, s18
	v_mov_b32_e32 v8, s19
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v77, 0
	v_mov_b32_e32 v75, 0
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s43, s35, 1
	s_lshl_b32 s44, s34, 7
	s_lshl_b32 s34, s35, 7
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s28, s4
	s_mov_b32 s29, s5
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s6
	s_mov_b32 s37, s7
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s26
	s_mov_b32 s11, s27
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_clause 0x1
	buffer_load_u16 v134, v110, s[24:27], 0 offen
	buffer_load_u16 v135, v109, s[24:27], 0 offen
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s3, s41, v105
	v_cmp_lt_i32_e64 s4, s41, v106
	s_add_i32 s6, s41, 64
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_add_i32 s42, s42, -1
	.loc	1 198 27                        ; generate_amdgcn.py:198:27
	v_cmp_lt_i32_e64 s5, s6, v105
	v_cmp_lt_i32_e64 s6, s6, v106
	.loc	1 198 26 is_stmt 0              ; generate_amdgcn.py:198:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	.loc	1 214 26 is_stmt 1              ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v13, 0x80000000, v116, s3
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s3, s5, s1
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_addk_i32 s41, 0x80
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	v_cndmask_b32_e64 v19, 0x80000000, v111, s3
	.loc	1 195 18                        ; generate_amdgcn.py:195:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v135, 16, v135
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v9, v66, v114
	.loc	1 220 26 is_stmt 0              ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v10, v66, v115
	.loc	1 220 34                        ; generate_amdgcn.py:220:34
	v_add_nc_u32_e32 v11, v66, v112
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_add_nc_u32_e32 v12, v66, v113
	.loc	1 195 18 is_stmt 1              ; generate_amdgcn.py:195:18
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s4
	v_cndmask_b32_e64 v14, 0x80000000, v10, s4
	.loc	1 198 26                        ; generate_amdgcn.py:198:26
	s_and_b32 s4, s6, s2
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cmp_lg_u32 s42, 0
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	v_cndmask_b32_e64 v45, 0x80000000, v11, s4
	v_cndmask_b32_e64 v46, 0x80000000, v12, s4
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	buffer_load_b64 v[17:18], v13, s[28:31], 0 offen
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[36:39], 0 offen
	buffer_load_b128 v[13:16], v14, s[36:39], 0 offen
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	buffer_load_b64 v[57:58], v19, s[28:31], 0 offen
	s_waitcnt vmcnt(3)
	ds_store_b64 v117, v[17:18] offset:16384
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(1)
	v_perm_b32 v17, v13, v9, 0x5010400
	v_perm_b32 v13, v13, v9, 0x7030602
	v_perm_b32 v18, v14, v10, 0x5010400
	v_perm_b32 v14, v14, v10, 0x7030602
	v_perm_b32 v19, v15, v11, 0x5010400
	v_perm_b32 v15, v15, v11, 0x7030602
	v_perm_b32 v20, v16, v12, 0x5010400
	v_perm_b32 v21, v16, v12, 0x7030602
	v_lshrrev_b32_e32 v22, 8, v17
	v_lshrrev_b32_e32 v23, 24, v17
	v_lshrrev_b32_e32 v24, 8, v13
	v_lshrrev_b32_e32 v25, 24, v13
	v_lshrrev_b32_e32 v26, 8, v18
	v_lshrrev_b32_e32 v27, 24, v18
	v_lshrrev_b32_e32 v28, 8, v14
	v_lshrrev_b32_e32 v29, 24, v14
	v_lshrrev_b32_e32 v30, 8, v19
	v_lshrrev_b32_e32 v31, 24, v19
	v_lshrrev_b32_e32 v32, 8, v15
	v_lshrrev_b32_e32 v33, 24, v15
	v_lshrrev_b32_e32 v34, 8, v20
	v_lshrrev_b32_e32 v35, 24, v20
	v_lshrrev_b32_e32 v36, 8, v21
	v_lshrrev_b32_e32 v37, 24, v21
	v_and_b16 v9.l, 0xff, v17.l
	v_lshlrev_b16 v17.l, 8, v22.l
	v_and_b16 v9.h, 0xff, v17.h
	v_lshlrev_b16 v17.h, 8, v23.l
	v_and_b16 v10.l, 0xff, v13.l
	v_and_b16 v11.l, 0xff, v18.l
	v_lshlrev_b16 v18.l, 8, v24.l
	v_and_b16 v10.h, 0xff, v13.h
	v_and_b16 v11.h, 0xff, v18.h
	v_lshlrev_b16 v18.h, 8, v25.l
	v_and_b16 v12.l, 0xff, v14.l
	v_and_b16 v12.h, 0xff, v14.h
	v_and_b16 v13.l, 0xff, v19.l
	v_and_b16 v13.h, 0xff, v19.h
	v_and_b16 v14.l, 0xff, v15.l
	v_and_b16 v14.h, 0xff, v15.h
	v_and_b16 v15.l, 0xff, v20.l
	v_and_b16 v15.h, 0xff, v20.h
	v_and_b16 v16.l, 0xff, v21.l
	v_and_b16 v16.h, 0xff, v21.h
	v_lshlrev_b16 v19.l, 8, v26.l
	v_lshlrev_b16 v19.h, 8, v27.l
	v_lshlrev_b16 v20.l, 8, v28.l
	v_lshlrev_b16 v20.h, 8, v29.l
	v_lshlrev_b16 v21.l, 8, v30.l
	v_lshlrev_b16 v21.h, 8, v31.l
	v_lshlrev_b16 v22.l, 8, v32.l
	v_lshlrev_b16 v22.h, 8, v33.l
	v_lshlrev_b16 v23.l, 8, v34.l
	v_lshlrev_b16 v23.h, 8, v35.l
	v_lshlrev_b16 v24.l, 8, v36.l
	v_lshlrev_b16 v24.h, 8, v37.l
	v_or_b16 v9.l, v9.l, v17.l
	v_or_b16 v9.h, v9.h, v17.h
	v_or_b16 v10.l, v10.l, v18.l
	v_or_b16 v10.h, v10.h, v18.h
	v_or_b16 v11.l, v11.l, v19.l
	v_or_b16 v11.h, v11.h, v19.h
	v_or_b16 v12.l, v12.l, v20.l
	v_or_b16 v12.h, v12.h, v20.h
	v_or_b16 v13.l, v13.l, v21.l
	v_or_b16 v13.h, v13.h, v21.h
	v_or_b16 v14.l, v14.l, v22.l
	v_or_b16 v14.h, v14.h, v22.h
	v_or_b16 v15.l, v15.l, v23.l
	v_or_b16 v15.h, v15.h, v23.h
	v_or_b16 v16.l, v16.l, v24.l
	v_or_b16 v16.h, v16.h, v24.h
	ds_store_b16 v118, v9
	ds_store_b16_d16_hi v118, v9 offset:64
	ds_store_b16 v119, v10
	ds_store_b16_d16_hi v119, v10 offset:64
	ds_store_b16 v120, v11
	ds_store_b16_d16_hi v120, v11 offset:64
	ds_store_b16 v121, v12
	ds_store_b16_d16_hi v121, v12 offset:64
	ds_store_b16 v122, v13
	ds_store_b16_d16_hi v122, v13 offset:64
	ds_store_b16 v123, v14
	ds_store_b16_d16_hi v123, v14 offset:64
	ds_store_b16 v124, v15
	ds_store_b16_d16_hi v124, v15 offset:64
	ds_store_b16 v125, v16
	ds_store_b16_d16_hi v125, v16 offset:64
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[59:62], v126 offset1:16
	ds_load_2addr_stride64_b64 v[136:139], v127 offset1:16
	ds_load_2addr_stride64_b64 v[41:44], v128 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v9, v104 offset:16704
	ds_load_u8 v10, v104 offset:16640
	ds_load_u8 v11, v104 offset:16832
	ds_load_u8 v12, v104 offset:16768
	ds_load_u8 v13, v104 offset:16448
	ds_load_u8 v14, v104 offset:16384
	ds_load_u8 v15, v104 offset:16416
	ds_load_u8 v16, v104 offset:16576
	ds_load_u8 v17, v104 offset:16512
	ds_load_u8 v18, v104 offset:17216
	ds_load_u8 v19, v104 offset:17152
	ds_load_u8 v20, v104 offset:17344
	ds_load_u8 v21, v104 offset:17280
	ds_load_u8 v22, v104 offset:16960
	ds_load_u8 v23, v104 offset:16896
	ds_load_u8 v24, v104 offset:17088
	ds_load_u8 v25, v104 offset:17024
	ds_load_u8 v49, v104 offset:17728
	ds_load_u8 v53, v104 offset:17664
	ds_load_u8 v50, v104 offset:17856
	ds_load_u8 v54, v104 offset:17792
	ds_load_u8 v51, v104 offset:17472
	ds_load_u8 v55, v104 offset:17408
	ds_load_u8 v52, v104 offset:17600
	ds_load_u8 v56, v104 offset:17536
	ds_load_u8 v47, v104 offset:18240
	ds_load_u8 v48, v104 offset:18176
	ds_load_u8 v26, v104 offset:16736
	ds_load_u8 v27, v104 offset:16672
	ds_load_u8 v28, v104 offset:16864
	ds_load_u8 v29, v104 offset:16800
	ds_load_u8 v30, v104 offset:16480
	ds_load_u8 v31, v104 offset:16608
	ds_load_u8 v32, v104 offset:16544
	ds_load_u8 v33, v104 offset:17248
	ds_load_u8 v34, v104 offset:17184
	ds_load_u8 v35, v104 offset:17376
	ds_load_u8 v36, v104 offset:17312
	ds_load_u8 v37, v104 offset:16992
	ds_load_u8 v38, v104 offset:16928
	ds_load_u8 v39, v104 offset:17120
	ds_load_u8 v40, v104 offset:17056
	ds_load_u8 v144, v104 offset:18368
	ds_load_u8 v145, v104 offset:18304
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v10, v12, v11, 0xc0c0004
	s_waitcnt lgkmcnt(38)
	v_perm_b32 v11, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(35)
	v_perm_b32 v12, v17, v16, 0xc0c0004
	s_waitcnt lgkmcnt(31)
	v_perm_b32 v14, v21, v20, 0xc0c0004
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v16, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v21, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v22, v29, v28, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v15, v15, v30, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v23, v32, v31, 0xc0c0004
	v_perm_b32 v13, v19, v18, 0xc0c0004
	v_perm_b32 v19, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v24, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v36, v35, 0xc0c0004
	v_lshl_or_b32 v18, v10, 16, v9
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v26, v38, v37, 0xc0c0004
	v_lshl_or_b32 v17, v12, 16, v11
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v40, v39, 0xc0c0004
	v_lshl_or_b32 v141, v22, 16, v21
	v_lshl_or_b32 v140, v23, 16, v15
	v_lshl_or_b32 v20, v14, 16, v13
	v_lshl_or_b32 v19, v19, 16, v16
	v_lshl_or_b32 v143, v25, 16, v24
	v_lshl_or_b32 v142, v27, 16, v26
	v_wmma_i32_16x16x16_iu4 v[25:32], v[59:60], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[17:18], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[59:60], v[140:141], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[136:137], v[19:20], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[138:139], v[19:20], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[61:62], v[140:141], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[136:137], v[142:143], v[33:40] neg_lo:[1,1,0]
	ds_load_u8 v59, v104 offset:17888
	ds_load_u8 v60, v104 offset:17824
	ds_load_u8 v61, v104 offset:17504
	ds_load_u8 v62, v104 offset:17440
	ds_load_u8 v136, v104 offset:17632
	ds_load_u8 v137, v104 offset:17568
	v_perm_b32 v49, v53, v49, 0xc0c0004
	v_perm_b32 v50, v54, v50, 0xc0c0004
	v_perm_b32 v51, v55, v51, 0xc0c0004
	v_perm_b32 v52, v56, v52, 0xc0c0004
	ds_load_u8 v146, v104 offset:17760
	ds_load_u8 v53, v104 offset:17984
	ds_load_u8 v54, v104 offset:17920
	ds_load_u8 v55, v104 offset:18112
	ds_load_u8 v56, v104 offset:18048
	v_lshl_or_b32 v50, v50, 16, v49
	v_lshl_or_b32 v49, v52, 16, v51
	v_wmma_i32_16x16x16_iu4 v[17:24], v[138:139], v[142:143], v[17:24] neg_lo:[1,1,0]
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v48, v145, v144, 0xc0c0004
	ds_load_u8 v138, v104 offset:18272
	ds_load_u8 v139, v104 offset:18208
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[49:50], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v60, v62, v61, 0xc0c0004
	ds_load_u8 v61, v104 offset:18016
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v62, v137, v136, 0xc0c0004
	ds_load_u8 v136, v104 offset:17952
	ds_load_u8 v147, v104 offset:17696
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v48, v48, 16, v47
	ds_load_u8 v140, v104 offset:18400
	ds_load_u8 v141, v104 offset:18688
	ds_load_u8 v143, v104 offset:18816
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v56, v55, 0xc0c0004
	ds_load_u8 v137, v104 offset:18752
	ds_load_u8 v142, v104 offset:18880
	ds_load_u8 v145, v104 offset:20352
	ds_load_u8 v148, v104 offset:20160
	ds_load_u8 v149, v104 offset:20096
	v_lshl_or_b32 v47, v54, 16, v53
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v55, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:18432
	ds_load_u8 v59, v104 offset:18336
	ds_load_u8 v150, v104 offset:19808
	ds_load_u8 v151, v104 offset:19744
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v51, v147, v146, 0xc0c0004
	ds_load_u8 v147, v104 offset:19968
	ds_load_u8 v146, v104 offset:20032
	v_lshl_or_b32 v52, v52, 16, v51
	v_lshl_or_b32 v51, v62, 16, v60
	ds_load_u8 v60, v104 offset:18144
	ds_load_u8 v62, v104 offset:18080
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[51:52], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[51:52], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v129 offset1:16
	ds_load_2addr_stride64_b64 v[49:52], v130 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v59, v140, 0xc0c0004
	v_perm_b32 v59, v136, v61, 0xc0c0004
	ds_load_u8 v136, v104 offset:18560
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v62, v60, 0xc0c0004
	v_lshl_or_b32 v60, v56, 16, v55
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[53:56], v131 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v47, v104 offset:18784
	ds_load_u8 v48, v104 offset:18720
	v_lshl_or_b32 v59, v62, 16, v59
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[59:60], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[59:60], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v43, v104 offset:18912
	ds_load_u8 v44, v104 offset:18848
	ds_load_u8 v59, v104 offset:18528
	ds_load_u8 v60, v104 offset:18464
	ds_load_u8 v62, v104 offset:18656
	ds_load_u8 v140, v104 offset:18592
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v48, v104 offset:19136
	ds_load_u8 v138, v104 offset:18496
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v60, v59, 0xc0c0004
	ds_load_u8 v60, v104 offset:19776
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v62, v140, v62, 0xc0c0004
	ds_load_u8 v140, v104 offset:19712
	v_lshl_or_b32 v44, v43, 16, v47
	v_lshl_or_b32 v43, v62, 16, v59
	ds_load_u8 v59, v104 offset:19904
	ds_load_u8 v62, v104 offset:19840
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[43:44], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[43:44], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	ds_load_u8 v139, v104 offset:19392
	ds_load_u8 v61, v104 offset:18624
	v_perm_b32 v41, v141, v137, 0xc0c0004
	v_perm_b32 v42, v143, v142, 0xc0c0004
	ds_load_u8 v137, v104 offset:19264
	ds_load_u8 v142, v104 offset:19072
	ds_load_u8 v47, v104 offset:19296
	ds_load_u8 v143, v104 offset:19232
	v_lshl_or_b32 v42, v42, 16, v41
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v61, v136, v61, 0xc0c0004
	ds_load_u8 v136, v104 offset:19328
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v48, v142, v48, 0xc0c0004
	v_lshl_or_b32 v41, v61, 16, v138
	ds_load_u8 v61, v104 offset:19008
	ds_load_u8 v138, v104 offset:18944
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v143, v47, 0xc0c0004
	ds_load_u8 v143, v104 offset:20416
	ds_load_u8 v142, v104 offset:19584
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[41:42], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v104 offset:19424
	ds_load_u8 v44, v104 offset:19360
	ds_load_u8 v49, v104 offset:19040
	ds_load_u8 v50, v104 offset:18976
	ds_load_u8 v51, v104 offset:19168
	ds_load_u8 v52, v104 offset:19104
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v138, v61, 0xc0c0004
	ds_load_u8 v138, v104 offset:19648
	ds_load_u8 v141, v104 offset:19200
	v_perm_b32 v42, v136, v139, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v139, v104 offset:19456
	v_lshl_or_b32 v44, v43, 16, v47
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v41, v141, v137, 0xc0c0004
	ds_load_u8 v141, v104 offset:19520
	ds_load_u8 v152, v104 offset:19936
	ds_load_u8 v153, v104 offset:19872
	ds_load_u8 v154, v104 offset:19552
	ds_load_u8 v155, v104 offset:19488
	ds_load_u8 v156, v104 offset:19680
	ds_load_u8 v157, v104 offset:19616
	ds_load_u8 v158, v104 offset:20320
	ds_load_u8 v159, v104 offset:20256
	ds_load_u8 v160, v104 offset:20448
	ds_load_u8 v161, v104 offset:20384
	ds_load_u8 v162, v104 offset:20064
	ds_load_u8 v163, v104 offset:20000
	ds_load_u8 v136, v104 offset:20192
	ds_load_u8 v137, v104 offset:20128
	v_lshl_or_b32 v42, v42, 16, v41
	v_lshl_or_b32 v41, v48, 16, v61
	v_perm_b32 v48, v50, v49, 0xc0c0004
	v_perm_b32 v49, v52, v51, 0xc0c0004
	ds_load_u8 v61, v104 offset:20288
	ds_load_u8 v144, v104 offset:20224
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[41:42], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v43, v49, 16, v48
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[43:44], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[43:44], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_clause 0x1
	buffer_load_b128 v[41:44], v45, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v46, s[36:39], 0 offen
	ds_load_2addr_stride64_b64 v[53:56], v132 offset1:16
	ds_load_2addr_stride64_b64 v[49:52], v133 offset1:16
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b64 v117, v[57:58] offset:16384
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v57, v140, v60, 0xc0c0004
	v_perm_b32 v58, v62, v59, 0xc0c0004
	v_perm_b32 v59, v139, v141, 0xc0c0004
	v_perm_b32 v60, v142, v138, 0xc0c0004
	v_perm_b32 v62, v149, v148, 0xc0c0004
	v_perm_b32 v138, v155, v154, 0xc0c0004
	v_lshl_or_b32 v58, v58, 16, v57
	v_perm_b32 v139, v157, v156, 0xc0c0004
	v_lshl_or_b32 v57, v60, 16, v59
	v_perm_b32 v59, v144, v61, 0xc0c0004
	v_perm_b32 v60, v145, v143, 0xc0c0004
	v_perm_b32 v61, v147, v146, 0xc0c0004
	v_perm_b32 v140, v163, v162, 0xc0c0004
	v_perm_b32 v136, v137, v136, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_add_nc_u32_e32 v141, v107, v108
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v60, v60, 16, v59
	v_lshl_or_b32 v59, v62, 16, v61
	v_perm_b32 v61, v151, v150, 0xc0c0004
	v_perm_b32 v62, v153, v152, 0xc0c0004
	v_lshl_or_b32 v136, v136, 16, v140
	v_wmma_i32_16x16x16_iu4 v[25:32], v[53:54], v[57:58], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[55:56], v[57:58], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v62, v62, 16, v61
	v_lshl_or_b32 v61, v139, 16, v138
	v_perm_b32 v138, v159, v158, 0xc0c0004
	v_perm_b32 v139, v161, v160, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[59:60], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[59:60], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[53:54], v[61:62], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[55:56], v[61:62], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v137, v139, 16, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[136:137], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[136:137], v[17:24] neg_lo:[1,1,0]
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	s_waitcnt vmcnt(0)
	v_perm_b32 v49, v45, v41, 0x5010400
	v_perm_b32 v45, v45, v41, 0x7030602
	v_perm_b32 v50, v46, v42, 0x5010400
	v_perm_b32 v46, v46, v42, 0x7030602
	v_perm_b32 v51, v47, v43, 0x5010400
	v_perm_b32 v47, v47, v43, 0x7030602
	v_perm_b32 v52, v48, v44, 0x5010400
	v_perm_b32 v53, v48, v44, 0x7030602
	v_lshrrev_b32_e32 v48, 8, v49
	v_lshrrev_b32_e32 v55, 24, v45
	v_and_b16 v41.l, 0xff, v49.l
	v_lshrrev_b32_e32 v54, 24, v49
	v_and_b16 v41.h, 0xff, v49.h
	v_lshrrev_b32_e32 v49, 8, v45
	v_and_b16 v42.h, 0xff, v45.h
	v_and_b16 v43.l, 0xff, v50.l
	v_lshrrev_b32_e32 v56, 8, v50
	v_lshrrev_b32_e32 v57, 24, v50
	v_and_b16 v43.h, 0xff, v50.h
	v_lshrrev_b32_e32 v50, 8, v46
	v_lshrrev_b32_e32 v58, 24, v46
	v_and_b16 v44.h, 0xff, v46.h
	v_lshrrev_b32_e32 v61, 8, v47
	v_lshrrev_b32_e32 v62, 24, v47
	v_and_b16 v46.h, 0xff, v47.h
	v_lshlrev_b16 v47.h, 8, v48.l
	v_lshlrev_b16 v48.h, 8, v55.l
	v_and_b16 v42.l, 0xff, v45.l
	v_lshrrev_b32_e32 v59, 8, v51
	v_lshrrev_b32_e32 v60, 24, v51
	v_or_b16 v41.l, v41.l, v47.h
	v_lshrrev_b32_e32 v136, 8, v52
	v_lshlrev_b16 v47.h, 8, v54.l
	v_lshrrev_b32_e32 v54, 24, v52
	v_lshlrev_b16 v48.l, 8, v49.l
	v_or_b16 v42.h, v42.h, v48.h
	v_lshrrev_b32_e32 v55, 8, v53
	v_lshlrev_b16 v48.h, 8, v56.l
	v_lshrrev_b32_e32 v56, 24, v53
	v_and_b16 v44.l, 0xff, v46.l
	v_and_b16 v45.l, 0xff, v51.l
	v_and_b16 v45.h, 0xff, v51.h
	v_and_b16 v46.l, 0xff, v47.l
	v_and_b16 v47.l, 0xff, v52.l
	v_or_b16 v41.h, v41.h, v47.h
	v_and_b16 v47.h, 0xff, v52.h
	v_or_b16 v42.l, v42.l, v48.l
	v_and_b16 v48.l, 0xff, v53.l
	v_or_b16 v43.l, v43.l, v48.h
	v_and_b16 v48.h, 0xff, v53.h
	v_lshlrev_b16 v49.l, 8, v57.l
	v_lshlrev_b16 v49.h, 8, v50.l
	v_lshlrev_b16 v50.l, 8, v58.l
	v_lshlrev_b16 v50.h, 8, v59.l
	v_lshlrev_b16 v51.l, 8, v60.l
	v_lshlrev_b16 v51.h, 8, v61.l
	v_lshlrev_b16 v52.l, 8, v62.l
	v_lshlrev_b16 v52.h, 8, v136.l
	v_lshlrev_b16 v53.l, 8, v54.l
	v_lshlrev_b16 v53.h, 8, v55.l
	v_lshlrev_b16 v54.l, 8, v56.l
	v_or_b16 v43.h, v43.h, v49.l
	v_or_b16 v44.l, v44.l, v49.h
	v_or_b16 v44.h, v44.h, v50.l
	v_or_b16 v45.l, v45.l, v50.h
	v_or_b16 v45.h, v45.h, v51.l
	v_or_b16 v46.l, v46.l, v51.h
	v_or_b16 v46.h, v46.h, v52.l
	v_or_b16 v47.l, v47.l, v52.h
	v_or_b16 v47.h, v47.h, v53.l
	v_or_b16 v48.l, v48.l, v53.h
	v_or_b16 v48.h, v48.h, v54.l
	ds_store_b16 v118, v41
	ds_store_b16_d16_hi v118, v41 offset:64
	ds_store_b16 v119, v42
	ds_store_b16_d16_hi v119, v42 offset:64
	ds_store_b16 v120, v43
	ds_store_b16_d16_hi v120, v43 offset:64
	ds_store_b16 v121, v44
	ds_store_b16_d16_hi v121, v44 offset:64
	ds_store_b16 v122, v45
	ds_store_b16_d16_hi v122, v45 offset:64
	ds_store_b16 v123, v46
	ds_store_b16_d16_hi v123, v46 offset:64
	ds_store_b16 v124, v47
	ds_store_b16_d16_hi v124, v47 offset:64
	ds_store_b16 v125, v48
	ds_store_b16_d16_hi v125, v48 offset:64
	.loc	1 214 26                        ; generate_amdgcn.py:214:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v49, v104 offset:16704
	ds_load_u8 v50, v104 offset:16640
	ds_load_u8 v53, v104 offset:16832
	ds_load_u8 v54, v104 offset:16768
	ds_load_u8 v55, v104 offset:16448
	ds_load_u8 v56, v104 offset:16384
	ds_load_u8 v57, v104 offset:16576
	ds_load_u8 v58, v104 offset:16512
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v126 offset1:16
	ds_load_2addr_stride64_b64 v[45:48], v127 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v59, v104 offset:16416
	ds_load_u8 v60, v104 offset:16736
	ds_load_u8 v61, v104 offset:16672
	ds_load_u8 v62, v104 offset:16864
	ds_load_u8 v136, v104 offset:16800
	ds_load_u8 v137, v104 offset:16480
	ds_load_u8 v138, v104 offset:16608
	ds_load_u8 v139, v104 offset:16544
	ds_load_u8 v142, v104 offset:17216
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v140, v50, v49, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[49:52], v128 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v58, v57, 0xc0c0004
	v_lshl_or_b32 v54, v53, 16, v140
	ds_load_u8 v57, v104 offset:17344
	ds_load_u8 v58, v104 offset:17280
	ds_load_u8 v140, v104 offset:16960
	v_lshl_or_b32 v53, v56, 16, v55
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v55, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v56, v136, v62, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v59, v59, v137, 0xc0c0004
	ds_load_u8 v60, v104 offset:16896
	ds_load_u8 v61, v104 offset:17088
	ds_load_u8 v62, v104 offset:17024
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v136, v139, v138, 0xc0c0004
	v_lshl_or_b32 v56, v56, 16, v55
	ds_load_u8 v138, v104 offset:17312
	ds_load_u8 v139, v104 offset:16992
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[53:54], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v55, v136, 16, v59
	ds_load_u8 v59, v104 offset:17184
	ds_load_u8 v136, v104 offset:17376
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[55:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[55:56], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v55, v104 offset:16928
	ds_load_u8 v56, v104 offset:17120
	ds_load_u8 v144, v104 offset:17056
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v129 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v104 offset:17856
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v136, v138, v136, 0xc0c0004
	ds_load_u8 v138, v104 offset:17600
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v55, v55, v139, 0xc0c0004
	ds_load_u8 v139, v104 offset:17536
	ds_load_u8 v137, v104 offset:17248
	ds_load_u8 v143, v104 offset:17152
	v_perm_b32 v54, v58, v57, 0xc0c0004
	v_perm_b32 v58, v60, v140, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v140, v144, v56, 0xc0c0004
	ds_load_u8 v57, v104 offset:17728
	v_lshl_or_b32 v55, v140, 16, v55
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v59, v59, v137, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v53, v143, v142, 0xc0c0004
	ds_load_u8 v137, v104 offset:17408
	ds_load_u8 v142, v104 offset:18240
	v_lshl_or_b32 v56, v136, 16, v59
	v_lshl_or_b32 v54, v54, 16, v53
	v_lshl_or_b32 v53, v61, 16, v58
	ds_load_u8 v58, v104 offset:17792
	ds_load_u8 v61, v104 offset:17472
	ds_load_u8 v59, v104 offset:18176
	ds_load_u8 v136, v104 offset:18368
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[55:56], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[47:48], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[45:46], v[53:54], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[47:48], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v53, v104 offset:17760
	ds_load_u8 v54, v104 offset:17696
	ds_load_u8 v47, v104 offset:17888
	ds_load_u8 v48, v104 offset:17824
	ds_load_u8 v55, v104 offset:17504
	ds_load_u8 v56, v104 offset:17440
	ds_load_u8 v140, v104 offset:17632
	ds_load_u8 v143, v104 offset:17568
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v55, v56, v55, 0xc0c0004
	v_perm_b32 v53, v54, v53, 0xc0c0004
	ds_load_u8 v54, v104 offset:18688
	ds_load_u8 v56, v104 offset:18816
	ds_load_u8 v60, v104 offset:17664
	v_perm_b32 v46, v58, v62, 0xc0c0004
	v_perm_b32 v62, v139, v138, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v139, v143, v140, 0xc0c0004
	v_lshl_or_b32 v48, v47, 16, v53
	ds_load_u8 v138, v104 offset:18880
	ds_load_u8 v58, v104 offset:17984
	v_lshl_or_b32 v47, v139, 16, v55
	ds_load_u8 v139, v104 offset:18336
	ds_load_u8 v143, v104 offset:18016
	ds_load_u8 v53, v104 offset:18208
	ds_load_u8 v55, v104 offset:18400
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[51:52], v[47:48], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v45, v60, v57, 0xc0c0004
	v_perm_b32 v60, v137, v61, 0xc0c0004
	ds_load_u8 v57, v104 offset:18304
	ds_load_u8 v137, v104 offset:18112
	v_lshl_or_b32 v46, v46, 16, v45
	v_lshl_or_b32 v45, v62, 16, v60
	ds_load_u8 v60, v104 offset:18048
	ds_load_u8 v62, v104 offset:18752
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v56, v56, v138, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v139, v55, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[49:50], v[45:46], v[25:32] neg_lo:[1,1,0]
	ds_load_u8 v47, v104 offset:17952
	ds_load_u8 v48, v104 offset:18144
	ds_load_u8 v49, v104 offset:18080
	v_wmma_i32_16x16x16_iu4 v[9:16], v[51:52], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v45, v59, v142, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x5
	buffer_load_u16 v59, v141, s[8:11], 0 offen offset:12
	buffer_load_u16 v139, v141, s[8:11], 0 offen offset:276
	buffer_load_u16 v142, v141, s[8:11], 0 offen offset:284
	buffer_load_u16 v50, v141, s[8:11], 0 offen
	buffer_load_u16 v51, v141, s[8:11], 0 offen offset:4
	buffer_load_u16 v52, v141, s[8:11], 0 offen offset:8
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v54, v54, v62, 0xc0c0004
	ds_load_u8 v62, v104 offset:18528
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v47, v143, 0xc0c0004
	ds_load_u8 v143, v104 offset:18592
	ds_load_u8 v138, v104 offset:18464
	ds_load_u8 v140, v104 offset:18272
	ds_load_u8 v61, v104 offset:17920
	v_perm_b32 v46, v57, v136, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v57, v141, s[8:11], 0 offen offset:16
	buffer_load_u16 v136, v141, s[8:11], 0 offen offset:24
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_perm_b32 v60, v60, v137, 0xc0c0004
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v49, v49, v48, 0xc0c0004
	v_lshl_or_b32 v46, v46, 16, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	buffer_load_u16 v137, v141, s[8:11], 0 offen offset:260
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v47, v49, 16, v47
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v53, v53, v140, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v61, v58, 0xc0c0004
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x1
	buffer_load_u16 v61, v141, s[8:11], 0 offen offset:20
	buffer_load_u16 v140, v141, s[8:11], 0 offen offset:280
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v48, v55, 16, v53
	v_lshl_or_b32 v45, v60, 16, v58
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_clause 0x4
	buffer_load_u16 v58, v141, s[8:11], 0 offen offset:28
	buffer_load_u16 v60, v141, s[8:11], 0 offen offset:256
	buffer_load_u16 v49, v141, s[8:11], 0 offen offset:264
	buffer_load_u16 v53, v141, s[8:11], 0 offen offset:272
	buffer_load_u16 v55, v141, s[8:11], 0 offen offset:268
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	ds_load_u8 v141, v104 offset:18656
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v104 offset:18496
	ds_load_u8 v46, v104 offset:18432
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[47:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v104 offset:18624
	ds_load_u8 v42, v104 offset:18560
	ds_load_u8 v43, v104 offset:18784
	ds_load_u8 v44, v104 offset:18720
	ds_load_u8 v47, v104 offset:18912
	ds_load_u8 v48, v104 offset:18848
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	v_perm_b32 v45, v46, v45, 0xc0c0004
	v_lshl_or_b32 v46, v56, 16, v54
	v_perm_b32 v54, v138, v62, 0xc0c0004
	ds_load_u8 v56, v104 offset:19264
	ds_load_u8 v138, v104 offset:19200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v44, v43, 0xc0c0004
	v_lshl_or_b32 v45, v41, 16, v45
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v130 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v47, 16, v144
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v56, v138, v56, 0xc0c0004
	ds_load_u8 v138, v104 offset:19040
	v_perm_b32 v62, v143, v141, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v104 offset:19008
	ds_load_u8 v46, v104 offset:18944
	ds_load_u8 v141, v104 offset:19168
	v_lshl_or_b32 v47, v62, 16, v54
	ds_load_u8 v54, v104 offset:19392
	ds_load_u8 v62, v104 offset:19328
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[47:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v104 offset:19136
	ds_load_u8 v42, v104 offset:19072
	ds_load_u8 v43, v104 offset:19296
	ds_load_u8 v44, v104 offset:19232
	ds_load_u8 v47, v104 offset:19424
	ds_load_u8 v48, v104 offset:19360
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v104 offset:18976
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v144, v44, v43, 0xc0c0004
	v_lshl_or_b32 v46, v54, 16, v56
	ds_load_u8 v56, v104 offset:19776
	ds_load_u8 v143, v104 offset:19104
	v_lshl_or_b32 v45, v41, 16, v45
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v131 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v48, v47, 16, v144
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v54, v62, v138, 0xc0c0004
	ds_load_u8 v138, v104 offset:19712
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v62, v143, v141, 0xc0c0004
	ds_load_u8 v141, v104 offset:19680
	ds_load_u8 v143, v104 offset:19616
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[45:46], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v47, v62, 16, v54
	ds_load_u8 v54, v104 offset:19904
	ds_load_u8 v62, v104 offset:19840
	ds_load_u8 v45, v104 offset:19520
	ds_load_u8 v46, v104 offset:19456
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[47:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v104 offset:19648
	ds_load_u8 v42, v104 offset:19584
	ds_load_u8 v43, v104 offset:19808
	ds_load_u8 v44, v104 offset:19744
	ds_load_u8 v47, v104 offset:19936
	ds_load_u8 v48, v104 offset:19872
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v56, v138, v56, 0xc0c0004
	ds_load_u8 v138, v104 offset:19552
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	ds_load_u8 v62, v104 offset:19488
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v144, v44, v43, 0xc0c0004
	v_lshl_or_b32 v46, v54, 16, v56
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	ds_load_u8 v56, v104 offset:20288
	v_lshl_or_b32 v45, v41, 16, v45
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v132 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	v_lshl_or_b32 v48, v47, 16, v144
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v54, v62, v138, 0xc0c0004
	v_perm_b32 v62, v143, v141, 0xc0c0004
	ds_load_u8 v138, v104 offset:20224
	v_lshl_or_b32 v47, v62, 16, v54
	ds_load_u8 v54, v104 offset:20416
	ds_load_u8 v62, v104 offset:20352
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[45:46], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v104 offset:20032
	ds_load_u8 v46, v104 offset:19968
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[47:48], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[47:48], v[17:24] neg_lo:[1,1,0]
	ds_load_u8 v41, v104 offset:20160
	ds_load_u8 v42, v104 offset:20096
	ds_load_u8 v43, v104 offset:20320
	ds_load_u8 v44, v104 offset:20256
	ds_load_u8 v47, v104 offset:20448
	ds_load_u8 v48, v104 offset:20384
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v54, v62, v54, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v143, v42, v41, 0xc0c0004
	v_perm_b32 v141, v46, v45, 0xc0c0004
	ds_load_u8 v45, v104 offset:20192
	ds_load_u8 v41, v104 offset:20128
	ds_load_u8 v62, v104 offset:20000
	v_perm_b32 v56, v138, v56, 0xc0c0004
	ds_load_u8 v138, v104 offset:20064
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v47, 16, v46
	v_lshl_or_b32 v47, v143, 16, v141
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v45, v41, v45, 0xc0c0004
	.loc	1 220 26                        ; generate_amdgcn.py:220:26
	ds_load_2addr_stride64_b64 v[41:44], v133 offset1:16
	.loc	1 221 27                        ; generate_amdgcn.py:221:27
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v48, v62, v138, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v45, v45, 16, v48
	v_lshl_or_b32 v48, v54, 16, v56
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[43:44], v[45:46], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[41:42], v[47:48], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[47:48], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[45:46], v[33:40] neg_lo:[1,1,0]
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	v_cvt_f32_i32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
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
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_mul_f32_e32 v21, v135, v21
	v_mul_f32_e32 v31, v134, v31
	v_dual_mul_f32 v29, v134, v29 :: v_dual_add_nc_u32 v116, s44, v116
	v_mul_f32_e32 v27, v134, v27
	v_mul_f32_e32 v28, v134, v28
	v_dual_mul_f32 v39, v135, v39 :: v_dual_add_nc_u32 v108, s43, v108
	v_dual_mul_f32 v40, v135, v40 :: v_dual_add_nc_u32 v109, 2, v109
	v_dual_mul_f32 v37, v135, v37 :: v_dual_add_nc_u32 v110, 2, v110
	v_dual_mul_f32 v35, v135, v35 :: v_dual_add_nc_u32 v112, s34, v112
	v_dual_mul_f32 v38, v135, v38 :: v_dual_add_nc_u32 v113, s34, v113
	v_dual_mul_f32 v33, v135, v33 :: v_dual_add_nc_u32 v114, s34, v114
	v_dual_mul_f32 v36, v135, v36 :: v_dual_add_nc_u32 v115, s34, v115
	v_dual_mul_f32 v34, v135, v34 :: v_dual_add_nc_u32 v111, s44, v111
	v_mul_f32_e32 v17, v135, v17
	v_mul_f32_e32 v22, v135, v22
	v_mul_f32_e32 v23, v135, v23
	v_mul_f32_e32 v24, v135, v24
	v_mul_f32_e32 v26, v134, v26
	v_dual_mul_f32 v25, v134, v25 :: v_dual_mul_f32 v20, v135, v20
	v_dual_mul_f32 v16, v134, v16 :: v_dual_mul_f32 v19, v135, v19
	v_dual_mul_f32 v15, v134, v15 :: v_dual_mul_f32 v18, v135, v18
	v_mul_f32_e32 v14, v134, v14
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v44, 16, v57
	.loc	1 233 20                        ; generate_amdgcn.py:233:20
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v9, v134, v9 :: v_dual_lshlrev_b32 v42, 16, v136
	v_mul_f32_e32 v32, v134, v32
	v_dual_mul_f32 v30, v134, v30 :: v_dual_lshlrev_b32 v45, 16, v59
	v_dual_mul_f32 v13, v134, v13 :: v_dual_lshlrev_b32 v48, 16, v50
	v_dual_mul_f32 v12, v134, v12 :: v_dual_lshlrev_b32 v47, 16, v51
	v_dual_mul_f32 v11, v134, v11 :: v_dual_lshlrev_b32 v50, 16, v142
	v_mul_f32_e32 v10, v134, v10
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	v_lshlrev_b32_e32 v46, 16, v52
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v99, v25, v48 :: v_dual_lshlrev_b32 v52, 16, v139
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v95, v29, v44 :: v_dual_lshlrev_b32 v56, 16, v137
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v98, v26, v47 :: v_dual_lshlrev_b32 v43, 16, v61
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v51, 16, v140
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v97, v27, v46 :: v_dual_fmac_f32 v96, v28, v45
	.loc	1 232 18                        ; generate_amdgcn.py:232:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v41, 16, v58
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v54, 16, v60
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v55, 16, v55
	.loc	1 233 13                        ; generate_amdgcn.py:233:13
	v_dual_fmac_f32 v90, v10, v56 :: v_dual_lshlrev_b32 v49, 16, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v94, v30, v43 :: v_dual_fmac_f32 v87, v13, v53
	v_dual_fmac_f32 v88, v12, v55 :: v_dual_fmac_f32 v89, v11, v49
	v_dual_fmac_f32 v93, v31, v42 :: v_dual_fmac_f32 v92, v32, v41
	v_dual_fmac_f32 v91, v9, v54 :: v_dual_fmac_f32 v86, v14, v52
	v_dual_fmac_f32 v85, v15, v51 :: v_dual_fmac_f32 v84, v16, v50
	v_dual_fmac_f32 v83, v33, v48 :: v_dual_fmac_f32 v82, v34, v47
	v_dual_fmac_f32 v81, v35, v46 :: v_dual_fmac_f32 v80, v36, v45
	v_dual_fmac_f32 v79, v37, v44 :: v_dual_fmac_f32 v78, v38, v43
	v_dual_fmac_f32 v77, v39, v42 :: v_dual_fmac_f32 v76, v18, v56
	v_dual_fmac_f32 v75, v40, v41 :: v_dual_fmac_f32 v70, v22, v52
	v_dual_fmac_f32 v73, v17, v54 :: v_dual_fmac_f32 v74, v19, v49
	v_dual_fmac_f32 v72, v20, v55 :: v_dual_fmac_f32 v71, v21, v53
	v_dual_fmac_f32 v69, v23, v51 :: v_dual_fmac_f32 v68, v24, v50
	.loc	1 188 9                         ; generate_amdgcn.py:188:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v3, v102
	v_mov_b32_e32 v1, v103
.LBB0_7:                                ; %._crit_edge
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v2, |v98|, |v98|
	v_max_f32_e64 v4, |v99|, |v99|
	v_max_f32_e64 v6, |v82|, |v82|
	v_max_f32_e64 v7, |v83|, |v83|
	v_max3_f32 v5, |v96|, |v95|, |v94|
	v_max3_f32 v8, |v90|, |v89|, |v88|
	v_max_f32_e32 v2, v4, v2
	v_max3_f32 v9, |v87|, |v86|, |v85|
	v_max_f32_e32 v6, v7, v6
	v_max3_f32 v7, |v80|, |v79|, |v78|
	v_max3_f32 v10, |v76|, |v74|, |v72|
	v_max3_f32 v11, |v71|, |v70|, |v69|
	v_max3_f32 v4, |v93|, |v92|, |v91|
	v_max3_f32 v2, v2, |v97|, v5
	v_max3_f32 v5, v8, v9, |v84|
	v_max3_f32 v8, |v77|, |v75|, |v73|
	v_max3_f32 v6, v6, |v81|, v7
	v_max3_f32 v7, v10, v11, |v68|
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v2, v2, v4, v5
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v4, 1, v0
	v_lshl_add_u32 v11, v101, 8, 0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, v6, v8, v7
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v6, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v9, 0xf0, v4
	s_barrier
	v_permlanex16_b32 v7, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v6, v6
	v_max_f32_e32 v6, v7, v7
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v8, 4, v101
	v_and_b32_e32 v7, 8, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v2, v4 :: v_dual_max_f32 v5, v5, v6
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v10, v100, 3, v8
	v_xor_b32_e32 v8, v8, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v2, v10, v9
	v_add3_u32 v6, v11, v8, v7
	v_lshrrev_b32_e32 v8, 1, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, 0, v7, v2
	ds_store_b64 v6, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_add_u32 v7, v7, 3, 0
	ds_load_b64 v[4:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v7, v7, v3, v8
	v_mov_b32_e32 v2, v4
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v4, v2
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v5
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v6, v6, v6
	v_dual_max_f32 v4, v5, v6 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v5, v2, v5 :: v_dual_max_f32 v4, v4, v6
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v2, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v9, v2, v2 :: v_dual_lshlrev_b32 v2, 3, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v3, v5, v9
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v5, 0, v2, v8
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v6
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	ds_store_b64 v7, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[3:4], v5
.Ltmp47:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, 0x2b8cbccc, v3 :: v_dual_max_f32 v4, 0x2b8cbccc, v4
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v11, vcc_lo, v3, 0x40e00000, v3
	v_rcp_f32_e32 v7, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v8, v6
	v_fma_f32 v9, -v5, v7, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v10, -v6, v8, 1.0
	v_fmac_f32_e32 v7, v9, v7
	v_div_scale_f32 v9, s0, v4, 0x40e00000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v8, v10, v8
	v_mul_f32_e32 v10, v11, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v12, v9, v8
	v_fma_f32 v13, -v5, v10, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v14, -v6, v12, v9
	v_fmac_f32_e32 v10, v13, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v12, v14, v8
	v_fma_f32 v5, -v5, v10, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v6, -v6, v12, v9
	v_div_fmas_f32 v5, v5, v7, v10
	s_mov_b32 vcc_lo, s0
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v7.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v6, v6, v8, v12
	v_div_fixup_f32 v3, v5, 0x40e00000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v5, v6, 0x40e00000, v4
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v4.h, v7.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v4.l, v3.h
	v_mov_b16_e32 v7.l, v5.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v4, 1, v4
	v_and_b32_e32 v6, 1, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v4, v3, v4, 0x7fff
	v_add3_u32 v3, v5, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 0xffff0000, v4
	v_and_b32_e32 v5, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v27, null, v6, v6, v89
	v_div_scale_f32 v28, s9, v89, v6, v89
	v_rcp_f32_e32 v43, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v57, -v27, v43, 1.0
	v_fmac_f32_e32 v43, v57, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v57, v28, v43
	v_fma_f32 v107, -v27, v57, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v107, v43
	v_div_scale_f32 v7, null, v6, v6, v99
	v_div_scale_f32 v9, null, v6, v6, v98
	v_div_scale_f32 v11, null, v6, v6, v97
	v_div_scale_f32 v17, null, v6, v6, v94
	v_rcp_f32_e32 v33, v7
	v_div_scale_f32 v31, null, v6, v6, v87
	v_rcp_f32_e32 v34, v9
	v_rcp_f32_e32 v35, v11
	v_rcp_f32_e32 v38, v17
	v_div_scale_f32 v15, null, v6, v6, v95
	v_div_scale_f32 v25, null, v6, v6, v90
	v_rcp_f32_e32 v45, v31
	v_fma_f32 v47, -v7, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v37, v15
	v_rcp_f32_e32 v42, v25
	v_fma_f32 v48, -v9, v34, 1.0
	v_fma_f32 v49, -v11, v35, 1.0
	v_fma_f32 v52, -v17, v38, 1.0
	v_div_scale_f32 v8, vcc_lo, v99, v6, v99
	v_fmac_f32_e32 v33, v47, v33
	v_div_scale_f32 v10, s0, v98, v6, v98
	v_div_scale_f32 v12, s1, v97, v6, v97
	v_div_scale_f32 v18, s4, v94, v6, v94
	v_fma_f32 v59, -v31, v45, 1.0
	v_dual_fmac_f32 v34, v48, v34 :: v_dual_fmac_f32 v35, v49, v35
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v47, v8, v33
	v_div_scale_f32 v32, null, v6, v6, v86
	v_fma_f32 v51, -v15, v37, 1.0
	v_fma_f32 v56, -v25, v42, 1.0
	v_dual_mul_f32 v49, v12, v35 :: v_dual_mul_f32 v52, v18, v38
	v_dual_fmac_f32 v45, v59, v45 :: v_dual_mul_f32 v48, v10, v34
	v_fma_f32 v60, -v7, v47, v8
	v_div_scale_f32 v13, null, v6, v6, v96
	v_div_scale_f32 v16, s3, v95, v6, v95
	v_div_scale_f32 v19, null, v6, v6, v93
	v_div_scale_f32 v26, s8, v90, v6, v90
	v_rcp_f32_e32 v46, v32
	v_dual_fmac_f32 v37, v51, v37 :: v_dual_fmac_f32 v42, v56, v42
	v_fma_f32 v61, -v9, v48, v10
	v_fma_f32 v62, -v11, v49, v12
	v_fma_f32 v102, -v17, v52, v18
	v_fmac_f32_e32 v47, v60, v33
	v_div_scale_f32 v23, null, v6, v6, v91
	v_rcp_f32_e32 v36, v13
	v_rcp_f32_e32 v39, v19
	v_dual_mul_f32 v51, v16, v37 :: v_dual_mul_f32 v56, v26, v42
	v_dual_fmac_f32 v48, v61, v34 :: v_dual_fmac_f32 v49, v62, v35
	v_fmac_f32_e32 v52, v102, v38
	v_fma_f32 v7, -v7, v47, v8
	v_rcp_f32_e32 v41, v23
	v_fma_f32 v101, -v15, v51, v16
	v_fma_f32 v106, -v25, v56, v26
	v_fma_f32 v8, -v9, v48, v10
	v_fma_f32 v9, -v11, v49, v12
	v_fma_f32 v12, -v17, v52, v18
	v_fma_f32 v18, -v32, v46, 1.0
	v_div_fmas_f32 v7, v7, v33, v47
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v50, -v13, v36, 1.0
	v_fma_f32 v53, -v19, v39, 1.0
	v_dual_fmac_f32 v51, v101, v37 :: v_dual_fmac_f32 v56, v106, v42
	v_div_fmas_f32 v8, v8, v34, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v46, v18, v46
	v_div_scale_f32 v18, s1, v86, v6, v86
	v_div_scale_f32 v14, s2, v96, v6, v96
	v_div_scale_f32 v20, s5, v93, v6, v93
	v_fma_f32 v55, -v23, v41, 1.0
	v_fmac_f32_e32 v39, v53, v39
	v_fma_f32 v11, -v15, v51, v16
	v_fma_f32 v16, -v25, v56, v26
	v_mul_f32_e32 v25, v18, v46
	v_fmac_f32_e32 v36, v50, v36
	v_div_scale_f32 v24, s7, v91, v6, v91
	v_fmac_f32_e32 v41, v55, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v53, v20, v39 :: v_dual_mul_f32 v50, v14, v36
	v_div_scale_f32 v21, null, v6, v6, v92
	v_mul_f32_e32 v55, v24, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v103, -v19, v53, v20
	v_fma_f32 v100, -v13, v50, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v21
	v_div_scale_f32 v17, s0, v87, v6, v87
	v_fma_f32 v105, -v23, v55, v24
	v_dual_fmac_f32 v50, v100, v36 :: v_dual_fmac_f32 v53, v103, v39
	v_div_scale_f32 v26, null, v6, v6, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v55, v105, v41
	v_fma_f32 v10, -v13, v50, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v13, -v19, v53, v20
	v_mul_f32_e32 v20, v17, v45
	v_fma_f32 v54, -v21, v40, 1.0
	v_fma_f32 v15, -v23, v55, v24
	v_div_scale_f32 v22, s6, v92, v6, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v31, v20, v17
	v_fma_f32 v19, -v27, v57, v28
	v_div_scale_f32 v29, null, v6, v6, v88
	v_div_scale_f32 v30, s10, v88, v6, v88
	v_fmac_f32_e32 v20, v23, v45
	v_rcp_f32_e32 v23, v26
	v_fmac_f32_e32 v40, v54, v40
	v_fma_f32 v27, -v32, v25, v18
	v_rcp_f32_e32 v44, v29
	v_div_fmas_f32 v9, v9, v35, v49
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v54, v22, v40 :: v_dual_fmac_f32 v25, v27, v46
	v_div_fmas_f32 v10, v10, v36, v50
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v17, -v31, v20, v17
	v_fma_f32 v104, -v21, v54, v22
	v_fma_f32 v18, -v32, v25, v18
	v_div_scale_f32 v32, null, v5, v5, v82
	v_fma_f32 v58, -v29, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v104, v40
	v_div_fmas_f32 v11, v11, v37, v51
	v_rcp_f32_e32 v33, v32
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v27, s2, v85, v6, v85
	v_fma_f32 v14, -v21, v54, v22
	v_div_scale_f32 v21, null, v6, v6, v85
	v_div_fmas_f32 v12, v12, v38, v52
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v36, null, v5, v5, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v24, v21
	v_fma_f32 v35, -v32, v33, 1.0
	v_fmac_f32_e32 v44, v58, v44
	v_div_fmas_f32 v13, v13, v39, v53
	v_div_scale_f32 v39, null, v5, v5, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v33, v35, v33 :: v_dual_mul_f32 v58, v30, v44
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v38, v36
	v_fma_f32 v28, -v21, v24, 1.0
	v_div_fixup_f32 v7, v7, v6, v99
	v_fma_f32 v108, -v29, v58, v30
	v_div_fixup_f32 v8, v8, v6, v98
	v_div_fixup_f32 v9, v9, v6, v97
	v_fmac_f32_e32 v24, v28, v24
	v_fma_f32 v28, -v26, v23, 1.0
	v_fmac_f32_e32 v58, v108, v44
	v_div_fixup_f32 v10, v10, v6, v96
	v_div_fixup_f32 v11, v11, v6, v95
	v_div_fixup_f32 v12, v12, v6, v94
	v_fmac_f32_e32 v23, v28, v23
	v_div_fmas_f32 v14, v14, v40, v54
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v22, -v29, v58, v30
	v_div_fmas_f32 v15, v15, v41, v55
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v28, null, v5, v5, v83
	v_div_fmas_f32 v16, v16, v42, v56
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v13, v13, v6, v93
	v_div_fmas_f32 v19, v19, v43, v57
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v14, v14, v6, v92
	v_div_fmas_f32 v22, v22, v44, v58
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v43, -v39, v41, 1.0
	v_div_fmas_f32 v17, v17, v45, v20
	v_mul_f32_e32 v20, v27, v24
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v29, s0, v84, v6, v84
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v18, v18, v46, v25
	v_rcp_f32_e32 v25, v28
	v_fma_f32 v30, -v21, v20, v27
	v_mul_f32_e32 v31, v29, v23
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v15, v15, v6, v91
	v_div_fixup_f32 v16, v16, v6, v90
	v_fmac_f32_e32 v20, v30, v24
	v_fma_f32 v30, -v26, v31, v29
	v_div_fixup_f32 v19, v19, v6, v89
	v_div_fixup_f32 v22, v22, v6, v88
	v_fma_f32 v34, -v28, v25, 1.0
	v_fma_f32 v21, -v21, v20, v27
	v_div_scale_f32 v27, null, v5, v5, v81
	v_fmac_f32_e32 v31, v30, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v25, v34, v25
	v_div_scale_f32 v30, s1, v83, v5, v83
	v_rcp_f32_e32 v34, v27
	v_div_fmas_f32 v20, v21, v24, v20
	v_fma_f32 v21, -v26, v31, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v24, v30, v25
	v_div_scale_f32 v26, s2, v82, v5, v82
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v17, v17, v6, v87
	v_fma_f32 v35, -v28, v24, v30
	v_mul_f32_e32 v37, v26, v33
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v27, v34, 1.0
	v_div_fmas_f32 v21, v21, v23, v31
	v_div_fixup_f32 v18, v18, v6, v86
	v_fmac_f32_e32 v24, v35, v25
	v_fma_f32 v23, -v32, v37, v26
	v_fmac_f32_e32 v34, v29, v34
	v_div_scale_f32 v29, s3, v81, v5, v81
	v_div_fixup_f32 v20, v20, v6, v85
	v_div_fixup_f32 v6, v21, v6, v84
	v_fma_f32 v21, -v28, v24, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v31, v29, v34
	v_fmac_f32_e32 v37, v23, v33
	v_div_scale_f32 v30, null, v5, v5, v79
	v_fma_f32 v28, -v36, v38, 1.0
	v_fma_f32 v23, -v27, v31, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v21, v21, v25, v24
	v_fmac_f32_e32 v38, v28, v38
	v_fmac_f32_e32 v31, v23, v34
	v_rcp_f32_e32 v23, v30
	v_div_scale_f32 v25, s0, v80, v5, v80
	v_fma_f32 v24, -v32, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v26, -v27, v31, v29
	v_div_scale_f32 v28, null, v5, v5, v78
	v_mul_f32_e32 v27, v25, v38
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v21, v21, v5, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v29, -v30, v23, 1.0
	v_div_fmas_f32 v24, v24, v33, v37
	v_fma_f32 v32, -v36, v27, v25
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s3, v76, v5, v76
	v_fmac_f32_e32 v23, v29, v23
	v_div_scale_f32 v29, s1, v79, v5, v79
	v_fmac_f32_e32 v27, v32, v38
	v_div_fmas_f32 v26, v26, v34, v31
	v_rcp_f32_e32 v31, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v29, v23
	v_div_scale_f32 v34, null, v5, v5, v77
	v_fma_f32 v25, -v36, v27, v25
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v30, v32, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v34
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v25, v25, v38, v27
	v_fma_f32 v33, -v28, v31, 1.0
	v_fmac_f32_e32 v32, v35, v23
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v35, null, v5, v5, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v33, v31
	v_fma_f32 v29, -v30, v32, v29
	v_div_scale_f32 v33, s2, v78, v5, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v35
	v_fma_f32 v37, -v34, v36, 1.0
	v_div_fmas_f32 v23, v29, v23, v32
	v_div_scale_f32 v29, null, v5, v5, v73
	v_mul_f32_e32 v27, v33, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v37, v36
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v32, v29
	v_div_scale_f32 v42, s2, v73, v5, v73
	v_fma_f32 v30, -v28, v27, v33
	v_fma_f32 v37, -v35, v38, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v24, v24, v5, v82
	v_fmac_f32_e32 v27, v30, v31
	v_div_scale_f32 v30, s0, v77, v5, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v29, v32, 1.0
	v_fmac_f32_e32 v38, v37, v38
	v_fma_f32 v28, -v28, v27, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v33, v30, v36
	v_div_scale_f32 v37, s1, v75, v5, v75
	v_fmac_f32_e32 v32, v40, v32
	v_div_scale_f32 v40, null, v5, v5, v74
	v_div_fmas_f32 v27, v28, v31, v27
	v_fma_f32 v28, -v34, v33, v30
	v_mul_f32_e32 v31, v37, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v40
	v_mul_f32_e32 v45, v42, v32
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v33, v28, v36
	v_fma_f32 v28, -v35, v31, v37
	v_div_fixup_f32 v26, v26, v5, v81
	v_div_fixup_f32 v25, v25, v5, v80
	v_div_fixup_f32 v23, v23, v5, v79
	v_fma_f32 v30, -v34, v33, v30
	v_fmac_f32_e32 v31, v28, v38
	v_fma_f32 v28, -v29, v45, v42
	v_mul_f32_e32 v34, v43, v41
	v_fma_f32 v46, -v40, v44, 1.0
	v_div_fmas_f32 v30, v30, v36, v33
	v_fma_f32 v33, -v35, v31, v37
	v_fmac_f32_e32 v45, v28, v32
	v_fma_f32 v28, -v39, v34, v43
	v_fmac_f32_e32 v44, v46, v44
	v_div_scale_f32 v35, s0, v74, v5, v74
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v28, v41
	v_div_fmas_f32 v31, v33, v38, v31
	v_mul_f32_e32 v28, v35, v44
	v_div_scale_f32 v33, null, v5, v5, v72
	v_fma_f32 v29, -v29, v45, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v40, v28, v35
	v_rcp_f32_e32 v37, v33
	v_div_scale_f32 v38, null, v5, v5, v69
	v_div_fmas_f32 v29, v29, v32, v45
	v_fma_f32 v32, -v39, v34, v43
	v_fmac_f32_e32 v28, v36, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v27, v27, v5, v78
	v_div_fmas_f32 v32, v32, v41, v34
	v_fma_f32 v34, -v40, v28, v35
	v_fma_f32 v36, -v33, v37, 1.0
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v35, null, v5, v5, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v28, v34, v44, v28
	v_fmac_f32_e32 v37, v36, v37
	v_div_scale_f32 v39, vcc_lo, v72, v5, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v35
	v_div_scale_f32 v36, null, v5, v5, v70
	v_mul_f32_e32 v43, v39, v37
	v_div_scale_f32 v44, null, v5, v5, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v47, -v33, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v41, -v35, v34, 1.0
	v_div_fixup_f32 v30, v30, v5, v77
	v_div_fixup_f32 v31, v31, v5, v75
	v_fmac_f32_e32 v43, v47, v37
	v_div_fixup_f32 v29, v29, v5, v73
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s0, v71, v5, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v43, v39
	v_fma_f32 v45, -v36, v40, 1.0
	v_fma_f32 v50, -v44, v46, 1.0
	v_mul_f32_e32 v49, v41, v34
	v_div_fixup_f32 v32, v32, v5, v76
	v_div_fmas_f32 v33, v33, v37, v43
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v47, -v35, v49, v41
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v21, v21, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v49, v47, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s1, v70, v5, v70
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s2, v69, v5, v69
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s3, v68, v5, v68
	v_mul_f32_e32 v51, v45, v40
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_dual_mul_f32 v52, v48, v42 :: v_dual_and_b32 v17, 15, v17
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v21
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v39, -v36, v51, v45
	v_fma_f32 v35, -v35, v49, v41
	v_fma_f32 v47, -v38, v52, v48
	v_div_fixup_f32 v28, v28, v5, v74
	v_fma_f32 v37, -v44, v53, v50
	v_fmac_f32_e32 v51, v39, v40
	v_div_fmas_f32 v34, v35, v34, v49
	v_fmac_f32_e32 v52, v47, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v53, v37, v46
	v_fma_f32 v35, -v36, v51, v45
	v_div_fixup_f32 v33, v33, v5, v72
	v_fma_f32 v36, -v38, v52, v48
	v_div_fixup_f32 v34, v34, v5, v71
	v_fma_f32 v37, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v40, v51
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v7, v7
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v36, v36, v42, v52
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v35, v35, v5, v70
	v_div_fmas_f32 v37, v37, v46, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v9, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v36, v36, v5, v69
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v37, v5, v68
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_med3_f32 v9, v9, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_med3_f32 v24, v24, s0, 0x40e00000
	v_med3_f32 v26, v26, s0, 0x40e00000
	v_med3_f32 v25, v25, s0, 0x40e00000
	v_med3_f32 v23, v23, s0, 0x40e00000
	v_med3_f32 v27, v27, s0, 0x40e00000
	v_med3_f32 v30, v30, s0, 0x40e00000
	v_med3_f32 v31, v31, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_med3_f32 v28, v28, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v9, v9
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v15, v15
	v_cvt_i32_f32_e32 v37, v6
	v_cvt_i32_f32_e32 v8, v8
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v12, v12
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v22, v22
	v_cvt_i32_f32_e32 v24, v24
	v_cvt_i32_f32_e32 v26, v26
	v_cvt_i32_f32_e32 v25, v25
	v_cvt_i32_f32_e32 v38, v23
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v30, v30
	v_cvt_i32_f32_e32 v39, v31
	v_cvt_i32_f32_e32 v31, v32
	v_cvt_i32_f32_e32 v32, v28
	v_cvt_i32_f32_e32 v40, v5
	v_and_b32_e32 v5, 15, v7
	v_and_b32_e32 v7, 15, v9
	v_and_b32_e32 v9, 15, v11
	v_and_b32_e32 v11, 15, v13
	v_and_b32_e32 v13, 15, v15
	v_and_b32_e32 v15, 15, v19
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v37
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v28, 11, v0
	v_lshlrev_b32_e32 v37, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v6, 15, v8
	v_and_b32_e32 v8, 15, v10
	v_and_b32_e32 v10, 15, v12
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v14, 15, v16
	v_and_b32_e32 v16, 15, v22
	v_and_b32_e32 v22, 15, v24
	v_and_b32_e32 v23, 15, v26
	v_and_b32_e32 v24, 15, v25
	v_and_b32_e32 v25, 15, v38
	v_and_b32_e32 v26, 15, v27
	v_and_b32_e32 v27, 15, v30
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 0x160, v0
	v_and_b32_e32 v28, 0x3000, v28
	v_lshlrev_b32_e32 v38, 7, v67
	v_lshlrev_b32_e32 v43, 7, v0
	v_and_b32_e32 v37, 0x60, v37
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v33, v33
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v41, 0x200, v1
	v_xor_b32_e32 v42, v66, v30
	v_add3_u32 v38, 0, v28, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v30, 15, v32
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v32, 0x3600, v43, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v29, v29, s0, 0x40e00000
	v_med3_f32 v33, v33, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v36, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v37, v38, v41, v42
	v_xad_u32 v38, v32, v65, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v29, v29
	v_cvt_i32_f32_e32 v33, v33
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v35, v35, s0, 0x40e00000
	v_med3_f32 v36, v36, s0, 0x40e00000
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v37, v[5:8]
	ds_store_b128 v37, v[13:16] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v38
	ds_load_b128 v[13:16], v38 offset:2048
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v18
	v_and_b32_e32 v28, 15, v29
	v_and_b32_e32 v29, 15, v31
	v_and_b32_e32 v31, 15, v33
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v35, v35
	v_cvt_i32_f32_e32 v36, v36
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
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
	v_and_b32_e32 v28, 15, v39
	v_and_b32_e32 v33, 15, v34
	v_and_b32_e32 v34, 15, v35
	v_and_b32_e32 v35, 15, v36
	v_and_b32_e32 v36, 15, v40
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
.Ltmp48:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v39, 4, v65
.Ltmp49:
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v13, 4, v5
	v_lshl_or_b32 v5, v14, 4, v6
	v_lshl_or_b32 v6, v15, 4, v7
	v_lshl_or_b32 v7, v16, 4, v8
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v16, s0, v39
	.loc	1 85 21                         ; generate_amdgcn.py:85:21 @[ generate_amdgcn.py:243:9 ]
	s_lshl_b32 s1, s33, 7
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	s_mul_i32 s2, s40, s0
	s_lshl_b32 s0, s0, 5
	v_add3_u32 v2, s2, s1, v2
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v9, v17, 4, v9
	v_lshl_or_b32 v10, v18, 4, v10
	v_lshl_or_b32 v8, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	v_lshl_or_b32 v12, v29, 4, v21
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_add_nc_u32_e32 v21, v2, v16
	v_add3_u32 v16, v16, s0, v2
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v2.l, 8, v7.l
	v_and_b16 v2.h, 0xff, v6.l
	.loc	1 84 15 is_stmt 1               ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v30, 4, v22
	v_lshl_or_b32 v14, v31, 4, v23
	v_lshl_or_b32 v15, v32, 4, v24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v3.l, 8, v5.l
	v_and_b16 v4.l, 0xff, v4.l
	v_lshlrev_b16 v4.h, 8, v11.l
	v_and_b16 v5.l, 0xff, v8.l
	v_or_b16 v8.h, v2.h, v2.l
	v_lshlrev_b16 v2.l, 8, v10.l
	v_and_b16 v2.h, 0xff, v9.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v17, v33, 4, v25
	v_lshl_or_b32 v18, v34, 4, v26
	v_lshl_or_b32 v19, v35, 4, v27
	v_lshl_or_b32 v20, v36, 4, v28
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.h, v5.l, v4.h
	v_lshlrev_b16 v3.l, 8, v15.l
	v_and_b16 v4.l, 0xff, v14.l
	v_lshlrev_b16 v4.h, 8, v13.l
	v_and_b16 v5.l, 0xff, v12.l
	v_or_b16 v9.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshrrev_b32_e32 v2, 4, v0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v5.h, 8, v20.l
	v_and_b16 v6.l, 0xff, v19.l
	v_lshlrev_b16 v6.h, 8, v18.l
	v_and_b16 v7.l, 0xff, v17.l
	v_or_b16 v10.h, v4.l, v3.l
	v_or_b16 v10.l, v5.l, v4.h
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v37.h, v3.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 2, v63
	v_lshrrev_b32_e32 v4, 2, v64
	v_and_b32_e32 v1, 0x7c, v1
	v_and_b32_e32 v2, 2, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v11.h, v6.l, v5.h
	v_or_b16 v11.l, v7.l, v6.h
	s_and_b32 s1, s21, 0xffff
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_mov_b32 s0, s20
	.loc	1 86 37 is_stmt 0               ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s4, s35, 31
	.loc	1 87 5 is_stmt 1                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v3, 0, v3, v4
	v_add3_u32 v1, 0, v1, v2
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_clause 0x1
	buffer_store_b64 v[8:9], v21, s[0:3], 0 offen
	buffer_store_b64 v[10:11], v16, s[0:3], 0 offen
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s4, 24
	.loc	1 87 14 is_stmt 0               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v4, v0, 63, s40
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s35, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_barrier
	ds_store_b32 v3, v37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v1
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v2, v4, s0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v0, 0x1c0, v0
	s_and_b32 s1, s23, 0xffff
	s_mov_b32 s0, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v2, v2, s33, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v2, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[0:3], 0 offen
.Ltmp50:
	.loc	1 106 1 is_stmt 1               ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 164
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 164
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14100
; TotalNumSgprs: 47
; NumVgprs: 164
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 20
; NumSGPRsForWavesPerEU: 47
; NumVGPRsForWavesPerEU: 164
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
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_none_outint4sc256_bm64_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     164
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
