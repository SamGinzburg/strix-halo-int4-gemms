	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 2, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshlrev_b32_e32 v9, 1, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v4, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v42, 1, v0
	v_and_b32_e32 v2, 0x7c, v8
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v43, 15, v0
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr56
                                        ; implicit-def: $vgpr57
                                        ; implicit-def: $vgpr58
                                        ; implicit-def: $vgpr59
                                        ; implicit-def: $vgpr60
                                        ; implicit-def: $vgpr61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v44, 0x70, v42
	v_or_b32_e32 v62, v44, v43
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
	s_lshl_b32 s19, s6, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s6, s6, s5
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s9, s19
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 91 20 is_stmt 0               ; generate_amdgcn.py:91:20
	s_min_i32 s20, s7, 4
	.loc	1 92 29 is_stmt 1               ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s16, s20
	s_abs_i32 s6, s2
	s_cvt_f32_u32 s7, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[28:29], s[10:11]
	s_sub_i32 s10, 0, s16
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_and_b32_e32 v1, 14, v9
	s_mov_b32 s11, 0x31027000
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s7, s7, 0x4f7ffffe
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s31, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s10, s10, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s7, s10
	s_mov_b32 s10, 0x7ffffffe
	s_add_i32 s7, s7, s5
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s30, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s5, s6, s7
	s_xor_b32 s7, s2, s20
	s_mul_i32 s17, s5, s16
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s6, s6, s17
	s_add_i32 s17, s5, 1
	s_sub_i32 s18, s6, s16
	s_cmp_ge_u32 s6, s16
	s_cselect_b32 s5, s17, s5
	s_cselect_b32 s6, s18, s6
	s_add_i32 s17, s5, 1
	s_cmp_ge_u32 s6, s16
	s_cselect_b32 s5, s17, s5
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s6, s4, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s18, s5, s7
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s34, s27, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s4, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s4, s6
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s18, s7
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s16, s3, 4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s34, v4, v[2:3]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s17, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s20, s6, s20
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v10, s16, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s5, s21, 31
.Ltmp15:
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_mad_u64_u32 v[6:7], null, s17, v3, v[1:2]
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s20
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v11, s16, v4
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s4, s5, 27
.Ltmp17:
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s19
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s22, s34, s16
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s26, s6, 7
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s23, s21, s4
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e32 vcc_lo, s17, v10
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s5, 16, v10
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s33, s2, 6
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s6, s17, v11
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e64 s4, 16, v11
.Ltmp20:
	.loc	2 43 12 is_stmt 1               ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s23, 5
.Ltmp21:
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s26, s22, v5
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	s_mul_i32 s19, s33, s17
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 31
	.loc	1 162 34                        ; generate_amdgcn.py:162:34
	v_add3_u32 v6, s16, s19, v6
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s19, s5, vcc_lo
	s_and_b32 s6, s4, s6
	.loc	1 174 43                        ; generate_amdgcn.py:174:43
	v_add_nc_u32_e32 v7, s27, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s19
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_and_b32 s9, s9, 0xffff
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 vcc_lo, s2, s6
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_and_b32 s29, s29, 0xffff
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v10, v6, s[8:11], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b32 v11, v5, s[28:31], 0 offen
	buffer_load_b32 v7, v7, s[28:31], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_bfe_i32 v5, v0, 6, 1
	v_and_b32_e32 v6, 0x37e, v9
	v_and_b32_e32 v9, 0x108, v0
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v65, 0, v8
	s_mov_b32 s6, -1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_and_b32_e32 v5, 0x88, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s21, 63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_xor_b32_e32 v5, v5, v6
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v6, 4, v0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v66, 0, v5
	v_lshl_or_b32 v5, v43, 4, v9
                                        ; implicit-def: $vgpr9
	s_waitcnt vmcnt(2)
	ds_store_b16 v66, v10 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v65, v11, v7 offset1:8
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_or_b32_e32 v9, v44, v43
	s_mov_b32 s6, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v47, 0x80, v9
	v_or_b32_e32 v48, 0x100, v9
	v_or_b32_e32 v49, 0x180, v9
	v_or_b32_e32 v50, 0x200, v9
	v_or_b32_e32 v51, 0x280, v9
	v_or_b32_e32 v52, 0x300, v9
	v_or_b32_e32 v53, 0x380, v9
	v_or_b32_e32 v54, 0x400, v9
	v_or_b32_e32 v55, 0x480, v9
	v_or_b32_e32 v56, 0x500, v9
	v_or_b32_e32 v57, 0x580, v9
	v_or_b32_e32 v58, 0x600, v9
	v_or_b32_e32 v59, 0x680, v9
	v_or_b32_e32 v60, 0x700, v9
	v_or_b32_e32 v61, 0x780, v9
.LBB0_2:                                ; %Flow310
	.loc	1 0 26 is_stmt 0                ; generate_amdgcn.py:0:26
	s_load_b64 s[24:25], s[0:1], 0x20
	v_dual_mov_b32 v10, 0 :: v_dual_and_b32 v45, 16, v6
	v_xor_b32_e32 v6, 8, v5
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v18, 0 :: v_dual_add_nc_u32 v63, 0, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v11, 0 :: v_dual_add_nc_u32 v64, 0, v6
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v17, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_add_i32 s1, s35, -1
	s_cbranch_vccnz .LBB0_6
