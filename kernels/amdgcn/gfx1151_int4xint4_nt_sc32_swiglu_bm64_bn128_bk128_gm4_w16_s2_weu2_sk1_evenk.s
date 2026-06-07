	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x30
	s_load_b32 s4, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s8, s2
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v5, 7, v0
	v_lshlrev_b32_e32 v10, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v4, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v41, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v44, 0xe0, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v2, 12, v10
	v_and_b32_e32 v47, 8, v0
                                        ; implicit-def: $vgpr42
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s27, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s26, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s6, s5, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s11, s9, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s6, s6, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s11, s11, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s5, s5, s6
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s9, s9, s11
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s5, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s9, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s5, s5, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s5
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s10, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s10, s7, s10
	s_add_i32 s7, s7, s10
	s_xor_b32 s10, s2, s5
	s_mul_hi_u32 s7, s8, s7
	s_ashr_i32 s10, s10, 31
	s_mul_i32 s11, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1)
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
	s_sub_i32 s6, s6, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s18, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s18
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s19, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s19
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s7, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v1, 1, v5
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s7, s7, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s6, s7
	s_xor_b32 s7, s2, s19
	s_mul_i32 s17, s5, s16
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s6, s6, s17
	s_add_i32 s17, s5, 1
	s_sub_i32 s20, s6, s16
	s_cmp_ge_u32 s6, s16
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s20, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	s_cselect_b32 s5, s17, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s4, 31
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s20, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s16
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s6, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s16, s4, 1
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s17, s5, s7
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s16, v3, v[1:2]
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mul_lo_u32 v7, s16, v4
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v8, s6, v1
	v_or_b32_e32 v9, s6, v2
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s20, 31
.Ltmp15:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s17, s7
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s19, s5, s19
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s5, 7
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_add3_u32 v7, v7, v2, s6
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s20, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s16, v8
	v_cmp_gt_i32_e64 s5, s16, v9
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s3, 16, v8
	v_cmp_gt_i32_e64 s4, 16, v9
	.loc	1 92 28 is_stmt 1               ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s19
	.loc	1 164 34                        ; generate_amdgcn.py:164:34
	v_mad_u64_u32 v[8:9], null, s26, s16, v[7:8]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s18
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s34, s21, 5
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	s_add_i32 s18, s26, s27
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s19, s33, s16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 31
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v11, s6, s19, v6
	.loc	1 171 29                        ; generate_amdgcn.py:171:29
	v_mad_u64_u32 v[6:7], null, s18, s16, v[7:8]
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s18, s3, vcc_lo
	s_and_b32 s5, s4, s5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s18
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v7, 0x80000000, v11, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s5
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v11, v7, s[8:11], 0 offen
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b32 v12, v8, s[28:31], 0 offen
	buffer_load_b32 v6, v6, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_lshlrev_b32_e32 v7, 1, v0
	v_bfe_i32 v8, v0, 6, 1
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_bfe_i32 v9, v0, 5, 1
	v_and_b32_e32 v10, 0x77c, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s20, 63
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v7, 0x37e, v7
	v_and_b32_e32 v8, 0x88, v8
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v9, 0x88, v9
	s_mov_b32 s5, -1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v7, v8, v7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v8, v9, v10
	v_and_b32_e32 v10, 0x108, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v49, 0, v7
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v50, 0, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v8, v41, 4, v10
	v_lshlrev_b32_e32 v7, 3, v44
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt vmcnt(2)
	ds_store_b16 v49, v11 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v50, v12, v6 offset1:8
                                        ; implicit-def: $vgpr6
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_and_b32_e32 v6, 8, v0
	v_lshl_or_b32 v42, v5, 4, v7
	s_mov_b32 s5, 0
