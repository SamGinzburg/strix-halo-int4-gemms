	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s17, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v13, 1, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s17, 0xff
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s20, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s20, s16
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	s_mov_b32 s5, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s21, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow96
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v14, 15, v0
	v_dual_mov_b32 v12, 0 :: v_dual_and_b32 v15, 16, v2
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_mov_b32_e32 v32, 0
	v_mov_b32_e32 v24, 0
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_lshl_b32 s14, s4, 6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_mov_b32 s36, 0
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v3, 0xe0, v0
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v2, 3, v0
	v_lshlrev_b32_e32 v6, 6, v14
	v_lshlrev_b32_e32 v7, 2, v0
	v_lshlrev_b32_e32 v9, 5, v3
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s22, s3, 6
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v1, 56, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_and_or_b32 v8, 0x438, v7, v6
	v_and_b32_e32 v7, 56, v7
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 3, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s0, s17, 31
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s1, s21, 31
	v_or3_b32 v6, v9, v7, v6
.Ltmp15:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v9, s22, v1
	v_add3_u32 v10, s14, v15, v14
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s17, s17, s0
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s1, 24
	v_xor_b32_e32 v28, 56, v6
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v11, 64, v9
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s21, s0
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v3, s20, 8, v3
	v_add_nc_u32_e32 v12, 32, v10
	v_add_nc_u32_e32 v52, 0, v28
	v_mov_b32_e32 v28, 0
	v_cmp_gt_i32_e64 s0, 0x80, v11
	v_lshl_or_b32 v11, s20, 7, v4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s1, s17, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s17, s16, 8
	v_and_b32_e32 v5, 56, v13
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s21, 8
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v33, s17, v3
	v_or_b32_e32 v3, 64, v11
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v9
	v_mul_lo_u32 v9, s3, v12
	v_mul_lo_u32 v10, s3, v10
	s_lshl_b32 s16, s16, 7
	v_xor_b32_e32 v2, v2, v5
	v_and_b32_e32 v31, 2, v4
	v_dual_mov_b32 v29, 0 :: v_dual_add_nc_u32 v4, s14, v4
	v_subrev_nc_u32_e32 v3, s16, v3
	v_subrev_nc_u32_e32 v12, s16, v11
	v_xor_b32_e32 v5, 8, v8
	v_xor_b32_e32 v7, 32, v8
	v_xor_b32_e32 v16, 16, v8
	v_xor_b32_e32 v17, 24, v8
	v_xor_b32_e32 v18, 40, v8
	v_xor_b32_e32 v19, 48, v8
	v_xor_b32_e32 v20, 56, v8
	v_xor_b32_e32 v21, 8, v6
	v_xor_b32_e32 v22, 16, v6
	v_xor_b32_e32 v23, 24, v6
	v_xor_b32_e32 v25, 32, v6
	v_xor_b32_e32 v26, 40, v6
	v_xor_b32_e32 v27, 48, v6
	v_lshlrev_b32_e32 v34, 1, v9
	v_lshlrev_b32_e32 v35, 1, v10
	v_mad_u64_u32 v[9:10], null, s1, v4, v[1:2]
	v_mad_u64_u32 v[10:11], null, s1, v3, v[1:2]
	v_mad_u64_u32 v[11:12], null, s1, v12, v[1:2]
	v_sub_nc_u32_e32 v30, s1, v1
	v_add_nc_u32_e32 v36, 0, v2
	v_add_nc_u32_e32 v37, 0, v8
	v_add_nc_u32_e32 v38, 0, v5
	v_add_nc_u32_e32 v41, 0, v7
	v_add_nc_u32_e32 v45, 0, v6
	v_mov_b32_e32 v1, s36
	v_add_nc_u32_e32 v39, 0, v16
	v_add_nc_u32_e32 v40, 0, v17
	v_add_nc_u32_e32 v42, 0, v18
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v43, 0, v19
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v44, 0, v20
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v46, 0, v21
	v_add_nc_u32_e32 v47, 0, v22
	v_add_nc_u32_e32 v48, 0, v23
	v_add_nc_u32_e32 v49, 0, v25
	v_add_nc_u32_e32 v50, 0, v26
	v_dual_mov_b32 v2, s37 :: v_dual_add_nc_u32 v51, 0, v27
	v_dual_mov_b32 v3, s38 :: v_dual_mov_b32 v4, s39
	v_dual_mov_b32 v5, s40 :: v_dual_mov_b32 v6, s41
	v_dual_mov_b32 v7, s42 :: v_dual_mov_b32 v8, s43
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v26, 0
	v_mov_b32_e32 v25, 0
	v_mov_b32_e32 v23, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v16, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s24, s15, 1
	s_add_i32 s25, s22, 64
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v59, s25, v9
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s1, s25, 64
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add_nc_u32_e32 v60, s25, v11
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v61, s25, v10
	.loc	1 156 27 is_stmt 1              ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s1, v30
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v53, 64, v59
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_subrev_nc_u32_e32 v54, 64, v60
	.loc	1 164 26 is_stmt 0              ; generate_amdgcn.py:164:26
	v_subrev_nc_u32_e32 v55, 64, v61
	.loc	1 156 26 is_stmt 1              ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v56, 0x80000000, v54, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v57, 0x80000000, v55, s1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s25, v30
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[53:54], v53, s[16:19], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[55:56], v56, s[4:7], 0 offen
	buffer_load_b64 v[57:58], v57, s[4:7], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_addk_i32 s25, 0x80
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	v_cndmask_b32_e64 v61, 0x80000000, v61, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s3, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v36, v[53:54] offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v36, v[55:56], v[57:58] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b64 v[79:80], v59, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b64 v[81:82], v60, s[4:7], 0 offen
	buffer_load_b64 v[83:84], v61, s[4:7], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[67:70], v37 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[85:86], v45
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[71:74], v38 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[87:88], v46
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[75:78], v39 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[85:86], v[67:68], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[85:86], v[69:70], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[87:88], v[71:72], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[87:88], v[73:74], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v47
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v40 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[75:76], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[77:78], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[77:78], v48
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v41 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[77:78], v49
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v42 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[75:76], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v50
	ds_load_b64 v[77:78], v51
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v43 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[85:86], v52
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[73:76], v44 offset0:16 offset1:20
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[53:60], v[77:78], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[77:78], v[71:72], v[61:68] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[85:86], v[73:74], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[85:86], v[75:76], v[61:68] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b64 v36, v[79:80] offset:8192
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v36, v[81:82], v[83:84] offset1:8
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[69:72], v37 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v45
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v46
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v38 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v47
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v39 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v48
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v40 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v41 offset0:16 offset1:20
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v49
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v50
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v42 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v51
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v43 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[73:74], v52
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[69:72], v44 offset0:16 offset1:20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[61:68], v[73:74], v[71:72], v[61:68] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[53:60], v[73:74], v[69:70], v[53:60] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v79, v31, v33
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v77, v35, s[20:23], 0 offen
	buffer_load_u16 v78, v34, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v80, v79, s[8:11], 0 offen offset:4
	buffer_load_u16 v81, v79, s[8:11], 0 offen
	buffer_load_u16 v82, v79, s[8:11], 0 offen offset:12
	buffer_load_u16 v83, v79, s[8:11], 0 offen offset:8
	buffer_load_u16 v84, v79, s[8:11], 0 offen offset:20
	buffer_load_u16 v87, v79, s[8:11], 0 offen offset:16
	buffer_load_u16 v88, v79, s[8:11], 0 offen offset:28
	buffer_load_u16 v79, v79, s[8:11], 0 offen offset:24
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v68, v68
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v70, 16, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v68, v70, v68 :: v_dual_lshlrev_b32 v69, 16, v77
	v_dual_mul_f32 v55, v55, v69 :: v_dual_add_nc_u32 v34, 2, v34
	v_dual_mul_f32 v56, v56, v69 :: v_dual_add_nc_u32 v35, 2, v35
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v58, v58, v69 :: v_dual_lshlrev_b32 v71, 16, v80
	s_waitcnt vmcnt(5)
	v_dual_mul_f32 v60, v60, v69 :: v_dual_lshlrev_b32 v73, 16, v82
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v59, v59, v69 :: v_dual_lshlrev_b32 v74, 16, v83
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v28, v56, v73 :: v_dual_lshlrev_b32 v77, 16, v88
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v53, v53, v69
	v_dual_mul_f32 v54, v54, v69 :: v_dual_lshlrev_b32 v75, 16, v84
	v_mul_f32_e32 v57, v57, v69
	v_dual_mul_f32 v66, v70, v66 :: v_dual_add_nc_u32 v33, s24, v33
	v_dual_mul_f32 v63, v70, v63 :: v_dual_lshlrev_b32 v72, 16, v81
	v_dual_mul_f32 v61, v70, v61 :: v_dual_lshlrev_b32 v76, 16, v87
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v65, v70, v65 :: v_dual_lshlrev_b32 v78, 16, v79
	v_mul_f32_e32 v62, v70, v62
	v_mul_f32_e32 v64, v70, v64
	v_dual_mul_f32 v67, v70, v67 :: v_dual_fmac_f32 v24, v53, v72
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v32, v54, v71 :: v_dual_fmac_f32 v29, v55, v74
	v_dual_fmac_f32 v26, v58, v75 :: v_dual_fmac_f32 v27, v57, v76
	v_dual_fmac_f32 v22, v62, v71 :: v_dual_fmac_f32 v25, v59, v78
	v_fmac_f32_e32 v20, v64, v73
	v_dual_fmac_f32 v23, v60, v77 :: v_dual_fmac_f32 v18, v66, v75
	v_dual_fmac_f32 v21, v61, v72 :: v_dual_fmac_f32 v16, v67, v78
	v_dual_fmac_f32 v19, v63, v74 :: v_dual_fmac_f32 v12, v68, v77
	v_fmac_f32_e32 v17, v65, v76
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v1, v13
.LBB0_7:                                ; %._crit_edge
	.loc	1 98 32 is_stmt 1               ; generate_amdgcn.py:98:32
	v_or_b32_e32 v2, v15, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v3, v24, 16, 1
	v_bfe_u32 v5, v32, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 0x78, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v4, 32, v2
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, s15, v2
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_add3_u32 v2, v24, v3, 0x7fff
	v_add3_u32 v3, v32, v5, 0x7fff
	v_cmp_o_f32_e64 s0, v32, v32
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	s_lshl_b32 s1, s2, 7
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s14, s14, s15
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v10, s14, s1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v1, v29, 16, 1
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s0
	v_bfe_u32 v3, v28, 16, 1
	v_bfe_u32 v5, v27, 16, 1
	v_bfe_u32 v6, v26, 16, 1
	v_add3_u32 v1, v29, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_add3_u32 v3, v28, v3, 0x7fff
	v_cmp_o_f32_e64 s0, v28, v28
	v_add3_u32 v5, v27, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_add3_u32 v6, v26, v6, 0x7fff
	v_cmp_o_f32_e64 s2, v26, v26
	v_bfe_u32 v7, v25, 16, 1
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v9, s15, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s2
	v_add3_u32 v5, v25, v7, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_bfe_u32 v6, v23, 16, 1
	v_mov_b16_e32 v4.l, v22.h
	v_mov_b16_e32 v13.l, v19.h
	v_mov_b16_e32 v13.h, v4.h
	v_cndmask_b16 v5.l, 0x7fff, v5.h, vcc_lo
	v_add3_u32 v6, v23, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_mov_b16_e32 v7.l, v21.h
	v_mov_b16_e32 v7.h, v4.h
	v_and_b32_e32 v11, 1, v4
	v_mov_b16_e32 v4.l, v20.h
	v_cndmask_b16 v5.h, 0x7fff, v6.h, vcc_lo
	v_dual_mov_b32 v15, 0x7632 :: v_dual_and_b32 v6, 1, v13
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v11, v22, v11, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_and_b32_e32 v13, 1, v4
	v_add3_u32 v6, v19, v6, 0x7fff
	v_cmp_o_f32_e64 s1, v19, v19
	v_mov_b16_e32 v4.l, v18.h
	v_add3_u32 v7, v21, v7, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s0
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v13, v20, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v20, v20
	v_mov_b16_e32 v14.l, v17.h
	v_mov_b16_e32 v14.h, v4.h
	v_cndmask_b16 v7.l, 0x7fff, v6.h, s1
	v_and_b32_e32 v6, 1, v4
	v_and_b32_e32 v0, 16, v0
	v_cndmask_b16 v11.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v13.h, s0
	v_and_b32_e32 v13, 1, v14
	v_add3_u32 v6, v18, v6, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cmp_eq_u32_e64 s0, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_mov_b16_e32 v14.l, v16.h
	v_mov_b16_e32 v4.l, v12.h
	v_add3_u32 v13, v17, v13, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v15, 0x3276, v15, s0
	v_and_b32_e32 v14, 1, v14
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v6.l, 0x7fff, v13.h, vcc_lo
	v_lshl_or_b32 v0, v0, 8, v0
	v_lshl_or_b32 v13, v15, 8, v15
	v_add3_u32 v14, v16, v14, 0x7fff
	v_add3_u32 v4, v12, v4, 0x7fff
	v_cmp_o_f32_e64 s1, v12, v12
	v_cmp_o_f32_e64 s2, v16, v16
	v_cndmask_b32_e64 v12, v3, v2, s0
	v_cndmask_b32_e64 v2, v2, v3, s0
	v_cndmask_b32_e64 v3, v5, v1, s0
	v_cndmask_b32_e64 v1, v1, v5, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_and_b32_e32 v5, 0x760076, v13
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v14.h, s2
	v_cndmask_b32_e64 v13, v6, v11, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v5, v5, 4, v5
	v_cndmask_b32_e64 v6, v11, v6, s0
	v_cndmask_b32_e64 v11, v4, v7, s0
	v_cndmask_b32_e64 v4, v7, v4, s0
	s_mov_b32 s1, 0x76543210
	v_and_b32_e32 v7, 0x5040504, v0
	v_permlanex16_b32 v2, v2, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v14, 0x7060706, v5
	v_permlanex16_b32 v5, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v12, v7
	v_perm_b32 v1, v2, v12, v14
	v_perm_b32 v2, v5, v3, v7
	v_perm_b32 v3, v5, v3, v14
	v_add_lshl_u32 v8, v10, v8, 1
	v_perm_b32 v4, v6, v13, v7
	v_perm_b32 v5, v6, v13, v14
	v_perm_b32 v6, v15, v11, v7
	v_perm_b32 v7, v15, v11, v14
	v_add_lshl_u32 v9, v10, v9, 1
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_clause 0x1
	buffer_store_b128 v[0:3], v8, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v9, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 89
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
		.amdhsa_inst_pref_size 27
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 89
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3404
; TotalNumSgprs: 46
; NumVgprs: 89
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 89
; Occupancy: 16
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc256_none_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     89
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