; %bb.3:                                ; %.lr.ph
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_and_b32_e32 v5, 0xe0, v0
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v6, 1, v4
	v_sub_nc_u32_e32 v68, s17, v4
	v_add3_u32 v7, s33, v45, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, s18, 8, v5
	v_lshl_or_b32 v6, s3, 5, v6
	s_lshl_b32 s3, s7, 8
	s_lshl_b32 s18, s18, 7
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v3, s33, v3
	v_add_nc_u32_e32 v4, s34, v5
	v_add_nc_u32_e32 v9, 33, v6
	v_add_nc_u32_e32 v6, 32, v6
	v_subrev_nc_u32_e32 v71, s3, v5
	s_lshl_b32 s7, s7, 7
	v_subrev_nc_u32_e32 v70, s3, v4
	v_mul_lo_u32 v9, s27, v9
	v_mul_lo_u32 v4, s27, v6
	v_sub_nc_u32_e32 v67, s17, v1
	v_or_b32_e32 v47, 0x80, v62
	v_or_b32_e32 v48, 0x100, v62
	v_or_b32_e32 v49, 0x180, v62
	v_or_b32_e32 v50, 0x200, v62
	v_or_b32_e32 v51, 0x280, v62
	v_add3_u32 v5, v9, s18, v2
	v_add3_u32 v2, v4, s18, v2
	v_or_b32_e32 v52, 0x300, v62
	v_or_b32_e32 v53, 0x380, v62
	v_or_b32_e32 v54, 0x400, v62
	v_subrev_nc_u32_e32 v74, s7, v5
	v_subrev_nc_u32_e32 v75, s7, v2
	s_add_i32 s7, s16, 16
	s_mov_b32 s16, 0
	v_mad_u64_u32 v[9:10], null, s17, v3, v[1:2]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_add_nc_u32_e32 v8, 32, v7
	v_mul_lo_u32 v7, s35, v7
	v_or_b32_e32 v55, 0x480, v62
	v_or_b32_e32 v56, 0x500, v62
	v_or_b32_e32 v57, 0x580, v62
	v_mul_lo_u32 v8, s35, v8
	v_or_b32_e32 v58, 0x600, v62
	v_or_b32_e32 v59, 0x680, v62
	v_or_b32_e32 v60, 0x700, v62
	v_lshlrev_b32_e32 v73, 1, v7
	v_or_b32_e32 v61, 0x780, v62
	v_lshlrev_b32_e32 v69, 1, v46
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v76, 0, v62
	v_lshlrev_b32_e32 v72, 1, v8
	v_dual_mov_b32 v1, s16 :: v_dual_mov_b32 v2, s17
	v_dual_mov_b32 v3, s18 :: v_dual_mov_b32 v4, s19
	v_dual_mov_b32 v5, s20 :: v_dual_mov_b32 v6, s21
	v_dual_mov_b32 v7, s22 :: v_dual_mov_b32 v8, s23
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_max_i32 s6, s1, 1
	s_and_b32 s37, s13, 0xffff
	s_mov_b32 s36, s12
	s_and_b32 s41, s15, 0xffff
	s_mov_b32 s40, s14
	s_lshl_b32 s0, s27, 2
	s_lshl_b32 s3, s6, 1
	s_lshl_b32 s6, s27, 5
	s_mov_b32 s30, s10
	s_mov_b32 s31, s11
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_4:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v67
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v77, s7, v9
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e32 v77, 0x80000000, v77, vcc_lo
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e32 vcc_lo, s7, v68
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s7, s7, 16
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_u16 v77, v77, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[95:98], v63 offset0:8 offset1:9
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v78, v76 offset:640
	ds_load_u8 v79, v76 offset:896
	ds_load_u8 v80, v76 offset:768
	ds_load_u8 v81, v76 offset:512
	ds_load_u8 v82, v76 offset:128
	ds_load_u8 v83, v76 offset:384
	ds_load_u8 v84, v76 offset:256
	ds_load_u8 v85, v76
	ds_load_u8 v86, v76 offset:1664
	ds_load_u8 v87, v76 offset:1920
	ds_load_u8 v88, v76 offset:1792
	ds_load_u8 v89, v76 offset:1536
	ds_load_u8 v90, v76 offset:1152
	ds_load_u8 v91, v76 offset:1408
	ds_load_u8 v92, v76 offset:1280
	ds_load_u8 v93, v76 offset:1024
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	ds_load_u8 v94, v76 offset:2688
	ds_load_u8 v103, v76 offset:2944
	ds_load_u8 v104, v76 offset:2816
	ds_load_u8 v105, v76 offset:2560
	ds_load_u8 v106, v76 offset:2176
	ds_load_u8 v107, v76 offset:2432
	ds_load_u8 v108, v76 offset:2304
	ds_load_u8 v109, v76 offset:2048
	ds_load_u8 v110, v76 offset:3712
	ds_load_u8 v111, v76 offset:3968
	ds_load_u8 v112, v76 offset:3840
	ds_load_u8 v113, v76 offset:3584
	ds_load_u8 v114, v76 offset:3200
	ds_load_u8 v115, v76 offset:3328
	ds_load_u8 v116, v76 offset:3072
	ds_load_u8 v117, v76 offset:3456
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_2addr_stride64_b64 v[99:102], v64 offset0:8 offset1:9
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(29)
	v_perm_b32 v78, v81, v78, 0xc0c0004
	v_perm_b32 v79, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v80, v85, v82, 0xc0c0004
	v_perm_b32 v81, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(21)
	v_perm_b32 v82, v89, v86, 0xc0c0004
	v_perm_b32 v83, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v84, v93, v90, 0xc0c0004
	v_perm_b32 v85, v92, v91, 0xc0c0004
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v86, v105, v94, 0xc0c0004
	v_perm_b32 v87, v104, v103, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v94, v79, 16, v78
	v_lshl_or_b32 v93, v81, 16, v80
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v88, v109, v106, 0xc0c0004
	v_perm_b32 v89, v108, v107, 0xc0c0004
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_lshl_or_b32 v104, v83, 16, v82
	v_lshl_or_b32 v103, v85, 16, v84
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v106, v87, 16, v86
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[79:86], v[93:94], v[97:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v90, v113, v110, 0xc0c0004
	v_perm_b32 v91, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v92, v116, v114, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v107, v115, v117, 0xc0c0004
	v_lshl_or_b32 v105, v89, 16, v88
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[79:86], v[103:104], v[101:102], v[79:86] neg_lo:[1,1,0]
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v108, v91, 16, v90
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_lshl_or_b32 v107, v107, 16, v92
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v111, v81
	v_cvt_f32_i32_e32 v113, v83
	v_cvt_f32_i32_e32 v81, v85
	v_cvt_f32_i32_e32 v83, v86
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[85:92], v[105:106], v[97:98], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v109, v79
	v_cvt_f32_i32_e32 v110, v80
	v_cvt_f32_i32_e32 v112, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[85:92], v[107:108], v[101:102], v[85:92] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v84, v84
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v97, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v98, v86
	v_cvt_f32_i32_e32 v101, v87
	v_cvt_f32_i32_e32 v102, v88
	v_cvt_f32_i32_e32 v114, v89
	v_cvt_f32_i32_e32 v115, v90
	v_cvt_f32_i32_e32 v116, v91
	v_cvt_f32_i32_e32 v117, v92
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[85:92], v[93:94], v[95:96], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[85:92], v[103:104], v[99:100], v[85:92] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v118, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v119, v88
	v_cvt_f32_i32_e32 v120, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v80, v90
	v_cvt_f32_i32_e32 v78, v91
	v_cvt_f32_i32_e32 v79, v92
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[105:106], v[95:96], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v103, v85
	v_cvt_f32_i32_e32 v104, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 175 36                        ; generate_amdgcn.py:175:36
	v_wmma_i32_16x16x16_iu4 v[87:94], v[107:108], v[99:100], v[87:94] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v85, v91
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v91, s16, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v95, v88
	v_cvt_f32_i32_e32 v88, v89
	v_cvt_f32_i32_e32 v89, v92
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v92, v69, v71
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v82, v93
	v_cvt_f32_i32_e32 v86, v94
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v91, v91, s[36:39], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v93, v92, s[40:43], 0 offen
	buffer_load_u16 v94, v92, s[40:43], 0 offen offset:4
	buffer_load_u16 v96, v92, s[40:43], 0 offen offset:8
	buffer_load_u16 v99, v92, s[40:43], 0 offen offset:12
	buffer_load_u16 v100, v92, s[40:43], 0 offen offset:16
	buffer_load_u16 v105, v92, s[40:43], 0 offen offset:20
	buffer_load_u16 v106, v92, s[40:43], 0 offen offset:24
	buffer_load_u16 v92, v92, s[40:43], 0 offen offset:28
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v87, v87
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v71, s0, v71
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v91, 16, v91
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v107, v91, v109 :: v_dual_lshlrev_b32 v100, 16, v100
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v106, 16, v106
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v29, v107, v93 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_nc_u32_e32 v107, s16, v73
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s16, s16, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	s_cmp_lg_u32 s3, s16
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v107, v107, s[36:39], 0 offen
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v107, 16, v107
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v103, v107, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v40, v103, v93 :: v_dual_lshlrev_b32 v93, 16, v94
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v91, v110
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v30, v94, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v94, v107, v104
	v_mul_f32_e32 v104, v91, v113
	v_mul_f32_e32 v84, v91, v84
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v98, v91, v98
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v102, v91, v102 :: v_dual_fmac_f32 v41, v94, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v94, v91, v111 :: v_dual_lshlrev_b32 v93, 16, v96
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v96, 16, v99
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v99, v91, v112
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v21, v104, v100
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v111, v91, v117
	v_mul_f32_e32 v110, v91, v114
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v81, v91, v81
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v26, v99, v96 :: v_dual_fmac_f32 v25, v94, v93
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v108, v107, v120
	v_mul_f32_e32 v94, v107, v118
	v_mul_f32_e32 v103, v107, v119
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v95, v107, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v90, v107, v90 :: v_dual_fmac_f32 v33, v108, v100
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v37, v94, v93
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_nc_u32_e32 v93, v69, v70
	s_clause 0x3
	buffer_load_u16 v100, v93, s[40:43], 0 offen offset:16
	buffer_load_u16 v108, v93, s[40:43], 0 offen offset:20
	buffer_load_u16 v99, v93, s[40:43], 0 offen
	buffer_load_u16 v104, v93, s[40:43], 0 offen offset:12
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v78, v107, v78
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_dual_cndmask_b32 v94, 0x80000000, v75 :: v_dual_mul_f32 v101, v91, v101
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v109, v91, v115
	v_mul_f32_e32 v88, v107, v88
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v80, v107, v80 :: v_dual_add_nc_u32 v75, s6, v75
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v87, v107, v87
	v_mul_f32_e32 v86, v107, v86
	v_mul_f32_e32 v82, v107, v82
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v83, v91, v83 :: v_dual_add_nc_u32 v70, s0, v70
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v34, v80, v105
	v_fmac_f32_e32 v22, v84, v105
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v108, 16, v108
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v89, v107, v89 :: v_dual_fmac_f32 v12, v78, v106
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v79, v107, v79 :: v_dual_lshlrev_b32 v104, 16, v104
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v85, v107, v85
	.loc	1 174 35                        ; generate_amdgcn.py:174:35
	v_cndmask_b32_e32 v107, 0x80000000, v74, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v74, s6, v74
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v38, v103, v96
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_clause 0x3
	buffer_load_u16 v96, v93, s[40:43], 0 offen offset:4
	buffer_load_u16 v103, v93, s[40:43], 0 offen offset:8
	buffer_load_u16 v112, v93, s[40:43], 0 offen offset:28
	buffer_load_u16 v93, v93, s[40:43], 0 offen offset:24
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_clause 0x1
	buffer_load_b32 v94, v94, s[28:31], 0 offen
	buffer_load_b32 v107, v107, s[28:31], 0 offen
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v97, v91, v97
	v_mul_f32_e32 v91, v91, v116
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v36, v90, v104
	v_fmac_f32_e32 v32, v89, v108
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v13, v79, v92
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fmac_f32_e32 v19, v110, v100
	v_fmac_f32_e32 v20, v109, v108
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v10, v83, v92
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_store_b16 v66, v77 offset:4096
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v65, v94, v107 offset1:8
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v96, 16, v96
	v_lshlrev_b32_e32 v103, 16, v103
	v_lshlrev_b32_e32 v112, 16, v112
	v_lshlrev_b32_e32 v93, 16, v93
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v11, v81, v106
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_dual_fmac_f32 v17, v87, v99 :: v_dual_fmac_f32 v28, v98, v96
	v_fmac_f32_e32 v39, v95, v96
	v_dual_fmac_f32 v35, v88, v103 :: v_dual_fmac_f32 v24, v102, v104
	v_dual_fmac_f32 v31, v85, v100 :: v_dual_fmac_f32 v16, v91, v93
	v_fmac_f32_e32 v14, v82, v93
	v_fmac_f32_e32 v15, v86, v112
	v_dual_fmac_f32 v27, v97, v99 :: v_dual_fmac_f32 v18, v111, v112
	v_fmac_f32_e32 v23, v101, v103
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v9, v62
.LBB0_6:                                ; %._crit_edge
	.loc	1 162 26 is_stmt 1              ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[5:8], v63 offset0:8 offset1:9
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[1:4], v64 offset0:8 offset1:9
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	v_cndmask_b32_e64 v62, 0, 1, s2
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v85, 0, v58
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v82, 0, v61
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_ne_u32_e64 s0, 1, v62
	v_dual_mov_b32 v71, 0 :: v_dual_add_nc_u32 v78, 0, v60
	v_add_nc_u32_e32 v84, 0, v59
	v_dual_mov_b32 v59, 0 :: v_dual_add_nc_u32 v80, 0, v57
	v_dual_mov_b32 v60, 0 :: v_dual_add_nc_u32 v81, 0, v56
	v_dual_mov_b32 v70, 0 :: v_dual_add_nc_u32 v79, 0, v55
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v83, 0, v54
	v_add_nc_u32_e32 v90, 0, v53
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v86, 0, v52
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v92, 0, v51
	v_dual_mov_b32 v54, 0 :: v_dual_add_nc_u32 v93, 0, v50
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v88, 0, v49
	v_dual_mov_b32 v56, 0 :: v_dual_add_nc_u32 v89, 0, v48
	v_dual_mov_b32 v58, 0 :: v_dual_add_nc_u32 v87, 0, v47
	v_dual_mov_b32 v48, 0 :: v_dual_add_nc_u32 v91, 0, v9
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v47, 0
	v_mov_b32_e32 v49, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_mov_b32 s4, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_8
; %bb.7:
	ds_load_u8 v9, v92
	ds_load_u8 v47, v93
	ds_load_u8 v48, v90
	ds_load_u8 v49, v91
	ds_load_u8 v50, v88
	ds_load_u8 v51, v89
	ds_load_u8 v52, v86
	ds_load_u8 v53, v87
	ds_load_u8 v54, v84
	ds_load_u8 v57, v85
	ds_load_u8 v58, v82
	ds_load_u8 v59, v83
	ds_load_u8 v60, v80
	ds_load_u8 v61, v81
	ds_load_u8 v62, v78
	ds_load_u8 v63, v79
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v9, v47, v9, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v101, s11 :: v_dual_mov_b32 v100, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v47, v52, v48, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v48, v49, v53, 0xc0c0004
	v_perm_b32 v49, v51, v50, 0xc0c0004
	v_dual_mov_b32 v99, s9 :: v_dual_mov_b32 v98, s8
	v_lshl_or_b32 v56, v47, 16, v9
	v_dual_mov_b32 v97, s7 :: v_dual_mov_b32 v96, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v55, v49, 16, v48
	v_dual_mov_b32 v95, s5 :: v_dual_mov_b32 v94, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v9, v57, v54, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v57, v62, v58, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v59, v59, v63, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[47:54], v[55:56], v[5:6], v[94:101] neg_lo:[1,1,0]
	v_lshl_or_b32 v58, v57, 16, v9
	v_wmma_i32_16x16x16_iu4 v[94:101], v[55:56], v[7:8], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v60, 16, v59
	v_wmma_i32_16x16x16_iu4 v[47:54], v[57:58], v[1:2], v[47:54] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[57:58], v[3:4], v[94:101] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v69, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v48
	v_cvt_f32_i32_e32 v70, v49
	v_cvt_f32_i32_e32 v72, v50
	v_cvt_f32_i32_e32 v59, v51
	v_cvt_f32_i32_e32 v60, v52
	v_cvt_f32_i32_e32 v9, v53
	v_cvt_f32_i32_e32 v47, v54
	v_cvt_f32_i32_e32 v54, v94
	v_cvt_f32_i32_e32 v57, v95
	v_cvt_f32_i32_e32 v56, v96
	v_cvt_f32_i32_e32 v58, v97
	v_cvt_f32_i32_e32 v53, v98
	v_cvt_f32_i32_e32 v55, v99
	v_cvt_f32_i32_e32 v48, v100
	v_cvt_f32_i32_e32 v49, v101
.LBB0_8:
	.loc	1 0 20 is_stmt 0                ; generate_amdgcn.py:0:20
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v66, 0
	v_mov_b32_e32 v67, 0
	.loc	1 175 36 is_stmt 1              ; generate_amdgcn.py:175:36
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	ds_load_u8 v50, v92 offset:2048
	ds_load_u8 v51, v93 offset:2048
	ds_load_u8 v52, v90 offset:2048
	ds_load_u8 v61, v91 offset:2048
	ds_load_u8 v62, v88 offset:2048
	ds_load_u8 v63, v89 offset:2048
	ds_load_u8 v64, v86 offset:2048
	ds_load_u8 v65, v87 offset:2048
	ds_load_u8 v66, v84 offset:2048
	ds_load_u8 v67, v85 offset:2048
	ds_load_u8 v68, v82 offset:2048
	ds_load_u8 v73, v83 offset:2048
	ds_load_u8 v74, v80 offset:2048
	ds_load_u8 v75, v81 offset:2048
	ds_load_u8 v76, v78 offset:2048
	ds_load_u8 v77, v79 offset:2048
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v85, s11 :: v_dual_mov_b32 v84, s10
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v51, v64, v52, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v61, v65, 0xc0c0004
	v_perm_b32 v61, v63, v62, 0xc0c0004
	v_dual_mov_b32 v83, s9 :: v_dual_mov_b32 v82, s8
	v_lshl_or_b32 v51, v51, 16, v50
	v_dual_mov_b32 v81, s7 :: v_dual_mov_b32 v80, s6
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v50, v61, 16, v52
	v_dual_mov_b32 v79, s5 :: v_dual_mov_b32 v78, s4
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v52, v67, v66, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v61, v76, v68, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v73, v77, 0xc0c0004
	v_perm_b32 v63, v75, v74, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[86:93], v[50:51], v[5:6], v[78:85] neg_lo:[1,1,0]
	v_lshl_or_b32 v6, v61, 16, v52
	v_wmma_i32_16x16x16_iu4 v[78:85], v[50:51], v[7:8], v[78:85] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v5, v63, 16, v62
	v_wmma_i32_16x16x16_iu4 v[86:93], v[5:6], v[1:2], v[86:93] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[78:85], v[5:6], v[3:4], v[78:85] neg_lo:[1,1,0]
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_cvt_f32_i32_e32 v68, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v87
	v_cvt_f32_i32_e32 v75, v88
	v_cvt_f32_i32_e32 v77, v89
	v_cvt_f32_i32_e32 v73, v90
	v_cvt_f32_i32_e32 v74, v91
	v_cvt_f32_i32_e32 v50, v92
	v_cvt_f32_i32_e32 v51, v93
	v_cvt_f32_i32_e32 v62, v78
	v_cvt_f32_i32_e32 v65, v79
	v_cvt_f32_i32_e32 v64, v80
	v_cvt_f32_i32_e32 v67, v81
	v_cvt_f32_i32_e32 v61, v82
	v_cvt_f32_i32_e32 v63, v83
	v_cvt_f32_i32_e32 v52, v84
	v_cvt_f32_i32_e32 v66, v85
.LBB0_10:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	s_waitcnt lgkmcnt(0)
	v_or_b32_e32 v2, v45, v43
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_mul_i32 s0, s33, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, v46, v44
	.loc	1 179 36                        ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s34
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v1, 32, v2
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v4, s35, v2
	s_add_i32 s1, s0, s1
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s17, s13, 0xffff
	s_mov_b32 s19, 0x31027000
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v5, s35, v1
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_mov_b32 s16, s12
	.loc	1 179 26 is_stmt 1              ; generate_amdgcn.py:179:26
	s_add_i32 s0, s26, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v4, s1, v4, 1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v6, 2, v3
	v_or_b32_e32 v7, 4, v3
	v_or_b32_e32 v8, 6, v3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v5, s1, v5, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 182 35                        ; generate_amdgcn.py:182:35
	s_add_i32 s1, s0, s27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v78, s0, v6, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v83, s1, v3, 1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v6, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v46, s0, v3, 1
	v_cndmask_b32_e64 v78, 0x80000000, v78, s2
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v79, v4, s[16:19], 0 offen
	buffer_load_u16 v80, v5, s[16:19], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v4, s0, v7, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v7, s1, v7, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v5, s0, v8, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v8, s1, v8, 1
	v_cndmask_b32_e64 v83, 0x80000000, v83, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_and_b32 s17, s15, 0xffff
	s_mov_b32 s16, s14
	v_cndmask_b32_e64 v46, 0x80000000, v46, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	s_clause 0x3
	buffer_load_u16 v83, v83, s[16:19], 0 offen
	buffer_load_u16 v85, v6, s[16:19], 0 offen
	buffer_load_u16 v86, v7, s[16:19], 0 offen
	buffer_load_u16 v87, v8, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v44, 10, v3
	v_or_b32_e32 v43, 8, v3
	v_or_b32_e32 v45, 14, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x1
	buffer_load_u16 v46, v46, s[16:19], 0 offen
	buffer_load_u16 v78, v78, s[16:19], 0 offen
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v3, 12, v3
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v82, s0, v44, 1
	v_add_lshl_u32 v81, s0, v43, 1
	v_add_lshl_u32 v7, s0, v45, 1
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v6, s1, v3, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_lshl_u32 v3, s0, v3, 1
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_add_lshl_u32 v43, s1, v43, 1
	v_add_lshl_u32 v44, s1, v44, 1
	v_add_lshl_u32 v84, s1, v45, 1
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v82, 0x80000000, v82, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v81, 0x80000000, v81, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v45, 0x80000000, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_cndmask_b32_e64 v8, 0x80000000, v44, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v84, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x9
	buffer_load_u16 v84, v4, s[16:19], 0 offen
	buffer_load_u16 v88, v5, s[16:19], 0 offen
	buffer_load_u16 v82, v82, s[16:19], 0 offen
	buffer_load_u16 v6, v3, s[16:19], 0 offen
	buffer_load_u16 v7, v7, s[16:19], 0 offen
	buffer_load_u16 v81, v81, s[16:19], 0 offen
	buffer_load_u16 v89, v8, s[16:19], 0 offen
	buffer_load_u16 v45, v45, s[16:19], 0 offen
	buffer_load_u16 v90, v43, s[16:19], 0 offen
	buffer_load_u16 v91, v44, s[16:19], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s33, s33, s27
	v_mul_lo_u32 v3, s27, v2
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.h, 0
	v_and_b32_e32 v0, 16, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v1, s27, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, s19
	v_mov_b16_e32 v44.h, v4.h
	v_mov_b16_e32 v43.h, v4.h
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v8, 16, v80
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v5, 0x78, v42
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v42.h, v4.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v54, v54, v8
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s33, s26, v5
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v62, v62, v8 :: v_dual_lshlrev_b32 v5, 16, v79
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s26, s18
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v80, 16, v83
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v68, v68, v5
	v_mul_f32_e32 v75, v75, v5
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v71, v71, v5
	v_mul_f32_e32 v69, v69, v5
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v77, v77, v5 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v58, v58, v8 :: v_dual_lshlrev_b32 v79, 16, v85
	.loc	1 182 27                        ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v85, 16, v87
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v68, v68, v80, v17
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v78, 16, v78
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v69, v69, v46, v40
	v_fma_f32 v46, v54, v46, v29
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v76, v76, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v17, v17, v68, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v63, v63, v8
	v_dual_mul_f32 v73, v73, v5 :: v_dual_lshlrev_b32 v86, 16, v86
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v29, v29, v46, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v46, 0xbfb8aa3b, v17 :: v_dual_lshlrev_b32 v83, 16, v88
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v56, v56, v8 :: v_dual_lshlrev_b32 v81, 16, v81
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v64, v64, v8 :: v_dual_lshlrev_b32 v87, 16, v89
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v53, v53, v8 :: v_dual_lshlrev_b32 v88, 16, v90
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v76, v76, v79, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v63, v63, v87, v20
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v46
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v70, v70, v5 :: v_dual_mul_f32 v57, v57, v8
	v_dual_mul_f32 v55, v55, v8 :: v_dual_lshlrev_b32 v82, 16, v82
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v75, v75, v86, v35
	v_fma_f32 v77, v77, v85, v36
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v53, v53, v81, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v39, v39, v76, s2
	v_cndmask_b32_e64 v20, v20, v63, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v46, 0, 0x42800000, s0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v60, v60, v5 :: v_dual_mul_f32 v65, v65, v8
	v_dual_mul_f32 v59, v59, v5 :: v_dual_lshlrev_b32 v84, 16, v84
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v74, v74, v5 :: v_dual_mul_f32 v67, v67, v8
	v_mul_f32_e32 v66, v66, v8
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v73, v73, v88, v31
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v54, v57, v78, v30
	v_fma_f32 v55, v55, v82, v22
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v36, v36, v77, s2
	v_cndmask_b32_e64 v35, v35, v75, s2
	v_cndmask_b32_e64 v21, v21, v53, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v53, 0xbfb8aa3b, v39
	v_dual_mul_f32 v63, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v17
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v61, v61, v8
	.loc	1 183 17 is_stmt 0              ; generate_amdgcn.py:183:17
	v_fma_f32 v57, v62, v80, v27
	v_fma_f32 v62, v65, v79, v28
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v56, v56, v84, v25
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v65, v67, v85, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v31, v31, v73, s2
	v_cndmask_b32_e64 v30, v30, v54, s2
	v_cndmask_b32_e64 v22, v22, v55, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_dual_mul_f32 v54, 0xbfb8aa3b, v35 :: v_dual_mul_f32 v55, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v53
	v_exp_f32_e32 v46, v46
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v74, v74, v87, v32
	v_fma_f32 v64, v64, v86, v23
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v25, v25, v56, s2
	v_cndmask_b32_e64 v24, v24, v65, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v56, 0xbfb8aa3b, v31
	v_cndmask_b32_e64 v53, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v55
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v54
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v59, v59, v81, v33
	v_fma_f32 v60, v60, v82, v34
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v61, v61, v88, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v32, v32, v74, s2
	v_cndmask_b32_e64 v28, v28, v62, s2
	v_cndmask_b32_e64 v23, v23, v64, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v55, 0, 0x42800000, s1
	v_cndmask_b32_e64 v54, 0, 0x42800000, s3
	v_ldexp_f32 v46, v46, v65
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v39
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v58, v58, v83, v26
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v34, v34, v60, s2
	v_cndmask_b32_e64 v33, v33, v59, s2
	v_cndmask_b32_e64 v27, v27, v57, s2
	v_cndmask_b32_e64 v19, v19, v61, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v57, 0xbfb8aa3b, v32
	v_dual_mul_f32 v59, 0xbfb8aa3b, v28 :: v_dual_mul_f32 v60, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v61, 0xbfb8aa3b, v24 :: v_dual_mul_f32 v62, 0xbfb8aa3b, v19
	v_dual_fmac_f32 v55, 0xbfb8aa3b, v36 :: v_dual_fmac_f32 v54, 0xbfb8aa3b, v35
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v46, 1.0, v46
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v53, v53
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v26, v26, v58, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v58, 0xbfb8aa3b, v27
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v57
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v56
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v59
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v61
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v60
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v63
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v54, v54
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v72, v72, v5 :: v_dual_lshlrev_b32 v89, 16, v91
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v57, 0, 0x42800000, s4
	v_cndmask_b32_e64 v56, 0, 0x42800000, s5
	v_cndmask_b32_e64 v59, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v58
	v_cndmask_b32_e64 v61, 0, 0x42800000, s8
	v_cndmask_b32_e64 v60, 0, 0x42800000, s9
	v_cndmask_b32_e64 v63, 0, 0x42800000, s10
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v62
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s3
	v_ldexp_f32 v53, v53, v64
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v66, v66, v89, v18
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v58, 0, 0x42800000, s7
	v_cndmask_b32_e64 v62, 0, 0x42800000, s11
	v_dual_fmac_f32 v57, 0xbfb8aa3b, v32 :: v_dual_fmac_f32 v56, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v59, 0xbfb8aa3b, v28 :: v_dual_fmac_f32 v58, 0xbfb8aa3b, v27
	v_dual_fmac_f32 v61, 0xbfb8aa3b, v24 :: v_dual_fmac_f32 v60, 0xbfb8aa3b, v23
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v62, 0xbfb8aa3b, v19
	v_exp_f32_e32 v55, v55
	v_ldexp_f32 v54, v54, v67
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v53, 1.0, v53
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v70, v70, v84, v37
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v18, v66, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s1
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v63, v63
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v54, 1.0, v54
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v64, null, v53, v53, v39
	.loc	1 180 13 is_stmt 1              ; generate_amdgcn.py:180:13
	v_fma_f32 v71, v71, v78, v41
	v_fma_f32 v72, v72, v83, v38
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v40, v40, v69, s2
	v_cndmask_b32_e64 v37, v37, v70, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v73, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v74, 0, 0xffffffc0, s10
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v62, v62
	v_ldexp_f32 v55, v55, v66
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v88, v64
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v41, v41, v71, s2
	v_cndmask_b32_e64 v38, v38, v72, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v71, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v72, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s11
	v_ldexp_f32 v57, v57, v68
	v_ldexp_f32 v56, v56, v69
	v_ldexp_f32 v59, v59, v70
	v_ldexp_f32 v60, v60, v73
	v_ldexp_f32 v63, v63, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v55, 1.0, v55 :: v_dual_add_f32 v56, 1.0, v56
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v58, v58, v71
	v_ldexp_f32 v61, v61, v72
	v_ldexp_f32 v62, v62, v75
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v57, 1.0, v57
	v_dual_add_f32 v59, 1.0, v59 :: v_dual_add_f32 v60, 1.0, v60
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v66, null, v46, v46, v17
	v_div_scale_f32 v68, null, v55, v55, v36
	v_div_scale_f32 v70, null, v54, v54, v35
	v_fma_f32 v101, -v64, v88, 1.0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v63, 1.0, v63 :: v_dual_add_f32 v58, 1.0, v58
	v_dual_add_f32 v61, 1.0, v61 :: v_dual_add_f32 v62, 1.0, v62
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v72, null, v57, v57, v32
	v_div_scale_f32 v74, null, v56, v56, v31
	v_div_scale_f32 v76, null, v59, v59, v28
	v_div_scale_f32 v82, null, v60, v60, v23
	v_rcp_f32_e32 v90, v66
	v_rcp_f32_e32 v91, v68
	v_rcp_f32_e32 v92, v70
	v_fmac_f32_e32 v88, v101, v88
	v_div_scale_f32 v84, null, v63, v63, v20
	v_div_scale_f32 v78, null, v58, v58, v27
	v_div_scale_f32 v86, null, v62, v62, v19
	v_rcp_f32_e32 v93, v72
	v_rcp_f32_e32 v94, v74
	v_rcp_f32_e32 v95, v76
	v_rcp_f32_e32 v98, v82
	v_rcp_f32_e32 v99, v84
	v_div_scale_f32 v65, s0, v39, v53, v39
	v_div_scale_f32 v80, null, v61, v61, v24
	v_rcp_f32_e32 v96, v78
	v_rcp_f32_e32 v100, v86
	v_fma_f32 v102, -v66, v90, 1.0
	v_fma_f32 v103, -v68, v91, 1.0
	v_fma_f32 v104, -v70, v92, 1.0
	v_div_scale_f32 v67, s1, v17, v46, v17
	v_div_scale_f32 v71, s4, v35, v54, v35
	v_rcp_f32_e32 v97, v80
	v_fma_f32 v105, -v72, v93, 1.0
	v_fma_f32 v106, -v74, v94, 1.0
	v_fma_f32 v107, -v76, v95, 1.0
	v_fma_f32 v110, -v82, v98, 1.0
	v_fma_f32 v111, -v84, v99, 1.0
	v_dual_fmac_f32 v90, v102, v90 :: v_dual_fmac_f32 v91, v103, v91
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_fmac_f32 v93, v105, v93
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v101, v65, v88 :: v_dual_mul_f32 v102, v67, v90
	v_div_scale_f32 v69, s3, v36, v55, v36
	v_div_scale_f32 v73, s5, v32, v57, v32
	v_div_scale_f32 v75, s6, v31, v56, v31
	v_div_scale_f32 v77, vcc_lo, v28, v59, v28
	v_div_scale_f32 v85, s10, v20, v63, v20
	v_fma_f32 v108, -v78, v96, 1.0
	v_fma_f32 v112, -v86, v100, 1.0
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_fmac_f32 v95, v107, v95
	v_dual_fmac_f32 v98, v110, v98 :: v_dual_fmac_f32 v99, v111, v99
	v_dual_mul_f32 v104, v71, v92 :: v_dual_mul_f32 v105, v73, v93
	v_fma_f32 v111, -v64, v101, v65
	v_div_scale_f32 v79, s7, v27, v58, v27
	v_div_scale_f32 v83, s9, v23, v60, v23
	v_fma_f32 v109, -v80, v97, 1.0
	v_fmac_f32_e32 v96, v108, v96
	v_dual_fmac_f32 v100, v112, v100 :: v_dual_mul_f32 v103, v69, v91
	v_dual_mul_f32 v106, v75, v94 :: v_dual_mul_f32 v107, v77, v95
	v_dual_mul_f32 v112, v85, v99 :: v_dual_fmac_f32 v101, v111, v88
	v_fma_f32 v113, -v66, v102, v67
	v_fma_f32 v111, -v70, v104, v71
	v_div_scale_f32 v81, s8, v24, v61, v24
	v_div_scale_f32 v87, s11, v19, v62, v19
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v108, v79, v96
	v_fma_f32 v115, -v68, v103, v69
	v_fmac_f32_e32 v102, v113, v90
	v_fma_f32 v113, -v72, v105, v73
	v_mul_f32_e32 v110, v83, v98
	v_fmac_f32_e32 v104, v111, v92
	v_fma_f32 v111, -v76, v107, v77
	v_dual_mul_f32 v109, v81, v97 :: v_dual_mul_f32 v114, v87, v100
	.loc	1 182 27 is_stmt 1              ; generate_amdgcn.py:182:27
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v105, v113, v93
	v_fma_f32 v113, -v78, v108, v79
	v_fmac_f32_e32 v107, v111, v95
	v_fma_f32 v111, -v82, v110, v83
	v_fmac_f32_e32 v103, v115, v91
	v_fma_f32 v64, -v64, v101, v65
	v_fmac_f32_e32 v108, v113, v96
	v_fma_f32 v65, -v66, v102, v67
	v_fmac_f32_e32 v110, v111, v98
	v_fma_f32 v111, -v86, v114, v87
	v_fma_f32 v115, -v74, v106, v75
	v_fma_f32 v113, -v84, v112, v85
	v_fma_f32 v66, -v68, v103, v69
	v_fma_f32 v68, -v72, v105, v73
	v_dual_fmac_f32 v114, v111, v100 :: v_dual_mul_f32 v111, 0xbfb8aa3b, v18
	v_fma_f32 v67, -v70, v104, v71
	v_fma_f32 v70, -v76, v107, v77
	v_fma_f32 v71, -v78, v108, v79
	v_fmac_f32_e32 v112, v113, v99
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v113.h, v4.h
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v6, 16, v6
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v70, v70, v95, v107
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v71, v71, v96, v108
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fixup_f32 v28, v70, v59, v28
	v_div_fmas_f32 v64, v64, v88, v101
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v27, v71, v58, v27
	v_fmac_f32_e32 v106, v115, v94
	v_fma_f32 v115, -v80, v109, v81
	v_div_fixup_f32 v39, v64, v53, v39
	v_div_fmas_f32 v59, v65, v90, v102
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v28, v30, v28 :: v_dual_fmac_f32 v109, v115, v97
	v_mul_f32_e32 v39, v41, v39
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v73, -v82, v110, v83
	v_div_fixup_f32 v17, v59, v46, v17
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v27, v29, v27
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v72, -v80, v109, v81
	v_fma_f32 v69, -v74, v106, v75
	v_fma_f32 v74, -v84, v112, v85
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v17, v40, v17
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v75, -v86, v114, v87
	v_div_fmas_f32 v58, v72, v97, v109
	s_mov_b32 vcc_lo, s9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v44.l, v27.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v30, v73, v98, v110
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v58, v61, v24
	v_div_fmas_f32 v29, v66, v91, v103
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v23, v30, v60, v23
	v_div_fmas_f32 v41, v67, v92, v104
	s_mov_b32 vcc_lo, s10
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v24, v26, v24
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v30, v74, v99, v112
	s_mov_b32 vcc_lo, s11
	.loc	1 183 29 is_stmt 1              ; generate_amdgcn.py:183:29
	v_dual_mul_f32 v52, v52, v8 :: v_dual_mul_f32 v23, v25, v23
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v26, v75, v100, v114
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v29, v29, v55, v36
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v39.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v35, v41, v54, v35
	v_div_fmas_f32 v25, v68, v93, v105
	s_mov_b32 vcc_lo, s6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v43.l, v17.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v20, v30, v63, v20
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v29, v38, v29 :: v_dual_and_b32 v30, 1, v44
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v36, v69, v94, v106
	v_div_fixup_f32 v19, v26, v62, v19
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v35, v37, v35
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v25, v25, v57, v32
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v26, 1, v4
	v_mov_b16_e32 v4.l, v28.h
	v_and_b32_e32 v32, 1, v43
	v_cmp_o_f32_e64 s1, v27, v27
	v_add3_u32 v27, v27, v30, 0x7fff
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v30, v36, v56, v31
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v31, 1, v4
	v_mov_b16_e32 v4.l, v29.h
	v_mov_b16_e32 v42.l, v35.h
	v_cmp_o_f32_e64 s4, v17, v17
	v_add3_u32 v17, v17, v32, 0x7fff
	v_cmp_o_f32_e64 s0, v28, v28
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s1
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v27, v33, v30 :: v_dual_and_b32 v30, 1, v4
	v_mul_f32_e32 v19, v21, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v28, v28, v31, 0x7fff
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_dual_mul_f32 v20, v22, v20 :: v_dual_and_b32 v31, 1, v42
	v_mul_f32_e32 v25, v34, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v26, v39, v26, 0x7fff
	v_mov_b16_e32 v115.h, v4.h
	v_mov_b16_e32 v115.l, v23.h
	v_cmp_o_f32_e64 s6, v29, v29
	v_cmp_o_f32_e64 s7, v35, v35
	v_mov_b16_e32 v4.l, v24.h
	v_cndmask_b16 v26.l, 0x7fff, v17.h, s4
	v_cndmask_b16 v17.h, 0x7fff, v28.h, s0
	v_add3_u32 v28, v29, v30, 0x7fff
	v_add3_u32 v29, v35, v31, 0x7fff
	v_and_b32_e32 v36, 1, v115
	v_and_b32_e32 v32, 1, v4
	v_mov_b16_e32 v4.l, v25.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_cndmask_b16 v28.l, 0x7fff, v29.h, s7
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v29, v52, v45, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s5, v23, v23
	v_mov_b16_e32 v113.l, v27.h
	v_add3_u32 v24, v24, v32, 0x7fff
	v_and_b32_e32 v21, 1, v4
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v16, v16, v29, s2
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v29, v50, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v23, v36, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	v_add3_u32 v21, v25, v21, 0x7fff
	v_mov_b16_e32 v31.l, v19.h
	v_mov_b16_e32 v31.h, v4.h
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s5
	v_cndmask_b16 v23.h, 0x7fff, v24.h, vcc_lo
	v_and_b32_e32 v24, 1, v113
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v111
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s0
	v_cmp_o_f32_e64 s0, v27, v27
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v22, v27, v24, 0x7fff
	.loc	1 183 29                        ; generate_amdgcn.py:183:29
	v_mul_f32_e32 v27, v51, v5
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v30, 0, 0x42800000, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v20.h
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s0
	.loc	1 183 17                        ; generate_amdgcn.py:183:17
	v_fma_f32 v27, v27, v89, v15
	v_fma_f32 v22, v29, v45, v14
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v30, 0xbfb8aa3b, v18
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v44, v49, v8
	v_mul_f32_e32 v8, v48, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v15, v15, v27, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_mul_f32_e32 v24, 0xbfb8aa3b, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v14, v14, v22, s2
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v30
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, vcc_lo
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s3
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v24
	v_mul_f32_e32 v29, 0xbfb8aa3b, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v31, v19, v31, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v24, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_ldexp_f32 v25, v25, v30
	v_cndmask_b32_e64 v27, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v29, 0, 0x42800000, s0
	v_fmac_f32_e32 v24, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, s0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v14
	v_exp_f32_e32 v22, v24
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_dual_add_f32 v24, 1.0, v25 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v29, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v30, null, v24, v24, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v25
	v_ldexp_f32 v22, v22, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v27, v30
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_ldexp_f32 v29, v29, v36
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v33, null, v22, v22, v16
	v_fma_f32 v35, -v30, v27, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 185 44                        ; generate_amdgcn.py:185:44
	v_exp_f32_e32 v25, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v4
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_rcp_f32_e32 v37, v33
	.loc	1 185 38 is_stmt 0              ; generate_amdgcn.py:185:38
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v27, v35, v27
	v_div_scale_f32 v40, s1, v16, v22, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v32, v20, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v38, null, v29, v29, v14
	.loc	1 185 44 is_stmt 0              ; generate_amdgcn.py:185:44
	v_ldexp_f32 v25, v25, v34
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_scale_f32 v34, vcc_lo, v18, v24, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v33, v37, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v32.h, 0x7fff, v32.h, s0
	.loc	1 185 38                        ; generate_amdgcn.py:185:38
	v_dual_add_f32 v25, 1.0, v25 :: v_dual_mul_f32 v20, v34, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 185 26 is_stmt 0              ; generate_amdgcn.py:185:26
	v_fmac_f32_e32 v37, v35, v37
	v_rcp_f32_e32 v35, v38
	v_div_scale_f32 v36, null, v25, v25, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v42, v40, v37 :: v_dual_lshlrev_b32 v7, 16, v7
	v_fma_f32 v41, -v30, v20, v34
	v_rcp_f32_e32 v39, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v45, -v33, v42, v40
	v_fmac_f32_e32 v20, v41, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v38, v35, 1.0
	v_fma_f32 v30, -v30, v20, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v36, v39, 1.0
	v_fmac_f32_e32 v35, v41, v35
	v_fmac_f32_e32 v42, v45, v37
	v_div_scale_f32 v41, s3, v14, v29, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v39
	v_div_scale_f32 v43, s0, v15, v25, v15
	v_fma_f32 v33, -v33, v42, v40
	.loc	1 180 20 is_stmt 1              ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v40, v47, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v5, v9, v5 :: v_dual_mul_f32 v34, v43, v39
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v20, v30, v27, v20
	s_mov_b32 vcc_lo, s1
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v6, v12
	v_fma_f32 v6, v8, v6, v11
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v27, -v36, v34, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v12, v5, s2
	v_cndmask_b32_e64 v6, v11, v6, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_mul_f32_e32 v45, v41, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v27, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.h, v4.h
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_fma_f32 v30, -v38, v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v36, v34, v43
	v_fmac_f32_e32 v45, v30, v35
	v_div_fmas_f32 v9, v33, v37, v42
	s_mov_b32 vcc_lo, s0
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v30, v40, v7, v13
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fmas_f32 v27, v27, v39, v34
	v_fma_f32 v33, -v38, v45, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v44, v7, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v13, v13, v30, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v12, v27, v25, v15
	v_div_fmas_f32 v33, v33, v35, v45
	v_div_fixup_f32 v9, v9, v22, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v7, v10, v7, s2
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v10, v20, v24, v18
	.loc	1 185 19 is_stmt 0              ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v8, v13, v12
	.loc	1 185 26                        ; generate_amdgcn.py:185:26
	v_div_fixup_f32 v14, v33, v29, v14
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v6, v6, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v7, v7, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v4.l, v8.h
	.loc	1 185 19                        ; generate_amdgcn.py:185:19
	v_mul_f32_e32 v5, v5, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e64 s0, 0, v0
	v_cndmask_b16 v32.l, 0x7fff, v31.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v9, 1, v4
	v_mov_b16_e32 v11.l, v5.h
	v_mov_b16_e32 v4.l, v7.h
	v_cmp_o_f32_e64 s1, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v9, v8, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v6, v6
	v_and_b32_e32 v10, 1, v11
	v_mov_b16_e32 v11.l, v6.h
	v_and_b32_e32 v4, 1, v4
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_add3_u32 v8, v5, v10, 0x7fff
	v_and_b32_e32 v10, 1, v11
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cndmask_b32_e64 v0, 0x1054, v0, s0
	v_cndmask_b32_e64 v11, v17, v32, s0
	v_cndmask_b16 v9.l, 0x7fff, v8.h, vcc_lo
	v_add3_u32 v5, v6, v10, 0x7fff
	v_mov_b32_e32 v10, 0x7632
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s1
	v_cndmask_b32_e64 v8, v9, v28, s0
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s2
	v_cndmask_b32_e64 v7, 0x3276, v10, s0
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e64 v9, v28, v9, s0
	s_mov_b32 s1, 0x76543210
	v_cndmask_b32_e64 v12, v4, v23, s0
	v_lshl_or_b32 v5, v7, 8, v7
	v_cndmask_b32_e64 v7, v26, v21, s0
	v_lshl_or_b32 v0, v0, 4, v0
	v_cndmask_b32_e64 v4, v23, v4, s0
	v_cndmask_b32_e64 v6, v21, v26, s0
	v_and_b32_e32 v5, 0x760076, v5
	v_cndmask_b32_e64 v10, v32, v17, s0
	v_permlanex16_b32 v7, v7, s1, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x5040504, v0
	v_permlanex16_b32 v9, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_permlanex16_b32 v11, v11, s1, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v4, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v7, v6, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 0x7060706, v5
	v_perm_b32 v5, v7, v6, v13
	v_perm_b32 v6, v9, v8, v0
	v_perm_b32 v7, v9, v8, v13
	v_perm_b32 v8, v11, v10, v0
	v_perm_b32 v9, v11, v10, v13
	v_perm_b32 v10, v14, v12, v0
	v_add_lshl_u32 v0, v2, v3, 1
	v_perm_b32 v11, v14, v12, v13
	s_clause 0x1
	buffer_store_b128 v[4:7], v0, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v1, s[24:27], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 121
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 121
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9184
; TotalNumSgprs: 46
; NumVgprs: 121
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 121
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc32_swiglu_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     121
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