.LBB0_2:                                ; %Flow251
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_xor_b32_e32 v10, 8, v8
	v_and_b32_e32 v48, 16, v9
	v_mov_b32_e32 v9, 0
	v_bfe_u32 v45, v0, 4, 1
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v46, 0, v8
	v_add_nc_u32_e32 v43, 0, v10
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v16, 0
	s_lshl_b32 s1, s27, 1
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_add_i32 s35, s34, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	v_bfe_i32 v6, v0, 3, 1
	v_lshl_or_b32 v42, v5, 4, v7
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_lshl_or_b32 v9, s17, 8, v44
	s_lshl_b32 s0, s17, 7
	v_add3_u32 v5, s33, v48, v41
	v_add3_u32 v11, s27, s0, v4
	v_and_or_b32 v7, 0x88, v6, v42
	v_add_nc_u32_e32 v6, s1, v9
	v_or_b32_e32 v4, s0, v4
	s_lshl_b32 s18, s7, 8
	s_lshl_b32 s0, s7, 7
	v_add_nc_u32_e32 v10, 32, v5
	v_subrev_nc_u32_e32 v54, s18, v6
	v_subrev_nc_u32_e32 v6, s0, v11
	v_mul_lo_u32 v11, s34, v5
	v_subrev_nc_u32_e32 v5, s0, v4
	v_add_nc_u32_e32 v12, s33, v3
	v_xor_b32_e32 v8, 8, v7
	v_mad_u64_u32 v[3:4], null, s16, v6, s[6:7]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mad_u64_u32 v[4:5], null, s16, v5, s[6:7]
	v_mad_u64_u32 v[5:6], null, s16, v12, s[6:7]
	v_sub_nc_u32_e32 v51, s16, v1
	v_sub_nc_u32_e32 v52, s16, v2
	s_mov_b32 s16, 0
	v_subrev_nc_u32_e32 v55, s18, v9
	v_add3_u32 v58, v3, v2, 16
	v_add3_u32 v59, v4, v2, 16
	v_add3_u32 v60, v5, v1, 16
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v61, 0, v7
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v62, 0, v8
	v_mov_b32_e32 v1, s16
	v_mul_lo_u32 v10, s34, v10
	v_dual_mov_b32 v16, 0 :: v_dual_lshlrev_b32 v53, 1, v45
	v_dual_mov_b32 v2, s17 :: v_dual_lshlrev_b32 v57, 1, v11
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, s20 :: v_dual_lshlrev_b32 v56, 1, v10
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v24, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s5, s35, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s0, s27, 2
	s_lshl_b32 s5, s5, 4
	s_add_i32 s6, s6, 16
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_add_i32 s7, s6, s16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v63, s16, v60
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v51
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v63, 0x80000000, v63, vcc_lo
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v52
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v63, v63, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[94:97], v46 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[98:101], v61 offset1:4
	.loc	1 156 26 is_stmt 1              ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[98:99], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[72:79], v[98:99], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[80:87], v[100:101], v[94:95], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[88:95], v[100:101], v[96:97], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[96:99], v43 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[100:103], v62 offset1:4
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[64:71], v[100:101], v[96:97], v[64:71] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[80:87], v[102:103], v[96:97], v[80:87] neg_lo:[1,1,0]
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[72:79], v[100:101], v[98:99], v[72:79] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[88:95], v[102:103], v[98:99], v[88:95] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v99, v66
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v66, v80
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v80, v56, s[36:39], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v97, v73
	v_cvt_f32_i32_e32 v103, v70
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v70, v81
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v100, v67
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v67, v82
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v96, v72
	v_cvt_f32_i32_e32 v73, v79
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v79, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v89, v90
	v_cvt_f32_i32_e32 v90, v91
	v_cvt_f32_i32_e32 v91, v92
	v_cvt_f32_i32_e32 v92, v93
	v_cvt_f32_i32_e32 v93, v94
	v_cvt_f32_i32_e32 v94, v95
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v95, v64
	v_cvt_f32_i32_e32 v64, v71
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v71, v83
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v101, v68
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v68, v84
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v98, v65
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v77, v77
	v_cvt_f32_i32_e32 v102, v69
	v_cvt_f32_i32_e32 v78, v78
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v72, v85
	v_cvt_f32_i32_e32 v65, v86
	v_cvt_f32_i32_e32 v69, v87
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v80, 16, v80
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v81, v53, v55
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v55, s0, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v83, v80, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v82, v81, s[40:43], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v75, v80, v75
	v_mul_f32_e32 v73, v80, v73
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v85, v80, v88
	v_mul_f32_e32 v79, v80, v79
	v_mul_f32_e32 v87, v80, v89
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v89, v80, v91 :: v_dual_lshlrev_b32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v28, v83, v82
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v83, v57, s[36:39], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v57, 2, v57
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v83, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v39, v84, v82
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v80, v97
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	buffer_load_u16 v82, v81, s[40:43], 0 offen offset:4
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v29, v84, v82
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v84, v83, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v40, v84, v82
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	buffer_load_u16 v82, v81, s[40:43], 0 offen offset:8
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v77, v80, v77
	v_mul_f32_e32 v74, v80, v74
	v_mul_f32_e32 v84, v83, v103
	v_dual_mul_f32 v78, v80, v78 :: v_dual_mul_f32 v67, v83, v67
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v86, v80, v90 :: v_dual_mul_f32 v69, v83, v69
	v_dual_mul_f32 v88, v80, v92 :: v_dual_mul_f32 v65, v83, v65
	v_mul_f32_e32 v66, v83, v66
	v_mul_f32_e32 v71, v83, v71
	v_mul_f32_e32 v72, v83, v72
	v_mul_f32_e32 v68, v83, v68
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v24, v74, v82
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v74, v83, v99
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v74, v82
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	buffer_load_u16 v74, v81, s[40:43], 0 offen offset:12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v82, v83, v102
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v25, v75, v74
	.loc	1 180 20 is_stmt 0              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v75, v83, v100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v75, v74
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	buffer_load_u16 v74, v81, s[40:43], 0 offen offset:16
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v75, v80, v76 :: v_dual_mul_f32 v76, v83, v101
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v32, v76, v74
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	buffer_load_u16 v76, v81, s[40:43], 0 offen offset:20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v20, v75, v74
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	v_add_nc_u32_e32 v74, s16, v58
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_add_nc_u32_e32 v75, s16, v59
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s16, s16, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s5, s16
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v75, 0x80000000, v75 :: v_dual_lshlrev_b32 v76, 16, v76
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v21, v77, v76
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v77, v53, v54
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v33, v82, v76
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x2
	buffer_load_u16 v76, v81, s[40:43], 0 offen offset:24
	buffer_load_u16 v81, v81, s[40:43], 0 offen offset:28
	buffer_load_u16 v82, v77, s[40:43], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v90, v80, v94
	v_mul_f32_e32 v80, v80, v93
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v76, 16, v76
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v70, v83, v70 :: v_dual_lshlrev_b32 v81, 16, v81
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v10, v78, v76
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v78, v77, s[40:43], 0 offen offset:4
	buffer_load_u16 v91, v77, s[40:43], 0 offen offset:16
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v11, v84, v76
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v76, v77, s[40:43], 0 offen offset:8
	buffer_load_u16 v84, v77, s[40:43], 0 offen offset:12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v64, v83, v64
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	buffer_load_u16 v83, v77, s[40:43], 0 offen offset:20
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v9, v73, v81
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x1
	buffer_load_u16 v73, v77, s[40:43], 0 offen offset:28
	buffer_load_u16 v77, v77, s[40:43], 0 offen offset:24
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	s_waitcnt vmcnt(5)
	v_dual_cndmask_b32 v74, 0x80000000, v74 :: v_dual_lshlrev_b32 v91, 16, v91
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(2)
	v_dual_fmac_f32 v12, v64, v81 :: v_dual_lshlrev_b32 v83, 16, v83
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v73, 16, v73
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	s_clause 0x1
	buffer_load_b32 v75, v75, s[28:31], 0 offen
	buffer_load_b32 v74, v74, s[28:31], 0 offen
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v77, 16, v77
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v19, v88, v83 :: v_dual_lshlrev_b32 v76, 16, v76
	v_dual_fmac_f32 v31, v72, v83 :: v_dual_add_nc_u32 v56, 2, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v13, v65, v77 :: v_dual_lshlrev_b32 v84, 16, v84
	v_fmac_f32_e32 v27, v85, v78
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v82, 16, v82
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v54, s0, v54
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v34, v67, v76 :: v_dual_fmac_f32 v17, v90, v73
	v_dual_fmac_f32 v35, v71, v84 :: v_dual_fmac_f32 v30, v68, v91
	v_fmac_f32_e32 v14, v69, v73
	v_fmac_f32_e32 v22, v87, v76
	v_fmac_f32_e32 v23, v86, v84
	v_fmac_f32_e32 v16, v66, v82
	v_dual_fmac_f32 v38, v70, v78 :: v_dual_fmac_f32 v15, v80, v77
	v_fmac_f32_e32 v26, v79, v82
	v_fmac_f32_e32 v18, v89, v91
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v49, v63 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v50, v75, v74 offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v6, v47
.LBB0_6:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 164 26 is_stmt 1              ; generate_amdgcn.py:164:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v6
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[5:8], v46 offset0:8 offset1:9
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_cndmask_b32_e64 v1, 0x88, 0, vcc_lo
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v65, 0
	v_mov_b32_e32 v73, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v42, v42, v1
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v43 offset0:8 offset1:9
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v43, 0, 1, s2
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v56, 0
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	v_xor_b32_e32 v46, 8, v42
	v_add_nc_u32_e32 v78, 0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_cmp_ne_u32_e64 s0, 1, v43
	v_mov_b32_e32 v66, 0
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v77, 0, v46
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v54, 0
	v_mov_b32_e32 v55, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v46, 0
	v_mov_b32_e32 v47, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	.loc	1 164 26                        ; generate_amdgcn.py:164:26
	ds_load_b64 v[42:43], v78
	ds_load_b64 v[46:47], v77
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v62, s11 :: v_dual_mov_b32 v61, s10
	v_dual_mov_b32 v60, s9 :: v_dual_mov_b32 v59, s8
	v_dual_mov_b32 v58, s7 :: v_dual_mov_b32 v57, s6
	v_dual_mov_b32 v56, s5 :: v_dual_mov_b32 v55, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[42:43], v[5:6], v[55:62] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[42:43], v[7:8], v[55:62] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[46:47], v[1:2], v[79:86] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[55:62], v[46:47], v[3:4], v[55:62] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v68, v79
	v_cvt_f32_i32_e32 v70, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v81
	v_cvt_f32_i32_e32 v73, v82
	v_cvt_f32_i32_e32 v65, v83
	v_cvt_f32_i32_e32 v66, v84
	v_cvt_f32_i32_e32 v42, v85
	v_cvt_f32_i32_e32 v43, v86
	v_cvt_f32_i32_e32 v53, v55
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v55, v57
	v_cvt_f32_i32_e32 v57, v58
	v_cvt_f32_i32_e32 v52, v59
	v_cvt_f32_i32_e32 v54, v60
	v_cvt_f32_i32_e32 v46, v61
	v_cvt_f32_i32_e32 v47, v62
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_mov_b32_e32 v64, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 170 35                        ; generate_amdgcn.py:170:35
	ds_load_b64 v[49:50], v78 offset:2048
	ds_load_b64 v[58:59], v77 offset:2048
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v84, s11 :: v_dual_mov_b32 v83, s10
	v_dual_mov_b32 v82, s9 :: v_dual_mov_b32 v81, s8
	v_dual_mov_b32 v80, s7 :: v_dual_mov_b32 v79, s6
	v_dual_mov_b32 v78, s5 :: v_dual_mov_b32 v77, s4
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[49:50], v[5:6], v[77:84] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[49:50], v[7:8], v[77:84] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[58:59], v[1:2], v[85:92] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[77:84], v[58:59], v[3:4], v[77:84] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v67, v85
	v_cvt_f32_i32_e32 v75, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v74, v87
	v_cvt_f32_i32_e32 v76, v88
	v_cvt_f32_i32_e32 v69, v89
	v_cvt_f32_i32_e32 v72, v90
	v_cvt_f32_i32_e32 v49, v91
	v_cvt_f32_i32_e32 v50, v92
	v_cvt_f32_i32_e32 v59, v77
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v61, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v58, v81
	v_cvt_f32_i32_e32 v60, v82
	v_cvt_f32_i32_e32 v51, v83
	v_cvt_f32_i32_e32 v63, v84
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v2, v48, v41
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v3, 1, v44
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s34
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s3, s35, 0
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_and_b32 s17, s13, 0xffff
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, 32, v2
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v4, s34, v2
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s3, s1
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s3, s0, s3
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, v45, v3
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v5, s34, v1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s1
	s_mov_b32 s19, 0x31027000
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v4, s3, v4, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v6, 2, v3
	v_or_b32_e32 v7, 4, v3
	v_or_b32_e32 v8, 6, v3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v5, s3, v5, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_mov_b32 s18, 0x7ffffffe
	s_mov_b32 s16, s12
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v82, s1, v3, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v48, s0, v3, 1
	v_add_lshl_u32 v78, s0, v7, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v7, s1, v7, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v4, v4, s[16:19], 0 offen
	buffer_load_u16 v77, v5, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v5, s0, v6, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v6, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v79, s0, v8, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v8, s1, v8, 1
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v44, 10, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v48, 0x80000000, v48, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v41, 8, v3
	v_or_b32_e32 v45, 14, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, 12, v3
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x5
	buffer_load_u16 v82, v82, s[16:19], 0 offen
	buffer_load_u16 v84, v6, s[16:19], 0 offen
	buffer_load_u16 v85, v7, s[16:19], 0 offen
	buffer_load_u16 v86, v8, s[16:19], 0 offen
	buffer_load_u16 v48, v48, s[16:19], 0 offen
	buffer_load_u16 v81, v5, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v5, s0, v44, 1
	v_add_lshl_u32 v80, s0, v41, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v3, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v3, s0, v3, 1
	v_add_lshl_u32 v8, s0, v45, 1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v41, s1, v41, 1
	v_add_lshl_u32 v44, s1, v44, 1
	v_add_lshl_u32 v83, s1, v45, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v79, 0x80000000, v79, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v80, 0x80000000, v80, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v45, 0x80000000, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v6, 0x80000000, v8, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v7, 0x80000000, v44, s2
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v44, 0x80000000, v83, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x9
	buffer_load_u16 v78, v78, s[16:19], 0 offen
	buffer_load_u16 v79, v79, s[16:19], 0 offen
	buffer_load_u16 v83, v5, s[16:19], 0 offen
	buffer_load_u16 v5, v3, s[16:19], 0 offen
	buffer_load_u16 v6, v6, s[16:19], 0 offen
	buffer_load_u16 v80, v80, s[16:19], 0 offen
	buffer_load_u16 v87, v7, s[16:19], 0 offen
	buffer_load_u16 v45, v45, s[16:19], 0 offen
	buffer_load_u16 v88, v41, s[16:19], 0 offen
	buffer_load_u16 v89, v44, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v7, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.h, 0
	v_and_b32_e32 v0, 16, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v2, s27, v2
	s_mul_i32 s33, s33, s27
	v_mul_lo_u32 v1, s27, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.h, v3.h
	v_mov_b16_e32 v44.h, v3.h
	v_mov_b16_e32 v8.h, v3.h
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s19
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v4, 16, v4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v90, 0x78, v7
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v7, 16, v77
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v53, v7 :: v_dual_mul_f32 v74, v74, v4
	v_mul_f32_e32 v70, v70, v4
	v_mul_f32_e32 v68, v68, v4
	v_dual_mul_f32 v56, v56, v7 :: v_dual_mul_f32 v67, v67, v4
	v_mul_f32_e32 v71, v71, v4
	v_mul_f32_e32 v65, v65, v4
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v72, v72, v4 :: v_dual_mul_f32 v59, v59, v7
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v85, 16, v85
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v57, v57, v7 :: v_dual_lshlrev_b32 v48, 16, v48
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v77, 16, v81
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v81, 16, v84
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v74, v74, v85, v34
	.loc	1 183 29 is_stmt 0              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v69, v69, v4 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v84, 16, v86
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v68, v68, v48, v39
	v_fma_f32 v48, v53, v48, v28
	v_fma_f32 v53, v56, v77, v29
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v74, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v75, v75, v4
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v73, v73, v4 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v76, v76, v4 :: v_dual_lshlrev_b32 v79, 16, v79
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v86, 16, v87
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v55, v55, v7 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v62, v62, v7 :: v_dual_lshlrev_b32 v87, 16, v88
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v88, 16, v89
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v64, v64, v7
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v56, v59, v82, v26
	v_fma_f32 v69, v69, v87, v30
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v29, v53, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v53, 0xbfb8aa3b, v34 :: v_dual_mul_f32 v66, v66, v4
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v83, 16, v83
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v75, v75, v81, v38
	v_fma_f32 v76, v76, v84, v35
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v55, v55, v78, v24
	v_fma_f32 v57, v57, v79, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v30, v30, v69, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v54, v54, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v26, v56, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v52, v52, v7
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v53
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v67, v67, v82, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v38, v38, v75, s2
	v_cndmask_b32_e64 v35, v35, v76, s2
	v_cndmask_b32_e64 v25, v25, v57, s2
	v_cndmask_b32_e64 v24, v24, v55, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v55, 0xbfb8aa3b, v30
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v54, v54, v83, v21
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v26
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v52, v52, v80, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v53, 0, 0x42800000, s3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v63, v63, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v16, v67, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v61, v61, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v21, v21, v54, s2
	v_cndmask_b32_e64 v20, v20, v52, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v52, 0xbfb8aa3b, v38
	v_dual_mul_f32 v54, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v53, 0xbfb8aa3b, v34
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v66, v66, v83, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v28, v28, v48, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v48, 0xbfb8aa3b, v16
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v61, v61, v85, v22
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v52
	v_exp_f32_e32 v53, v53
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v59, v62, v81, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v33, v33, v66, s2
	v_cndmask_b32_e64 v22, v22, v61, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s3
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v60, v60, v7
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v62, v64, v84, v23
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v27, v27, v59, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v59, 0xbfb8aa3b, v22
	v_ldexp_f32 v53, v53, v66
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v38
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v58, v58, v7
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v72, v72, v86, v31
	v_fma_f32 v60, v60, v86, v19
	v_fma_f32 v63, v63, v88, v17
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v23, v23, v62, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v59
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v52, v52
	.loc	1 183 17 is_stmt 1              ; generate_amdgcn.py:183:17
	v_fma_f32 v58, v58, v87, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v72, s2
	v_cndmask_b32_e64 v19, v19, v60, s2
	v_cndmask_b32_e64 v17, v17, v63, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s5
	v_cndmask_b32_e64 v59, 0, 0x42800000, s9
	v_mul_f32_e32 v60, 0xbfb8aa3b, v23
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v18, v58, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v56, 0xbfb8aa3b, v31 :: v_dual_fmac_f32 v55, 0xbfb8aa3b, v30
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v57
	v_fmac_f32_e32 v59, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v60
	v_ldexp_f32 v52, v52, v63
	v_mul_f32_e32 v61, 0xbfb8aa3b, v18
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v48
	v_cndmask_b32_e64 v57, 0, 0x42800000, s7
	v_cndmask_b32_e64 v60, 0, 0x42800000, s8
	v_exp_f32_e32 v55, v55
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v52, 1.0, v52
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v68, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v58, 0xbfb8aa3b, v27 :: v_dual_fmac_f32 v57, 0xbfb8aa3b, v26
	v_cndmask_b32_e64 v48, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v61
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s5
	v_fmac_f32_e32 v60, 0xbfb8aa3b, v23
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v63, null, v52, v52, v38
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v70, v70, v77, v40
	v_fma_f32 v71, v71, v78, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v54
	v_cndmask_b32_e64 v61, 0, 0x42800000, s11
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v60, v60
	v_ldexp_f32 v55, v55, v68
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v16
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v87, v63
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v70, s2
	v_cndmask_b32_e64 v36, v36, v71, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v62, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v61, 0xbfb8aa3b, v18
	v_cndmask_b32_e64 v54, 0, 0x42800000, s1
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s8
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v55, 1.0, v55
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v48, v48
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v56
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s0
	v_exp_f32_e32 v61, v61
	v_ldexp_f32 v57, v57, v70
	v_fmac_f32_e32 v54, 0xbfb8aa3b, v35
	v_ldexp_f32 v60, v60, v71
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v101, -v63, v87, 1.0
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v65, v65, v80, v32
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s4
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s11
	v_ldexp_f32 v48, v48, v64
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v57
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v54, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v87, v101, v87
	v_div_scale_f32 v64, s0, v38, v52, v38
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v60, 1.0, v60
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v73, v73, v79, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v65, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s1
	v_ldexp_f32 v61, v61, v74
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v31
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v101, v64, v87
	v_div_scale_f32 v79, null, v60, v60, v23
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v62
	v_exp_f32_e32 v59, v59
	v_ldexp_f32 v54, v54, v65
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v61, 1.0, v61
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v56, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v97, v79
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v62, 0, 0x42800000, s10
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s9
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v37, v37, v73, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v58
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s10
	v_ldexp_f32 v59, v59, v72
	v_ldexp_f32 v56, v56, v67
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v48, 1.0, v48
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v67, null, v54, v54, v35
	v_fma_f32 v109, -v79, v97, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v62, 0xbfb8aa3b, v19
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v59, 1.0, v59
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v65, null, v48, v48, v16
	v_rcp_f32_e32 v91, v67
	v_fmac_f32_e32 v97, v109, v97
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v62, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v89, v65
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, s6
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v81, null, v59, v59, v22
	v_div_scale_f32 v70, s4, v34, v53, v34
	v_fma_f32 v103, -v67, v91, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v98, v81
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v62, v62, v73
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v102, -v65, v89, 1.0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v58, 0xbfb8aa3b, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v91, v103, v91
	v_div_scale_f32 v68, s3, v35, v54, v35
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v62, 1.0, v62 :: v_dual_fmac_f32 v89, v102, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v58, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v103, v68, v91
	v_div_scale_f32 v73, null, v55, v55, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v83, null, v62, v62, v19
	v_div_scale_f32 v77, null, v57, v57, v26
	v_div_scale_f32 v80, s8, v23, v60, v23
	v_rcp_f32_e32 v99, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v58, v69
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v69, null, v53, v53, v34
	v_rcp_f32_e32 v94, v73
	v_rcp_f32_e32 v96, v77
	v_fma_f32 v110, -v81, v98, 1.0
	v_rcp_f32_e32 v92, v69
	v_div_scale_f32 v66, s1, v16, v48, v16
	v_fma_f32 v111, -v83, v99, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v58, 1.0, v58
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v85, null, v61, v61, v18
	v_mul_f32_e32 v109, v80, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v99, v111, v99
	v_div_scale_f32 v75, null, v58, v58, v27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v104, -v69, v92, 1.0
	v_fma_f32 v111, -v63, v101, v64
	v_div_scale_f32 v76, vcc_lo, v27, v58, v27
	v_rcp_f32_e32 v95, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_fmac_f32 v101, v111, v87
	v_rcp_f32_e32 v100, v85
	v_fma_f32 v106, -v73, v94, 1.0
	v_fma_f32 v108, -v77, v96, 1.0
	v_mul_f32_e32 v104, v70, v92
	v_div_scale_f32 v78, s7, v26, v57, v26
	v_fma_f32 v115, -v67, v103, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v107, -v75, v95, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v56, 1.0, v56
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v111, -v69, v104, v70
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_fmac_f32 v103, v115, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v107, v95
	v_div_scale_f32 v71, null, v56, v56, v31
	v_fmac_f32_e32 v98, v110, v98
	v_div_scale_f32 v72, s5, v31, v56, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v93, v71
	v_dual_mul_f32 v107, v76, v95 :: v_dual_fmac_f32 v104, v111, v92
	v_fma_f32 v112, -v85, v100, 1.0
	v_dual_mul_f32 v108, v78, v96 :: v_dual_lshlrev_b32 v45, 16, v45
	v_fma_f32 v111, -v75, v107, v76
	v_mul_f32_e32 v102, v66, v89
	v_fma_f32 v63, -v63, v101, v64
	v_div_scale_f32 v74, s6, v30, v55, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v105, -v71, v93, 1.0
	v_fmac_f32_e32 v107, v111, v95
	v_fma_f32 v113, -v65, v102, v66
	v_div_scale_f32 v82, s9, v22, v59, v22
	v_dual_fmac_f32 v93, v105, v93 :: v_dual_fmac_f32 v94, v106, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v102, v113, v89
	v_div_scale_f32 v84, s10, v19, v62, v19
	v_dual_mul_f32 v105, v72, v93 :: v_dual_mul_f32 v106, v74, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v64, -v65, v102, v66
	v_fma_f32 v66, -v69, v104, v70
	v_fma_f32 v69, -v75, v107, v76
	v_fma_f32 v113, -v71, v105, v72
	v_fmac_f32_e32 v100, v112, v100
	v_fma_f32 v115, -v73, v106, v74
	v_fma_f32 v65, -v67, v103, v68
	v_div_fmas_f32 v69, v69, v95, v107
	v_fmac_f32_e32 v105, v113, v93
	v_fma_f32 v113, -v77, v108, v78
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v106, v115, v94
	v_div_fixup_f32 v27, v69, v58, v27
	v_mul_f32_e32 v110, v82, v98
	v_fmac_f32_e32 v108, v113, v96
	v_fma_f32 v115, -v79, v109, v80
	v_fma_f32 v67, -v71, v105, v72
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v27, v29, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v111, -v81, v110, v82
	v_fma_f32 v70, -v77, v108, v78
	v_fmac_f32_e32 v109, v115, v97
	v_div_scale_f32 v86, s11, v18, v61, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v110, v111, v98
	v_div_fmas_f32 v70, v70, v96, v108
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v71, -v79, v109, v80
	v_div_fmas_f32 v63, v63, v87, v101
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v26, v70, v57, v26
	v_div_fmas_f32 v58, v64, v89, v102
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v72, -v81, v110, v82
	v_div_fmas_f32 v57, v71, v97, v109
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v28, v26
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v38, v63, v52, v38
	v_div_fmas_f32 v29, v72, v98, v110
	s_mov_b32 vcc_lo, s3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v44.l, v26.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v112, v84, v99
	v_fma_f32 v68, -v73, v106, v74
	v_div_fixup_f32 v23, v57, v60, v23
	v_mul_f32_e32 v114, v86, v100
	v_div_fmas_f32 v28, v65, v91, v103
	v_fma_f32 v113, -v83, v112, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v38, v40, v38
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v40, v66, v92, v104
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v112, v113, v99
	v_div_fixup_f32 v22, v29, v59, v22
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v23, v25, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v111, -v85, v114, v86
	v_div_fixup_f32 v16, v58, v48, v16
	v_fma_f32 v73, -v83, v112, v84
	v_div_fixup_f32 v28, v28, v54, v35
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v38.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v22, v24, v22
	v_mul_f32_e32 v16, v39, v16
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v29, v73, v99, v112
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v34, v40, v53, v34
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v28, v37, v28
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v16.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v19, v29, v62, v19
	v_fmac_f32_e32 v114, v111, v100
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v44
	v_cmp_o_f32_e64 s1, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v34, v36, v34 :: v_dual_mul_f32 v19, v21, v19
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v74, -v85, v114, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v26, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s4, v16, v16
	v_mov_b16_e32 v8.l, v34.h
	v_mov_b16_e32 v115.h, v3.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v25, v74, v100, v114
	s_mov_b32 vcc_lo, s5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v115.l, v22.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v24, v67, v93, v105
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v18, v25, v61, v18
	v_div_fmas_f32 v35, v68, v94, v106
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v25, 1, v3
	v_mov_b16_e32 v3.l, v27.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v24, v24, v56, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v41
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v29, v35, v55, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v27, v27
	v_and_b32_e32 v30, 1, v3
	v_mov_b16_e32 v3.l, v28.h
	v_add3_u32 v16, v16, v31, 0x7fff
	v_cndmask_b16 v16.l, 0x7fff, v26.h, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v26, v32, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v27, v27, v30, 0x7fff
	v_and_b32_e32 v29, 1, v3
	v_mov_b16_e32 v3.l, v23.h
	v_and_b32_e32 v8, 1, v8
	v_and_b32_e32 v35, 1, v115
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_cmp_o_f32_e64 s7, v34, v34
	v_and_b32_e32 v30, 1, v3
	v_add3_u32 v8, v34, v8, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v22, v22, v35, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v23, v23, v30, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v8.h, s7
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v33, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v8.l, 0x7fff, v22.h, s5
	v_mov_b16_e32 v113.h, v3.h
	v_cndmask_b16 v8.h, 0x7fff, v23.h, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v23, v51, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v24.h
	v_mov_b16_e32 v113.l, v26.h
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v44, v47, v7 :: v_dual_lshlrev_b32 v5, 16, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v23, v23, v45, v15
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v90, s33, s26, v90
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s18
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v7, v46, v7
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v15, v23, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v1, v90, v1, 1
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v25, v38, v25, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v16.h, s4
	v_cndmask_b16 v16.h, 0x7fff, v27.h, s0
	v_add3_u32 v27, v28, v29, 0x7fff
	v_mov_b16_e32 v29.h, v3.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v18, v20, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v3
	v_and_b32_e32 v28, 1, v113
	v_cndmask_b16 v22.h, 0x7fff, v27.h, s6
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v24, v24
	v_add3_u32 v20, v24, v20, 0x7fff
	v_add3_u32 v21, v26, v28, 0x7fff
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v23
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v19.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v23, 0, 0x42800000, s1
	v_cndmask_b32_e64 v27, 0, 0x42800000, vcc_lo
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v26, v50, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v28, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v20.l, 0x7fff, v21.h, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v15
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v17
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v26, v26, v88, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v30, 1, v3
	v_cmp_o_f32_e64 s3, v38, v38
	v_mov_b16_e32 v29.l, v18.h
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v27
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v49, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v14, v26, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v30, v19, v30, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s3
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v21, v27, v45, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v28
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v13, v21, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v21, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v29, v18, v29, 0x7fff
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v23, 1.0, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v27, 0xbfb8aa3b, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v28, null, v23, v23, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v27
	v_ldexp_f32 v21, v21, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v26, v28
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v27, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v19, v19
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v27, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v31, null, v21, v21, v15
	v_fma_f32 v33, -v28, v26, 1.0
	v_div_scale_f32 v38, s1, v15, v21, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v27, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v35, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v26, v33, v26
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s0
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v27, v27, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fma_f32 v33, -v31, v35, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v27, 1.0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v35, v33, v35
	v_div_scale_f32 v36, null, v27, v27, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v40, v38, v35
	v_rcp_f32_e32 v33, v36
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v45, -v31, v40, v38
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v40, v45, v35
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v31, -v31, v40, v38
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v38, v43, v4
	v_mul_f32_e32 v4, v42, v4
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v5, v11
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v24, v24
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v7, v5, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v11, v4, s2
	v_cndmask_b32_e64 v5, v10, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v6, 16, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v24, v24, v32
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_div_scale_f32 v32, vcc_lo, v17, v23, v17
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v24, 1.0, v24 :: v_dual_mul_f32 v19, v32, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, null, v24, v24, v14
	v_fma_f32 v39, -v28, v19, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v34
	v_fmac_f32_e32 v19, v39, v26
	v_fma_f32 v39, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v28, v19, v32
	v_fmac_f32_e32 v33, v39, v33
	v_div_scale_f32 v39, s3, v13, v27, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v34, v37, 1.0
	v_div_fmas_f32 v19, v28, v26, v19
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v33
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s0, v14, v24, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v28, -v36, v45, v39
	v_div_fixup_f32 v10, v19, v23, v17
	v_mul_f32_e32 v32, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v28, v33
	v_fma_f32 v26, -v34, v32, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v32, v26, v37
	v_div_fmas_f32 v26, v31, v35, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v38, v6, v12
	v_fma_f32 v6, v44, v6, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v28, -v34, v32, v41
	v_fma_f32 v34, -v36, v45, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v12, v12, v31, s2
	v_cndmask_b32_e64 v6, v9, v6, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v28, v28, v37, v32
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v26, v21, v15
	v_div_fmas_f32 v32, v34, v33, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v11, v28, v24, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v6, v6, v10 :: v_dual_mul_f32 v5, v5, v9
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v13, v32, v27, v13
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v30.l, 0x7fff, v29.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v12, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v3.h
	v_mov_b32_e32 v0, 0x5410
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v4, v4, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v6, v6
	v_mov_b16_e32 v3.l, v7.h
	v_cmp_o_f32_e32 vcc_lo, v7, v7
	v_cmp_o_f32_e64 s2, v5, v5
	v_mov_b16_e32 v11.l, v4.h
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_and_b32_e32 v9, 1, v3
	v_mov_b16_e32 v3.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v10, 1, v11
	v_mov_b16_e32 v11.l, v5.h
	v_add3_u32 v9, v7, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v3, 1, v3
	v_lshl_or_b32 v0, v0, 8, v0
	v_add3_u32 v7, v4, v10, 0x7fff
	v_and_b32_e32 v10, 1, v11
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_add3_u32 v3, v6, v3, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	v_add3_u32 v4, v5, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_cndmask_b16 v9.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s1
	v_cndmask_b32_e64 v11, v16, v30, s0
	v_cndmask_b16 v3.l, 0x7fff, v4.h, s2
	v_cndmask_b32_e64 v6, 0x3276, v10, s0
	v_cndmask_b32_e64 v7, v9, v22, s0
	v_cndmask_b32_e64 v9, v22, v9, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b32_e64 v12, v3, v8, s0
	v_lshl_or_b32 v4, v6, 8, v6
	v_cndmask_b32_e64 v6, v25, v20, s0
	v_cndmask_b32_e64 v3, v8, v3, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v5, v20, v25, s0
	v_and_b32_e32 v4, 0x760076, v4
	v_cndmask_b32_e64 v10, v30, v16, s0
	v_permlanex16_b32 v6, v6, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_permlanex16_b32 v8, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v4, 4, v4
	v_permlanex16_b32 v9, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v3, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v3, v6, v5, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 0x7060706, v4
	v_perm_b32 v4, v6, v5, v13
	v_perm_b32 v5, v8, v7, v0
	v_perm_b32 v6, v8, v7, v13
	v_perm_b32 v7, v9, v10, v0
	v_perm_b32 v8, v9, v10, v13
	v_perm_b32 v9, v11, v12, v0
	v_add_lshl_u32 v0, v90, v2, 1
	v_perm_b32 v10, v11, v12, v13
	s_clause 0x1
	buffer_store_b128 v[3:6], v0, s[24:27], 0 offen
	buffer_store_b128 v[7:10], v1, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 116
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8068
; TotalNumSgprs: 46
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 116
; Occupancy: 12
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
