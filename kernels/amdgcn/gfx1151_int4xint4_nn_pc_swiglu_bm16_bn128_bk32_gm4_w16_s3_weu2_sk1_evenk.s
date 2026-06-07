	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v136, 2, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v2, v0, 4, 4
	v_lshrrev_b32_e32 v3, 5, v0
	v_and_b32_e32 v194, 15, v0
	v_or_b32_e32 v135, 0x3f0, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v12, 0, v136
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s11, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s10, 15
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
	s_lshr_b32 s10, s10, 28
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
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[20:21], s[18:19]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_mov_b32 s19, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s23, s19
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s22, s18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
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
	s_sub_i32 s12, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s12, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s9, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s6, s8, s9
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s8, s6, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s6, s8
	s_xor_b32 s5, s2, s8
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s12, 0, s6
	s_ashr_i32 s5, s5, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	s_load_b32 s7, s[0:1], 0x38
	v_readfirstlane_b32 s10, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v1, 0x7c, v136
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s10, s10, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s10, s10
	s_mul_i32 s12, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s10, s12
	s_abs_i32 s12, s2
	s_add_i32 s10, s10, s4
	s_mul_hi_u32 s4, s12, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s10, s4, s6
	s_sub_i32 s10, s12, s10
	s_add_i32 s12, s4, 1
	s_sub_i32 s13, s10, s6
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s4, s12, s4
	s_cselect_b32 s10, s13, s10
	s_add_i32 s12, s4, 1
	s_cmp_ge_u32 s10, s6
	s_cselect_b32 s4, s12, s4
	.loc	1 101 14                        ; generate_amdgcn.py:101:14
	s_lshl_b32 s12, s11, 1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s10, s7, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s26, s4, s5
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[4:5], null, s12, v3, v[1:2]
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s7, s10
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s10, s26, s5
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s6, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s27, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s10, s8
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s13, s12, s6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s10, s10, 7
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[5:6], null, s27, v2, v[194:195]
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s9
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v4, s13, s10, v4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s24, s2, 4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s7, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s24, s27
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s4, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_lshl_add_u32 v7, s11, 5, v4
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v5, s6, s2, v5
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v6, s11, v4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s17, s17, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s7, 33
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	v_add_nc_u32_e32 v8, s11, v7
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v9, 16, v5
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s2, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_cndmask_b32_e64 v8, 0x80000000, v8, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v9, 0x80000000, v9, s2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v10, v4, s[20:23], 0 offen
	buffer_load_b32 v6, v6, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v5, v5, s[16:19], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1
	buffer_load_b32 v7, v7, s[20:23], 0 offen
	buffer_load_b32 v8, v8, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v11, v9, s[16:19], 0 offen
	v_bfe_i32 v4, v0, 7, 1
	v_and_b32_e32 v9, 0x7f, v0
	s_mov_b32 s22, 0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s7, 0x41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v4, 0x88, v4
	v_xor_b32_e32 v137, v4, v9
	v_lshlrev_b32_e32 v4, 4, v0
	v_or_b32_e32 v9, 0x7f0, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v13, 0, v137
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b32 v12, v10, v6 offset1:16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(3)
	ds_store_b8 v13, v5 offset:8192
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 0 0                           ; generate_amdgcn.py:0
	s_waitcnt vmcnt(1)
	ds_store_2addr_stride64_b32 v12, v7, v8 offset0:8 offset1:24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(0)
	ds_store_b8 v13, v11 offset:8448
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v5, 0x80, v194
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v134, 0x70, v4
	v_and_b32_e32 v130, 8, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_or_b32_e32 v213, 0x400, v194
	v_or_b32_e32 v216, 0x480, v194
	scratch_store_b32 off, v5, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x100, v194
	v_or_b32_e32 v214, 0x500, v194
	v_or_b32_e32 v215, 0x580, v194
	v_or_b32_e32 v217, 0x600, v194
	v_or_b32_e32 v219, 0x680, v194
	scratch_store_b32 off, v5, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x180, v194
	v_or_b32_e32 v218, 0x700, v194
	v_or_b32_e32 v222, 0x780, v194
	v_or_b32_e32 v220, 0x410, v194
	v_or_b32_e32 v224, 0x490, v194
	scratch_store_b32 off, v5, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x200, v194
	v_or_b32_e32 v221, 0x510, v194
	v_or_b32_e32 v223, 0x590, v194
	v_or_b32_e32 v225, 0x610, v194
	v_or_b32_e32 v227, 0x690, v194
	scratch_store_b32 off, v5, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x280, v194
	v_or_b32_e32 v226, 0x710, v194
	v_or_b32_e32 v230, 0x790, v194
	v_or_b32_e32 v228, 0x420, v194
	v_or_b32_e32 v232, 0x4a0, v194
	scratch_store_b32 off, v5, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x300, v194
	v_or_b32_e32 v229, 0x520, v194
	v_or_b32_e32 v231, 0x5a0, v194
	v_or_b32_e32 v237, 0x620, v194
	v_or_b32_e32 v239, 0x6a0, v194
	scratch_store_b32 off, v5, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x380, v194
	v_or_b32_e32 v238, 0x720, v194
	v_or_b32_e32 v240, 0x7a0, v194
	v_or_b32_e32 v233, 0x430, v194
	v_or_b32_e32 v236, 0x4b0, v194
	scratch_store_b32 off, v5, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 16, v194
	v_or_b32_e32 v234, 0x530, v194
	v_or_b32_e32 v235, 0x5b0, v194
	v_or_b32_e32 v241, 0x630, v194
	v_or_b32_e32 v243, 0x6b0, v194
	scratch_store_b32 off, v5, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x90, v194
	v_or_b32_e32 v242, 0x730, v194
	v_or_b32_e32 v248, 0x7b0, v194
	v_or_b32_e32 v244, 0x440, v194
	v_or_b32_e32 v247, 0x4c0, v194
	scratch_store_b32 off, v5, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x110, v194
	v_or_b32_e32 v245, 0x540, v194
	v_or_b32_e32 v246, 0x5c0, v194
	v_or_b32_e32 v252, 0x640, v194
	v_or_b32_e32 v255, 0x6c0, v194
	scratch_store_b32 off, v5, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x190, v194
	v_or_b32_e32 v254, 0x740, v194
	v_or_b32_e32 v249, 0x450, v194
	v_or_b32_e32 v253, 0x4d0, v194
	v_or_b32_e32 v250, 0x550, v194
	scratch_store_b32 off, v5, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x210, v194
	v_or_b32_e32 v251, 0x5d0, v194
	s_mov_b32 s7, 0
	scratch_store_b32 off, v5, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x290, v194
	scratch_store_b32 off, v5, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x310, v194
	scratch_store_b32 off, v5, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x390, v194
	scratch_store_b32 off, v5, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 32, v194
	scratch_store_b32 off, v5, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xa0, v194
	scratch_store_b32 off, v5, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x120, v194
	scratch_store_b32 off, v5, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1a0, v194
	scratch_store_b32 off, v5, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x220, v194
	scratch_store_b32 off, v5, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2a0, v194
	scratch_store_b32 off, v5, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x320, v194
	scratch_store_b32 off, v5, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3a0, v194
	scratch_store_b32 off, v5, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 48, v194
	scratch_store_b32 off, v5, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xb0, v194
	scratch_store_b32 off, v5, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x130, v194
	scratch_store_b32 off, v5, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1b0, v194
	scratch_store_b32 off, v5, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x230, v194
	scratch_store_b32 off, v5, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2b0, v194
	scratch_store_b32 off, v5, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x330, v194
	scratch_store_b32 off, v5, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3b0, v194
	scratch_store_b32 off, v5, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 64, v194
	scratch_store_b32 off, v5, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xc0, v194
	scratch_store_b32 off, v5, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x140, v194
	scratch_store_b32 off, v5, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1c0, v194
	scratch_store_b32 off, v5, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x240, v194
	scratch_store_b32 off, v5, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2c0, v194
	scratch_store_b32 off, v5, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x340, v194
	scratch_store_b32 off, v5, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3c0, v194
	scratch_store_b32 off, v5, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7c0, v194
	scratch_store_b32 off, v5, off          ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x50, v194
	scratch_store_b32 off, v5, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xd0, v194
	scratch_store_b32 off, v5, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x150, v194
	scratch_store_b32 off, v5, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1d0, v194
	scratch_store_b32 off, v5, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x250, v194
	scratch_store_b32 off, v5, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2d0, v194
	scratch_store_b32 off, v5, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x350, v194
	scratch_store_b32 off, v5, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3d0, v194
	scratch_store_b32 off, v5, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x650, v194
	scratch_store_b32 off, v5, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x6d0, v194
	scratch_store_b32 off, v5, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x750, v194
	scratch_store_b32 off, v5, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7d0, v194
	scratch_store_b32 off, v5, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x60, v194
	scratch_store_b32 off, v5, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xe0, v194
	scratch_store_b32 off, v5, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x160, v194
	scratch_store_b32 off, v5, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1e0, v194
	scratch_store_b32 off, v5, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x260, v194
	scratch_store_b32 off, v5, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2e0, v194
	scratch_store_b32 off, v5, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x360, v194
	scratch_store_b32 off, v5, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3e0, v194
	scratch_store_b32 off, v5, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x460, v194
	scratch_store_b32 off, v5, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x4e0, v194
	scratch_store_b32 off, v5, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x560, v194
	scratch_store_b32 off, v5, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x5e0, v194
	scratch_store_b32 off, v5, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x660, v194
	scratch_store_b32 off, v5, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x6e0, v194
	scratch_store_b32 off, v5, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x760, v194
	scratch_store_b32 off, v5, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7e0, v194
	scratch_store_b32 off, v5, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x70, v194
	scratch_store_b32 off, v5, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0xf0, v194
	scratch_store_b32 off, v5, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x170, v194
	scratch_store_b32 off, v5, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x1f0, v194
	scratch_store_b32 off, v5, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x270, v194
	scratch_store_b32 off, v5, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x2f0, v194
	scratch_store_b32 off, v5, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x370, v194
	scratch_store_b32 off, v5, off offset:156 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x3f0, v0
	scratch_store_b32 off, v5, off offset:164 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x470, v194
	scratch_store_b32 off, v5, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x4f0, v194
	scratch_store_b32 off, v5, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x570, v194
	scratch_store_b32 off, v5, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x5f0, v194
	scratch_store_b32 off, v5, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x670, v194
	scratch_store_b32 off, v5, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x6f0, v194
	scratch_store_b32 off, v5, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x770, v194
	scratch_store_b32 off, v5, off offset:68 ; 4-byte Folded Spill
	v_or_b32_e32 v5, 0x7f0, v0
	scratch_store_b32 off, v5, off offset:72 ; 4-byte Folded Spill
	s_branch .LBB0_3
.LBB0_2:
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s7, -1
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr134
                                        ; implicit-def: $vgpr130
                                        ; implicit-def: $vgpr213
                                        ; implicit-def: $vgpr216
                                        ; implicit-def: $vgpr214
                                        ; implicit-def: $vgpr215
                                        ; implicit-def: $vgpr217
                                        ; implicit-def: $vgpr219
                                        ; implicit-def: $vgpr218
                                        ; implicit-def: $vgpr222
                                        ; implicit-def: $vgpr220
                                        ; implicit-def: $vgpr224
                                        ; implicit-def: $vgpr221
                                        ; implicit-def: $vgpr223
                                        ; implicit-def: $vgpr225
                                        ; implicit-def: $vgpr227
                                        ; implicit-def: $vgpr226
                                        ; implicit-def: $vgpr230
                                        ; implicit-def: $vgpr228
                                        ; implicit-def: $vgpr232
                                        ; implicit-def: $vgpr229
                                        ; implicit-def: $vgpr231
                                        ; implicit-def: $vgpr237
                                        ; implicit-def: $vgpr239
                                        ; implicit-def: $vgpr238
                                        ; implicit-def: $vgpr240
                                        ; implicit-def: $vgpr233
                                        ; implicit-def: $vgpr236
                                        ; implicit-def: $vgpr234
                                        ; implicit-def: $vgpr235
                                        ; implicit-def: $vgpr241
                                        ; implicit-def: $vgpr243
                                        ; implicit-def: $vgpr242
                                        ; implicit-def: $vgpr248
                                        ; implicit-def: $vgpr244
                                        ; implicit-def: $vgpr247
                                        ; implicit-def: $vgpr245
                                        ; implicit-def: $vgpr246
                                        ; implicit-def: $vgpr252
                                        ; implicit-def: $vgpr255
                                        ; implicit-def: $vgpr254
                                        ; implicit-def: $vgpr249
                                        ; implicit-def: $vgpr253
                                        ; implicit-def: $vgpr250
                                        ; implicit-def: $vgpr251
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
                                        ; implicit-def: $vgpr5
                                        ; kill: killed $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x10
	s_load_b64 s[8:9], s[0:1], 0x20
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_mov_b32 s7, 0
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v3, 1, v3
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v2, s24, v2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s27, 15
	v_and_b32_e32 v134, 0x70, v4
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_lshl_or_b32 v3, s3, 5, v3
	v_bfe_i32 v4, v0, 3, 1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
	v_mov_b32_e32 v13, v10
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s1, s26, 7
	v_dual_mov_b32 v12, v10 :: v_dual_add_nc_u32 v5, 0x41, v3
	v_dual_mov_b32 v14, v10 :: v_dual_add_nc_u32 v3, 64, v3
	v_sub_nc_u32_e64 v6, s0, 3 clamp
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v5, s11, v5
	v_mov_b32_e32 v11, v10
	v_mul_lo_u32 v7, s11, v3
	v_mad_u64_u32 v[2:3], null, s27, v2, s[6:7]
	v_and_or_b32 v138, 0x88, v4, v134
	s_lshl_b32 s3, s5, 7
	v_readfirstlane_b32 s5, v6
	v_add3_u32 v3, v5, s1, v1
	v_mov_b32_e32 v15, v10
	v_add3_u32 v1, v7, s1, v1
	v_add3_u32 v139, v2, v194, 32
	v_mov_b32_e32 v16, v10
	v_subrev_nc_u32_e32 v140, s3, v3
	v_mov_b32_e32 v17, v10
	v_subrev_nc_u32_e32 v141, s3, v1
	v_mov_b32_e32 v58, v10
	v_mov_b32_e32 v59, v10
	v_mov_b32_e32 v60, v10
	v_mov_b32_e32 v61, v10
	v_mov_b32_e32 v62, v10
	v_mov_b32_e32 v63, v10
	v_mov_b32_e32 v64, v10
	v_mov_b32_e32 v65, v10
	v_mov_b32_e32 v50, v10
	v_mov_b32_e32 v51, v10
	v_mov_b32_e32 v52, v10
	v_mov_b32_e32 v53, v10
	v_mov_b32_e32 v54, v10
	v_mov_b32_e32 v55, v10
	v_mov_b32_e32 v56, v10
	v_mov_b32_e32 v57, v10
	v_mov_b32_e32 v42, v10
	v_mov_b32_e32 v43, v10
	v_mov_b32_e32 v44, v10
	v_mov_b32_e32 v45, v10
	v_mov_b32_e32 v46, v10
	v_mov_b32_e32 v47, v10
	v_mov_b32_e32 v48, v10
	v_mov_b32_e32 v49, v10
	v_mov_b32_e32 v34, v10
	v_mov_b32_e32 v35, v10
	v_mov_b32_e32 v36, v10
	v_mov_b32_e32 v37, v10
	v_mov_b32_e32 v38, v10
	v_mov_b32_e32 v39, v10
	v_mov_b32_e32 v40, v10
	v_mov_b32_e32 v41, v10
	v_mov_b32_e32 v26, v10
	v_mov_b32_e32 v27, v10
	v_mov_b32_e32 v28, v10
	v_mov_b32_e32 v29, v10
	v_mov_b32_e32 v30, v10
	v_mov_b32_e32 v31, v10
	v_mov_b32_e32 v32, v10
	v_mov_b32_e32 v33, v10
	v_mov_b32_e32 v18, v10
	v_mov_b32_e32 v19, v10
	v_mov_b32_e32 v20, v10
	v_mov_b32_e32 v21, v10
	v_mov_b32_e32 v22, v10
	v_mov_b32_e32 v23, v10
	v_mov_b32_e32 v24, v10
	v_mov_b32_e32 v25, v10
	v_mov_b32_e32 v1, v10
	v_mov_b32_e32 v2, v10
	v_mov_b32_e32 v3, v10
	v_mov_b32_e32 v4, v10
	v_mov_b32_e32 v5, v10
	v_mov_b32_e32 v6, v10
	v_mov_b32_e32 v7, v10
	v_mov_b32_e32 v8, v10
	v_mov_b32_e32 v66, v10
	v_mov_b32_e32 v67, v10
	v_mov_b32_e32 v68, v10
	v_mov_b32_e32 v69, v10
	v_mov_b32_e32 v70, v10
	v_mov_b32_e32 v71, v10
	v_mov_b32_e32 v72, v10
	v_mov_b32_e32 v73, v10
	v_mov_b32_e32 v74, v10
	v_mov_b32_e32 v75, v10
	v_mov_b32_e32 v76, v10
	v_mov_b32_e32 v77, v10
	v_mov_b32_e32 v78, v10
	v_mov_b32_e32 v79, v10
	v_mov_b32_e32 v80, v10
	v_mov_b32_e32 v81, v10
	v_mov_b32_e32 v82, v10
	v_mov_b32_e32 v83, v10
	v_mov_b32_e32 v84, v10
	v_mov_b32_e32 v85, v10
	v_mov_b32_e32 v86, v10
	v_mov_b32_e32 v87, v10
	v_mov_b32_e32 v88, v10
	v_mov_b32_e32 v89, v10
	v_mov_b32_e32 v90, v10
	v_mov_b32_e32 v91, v10
	v_mov_b32_e32 v92, v10
	v_mov_b32_e32 v93, v10
	v_mov_b32_e32 v94, v10
	v_mov_b32_e32 v95, v10
	v_mov_b32_e32 v96, v10
	v_mov_b32_e32 v97, v10
	v_mov_b32_e32 v98, v10
	v_mov_b32_e32 v99, v10
	v_mov_b32_e32 v100, v10
	v_mov_b32_e32 v101, v10
	v_mov_b32_e32 v102, v10
	v_mov_b32_e32 v103, v10
	v_mov_b32_e32 v104, v10
	v_mov_b32_e32 v105, v10
	v_mov_b32_e32 v106, v10
	v_mov_b32_e32 v107, v10
	v_mov_b32_e32 v108, v10
	v_mov_b32_e32 v109, v10
	v_mov_b32_e32 v110, v10
	v_mov_b32_e32 v111, v10
	v_mov_b32_e32 v112, v10
	v_mov_b32_e32 v113, v10
	v_mov_b32_e32 v114, v10
	v_mov_b32_e32 v115, v10
	v_mov_b32_e32 v116, v10
	v_mov_b32_e32 v117, v10
	v_mov_b32_e32 v118, v10
	v_mov_b32_e32 v119, v10
	v_mov_b32_e32 v120, v10
	v_mov_b32_e32 v121, v10
	v_mov_b32_e32 v122, v10
	v_mov_b32_e32 v123, v10
	v_mov_b32_e32 v124, v10
	v_mov_b32_e32 v125, v10
	v_mov_b32_e32 v126, v10
	v_mov_b32_e32 v127, v10
	v_mov_b32_e32 v128, v10
	v_mov_b32_e32 v129, v10
	v_xor_b32_e32 v142, 8, v138
	s_mov_b32 s25, 1
	s_lshl_b32 s26, s11, 5
	s_add_i32 s0, 0, 0x2000
	s_add_i32 s6, 0, 0x2100
	s_add_i32 s27, s5, 1
	s_add_i32 s5, 0, 0x800
	s_add_i32 s1, 0, 0x1000
	s_add_i32 s3, 0, 0x1800
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_mov_b32 s28, s0
	s_mov_b32 s0, s6
	s_mov_b32 s6, s7
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v144, v139, s[16:19], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v145, s6, v194
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v145 offset:640
	ds_load_u8 v149, v145 offset:512
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v130, s28, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v147, s6, v135
	v_add_nc_u32_e32 v146, s6, v9
	s_mov_b32 s7, s5
	s_mov_b32 s5, s1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[132:133], v130
	v_add_nc_u32_e32 v130, s28, v142
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v143, v141, s[20:23], 0 offen
	s_mov_b32 s1, s3
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s3, s25, 1
	v_add_nc_u32_e32 v139, 16, v139
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[130:131], v130
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s3, 2
	s_cselect_b32 s25, s3, 0
	s_add_i32 s27, s27, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_lshl_b32 s3, s25, 8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s3, s3, 0
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:896
	ds_load_u8 v150, v145 offset:768
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_add_i32 s6, s3, 0x2000
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:128
	ds_load_u8 v150, v145
	ds_load_u8 v151, v145 offset:16
	ds_load_u8 v152, v145 offset:32
	ds_load_u8 v153, v145 offset:48
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:384
	ds_load_u8 v154, v145 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v154, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[66:73], v[148:149], v[132:133], v[66:73] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1664
	ds_load_u8 v149, v145 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:1920
	ds_load_u8 v150, v145 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1152
	ds_load_u8 v150, v145 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1408
	ds_load_u8 v154, v145 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v154, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[66:73], v[148:149], v[130:131], v[66:73] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:656
	ds_load_u8 v149, v145 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:912
	ds_load_u8 v150, v145 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v151, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:400
	ds_load_u8 v151, v145 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[74:81], v[148:149], v[132:133], v[74:81] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1680
	ds_load_u8 v149, v145 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:1936
	ds_load_u8 v150, v145 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1168
	ds_load_u8 v150, v145 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1424
	ds_load_u8 v151, v145 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[74:81], v[148:149], v[130:131], v[74:81] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:672
	ds_load_u8 v149, v145 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:928
	ds_load_u8 v150, v145 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v145 offset:416
	ds_load_u8 v151, v145 offset:288
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:160
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v152, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[82:89], v[148:149], v[132:133], v[82:89] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1696
	ds_load_u8 v149, v145 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:1952
	ds_load_u8 v150, v145 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1184
	ds_load_u8 v150, v145 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1440
	ds_load_u8 v151, v145 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[82:89], v[148:149], v[130:131], v[82:89] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:688
	ds_load_u8 v149, v145 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:944
	ds_load_u8 v150, v145 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v145 offset:432
	ds_load_u8 v151, v145 offset:304
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:176
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v153, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[90:97], v[148:149], v[132:133], v[90:97] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1712
	ds_load_u8 v149, v145 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:1968
	ds_load_u8 v150, v145 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1200
	ds_load_u8 v150, v145 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1456
	ds_load_u8 v151, v145 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[90:97], v[148:149], v[130:131], v[90:97] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:704
	ds_load_u8 v149, v145 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:960
	ds_load_u8 v150, v145 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:192
	ds_load_u8 v150, v145 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:448
	ds_load_u8 v151, v145 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[132:133], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1728
	ds_load_u8 v149, v145 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:1984
	ds_load_u8 v150, v145 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1216
	ds_load_u8 v150, v145 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1472
	ds_load_u8 v151, v145 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[98:105], v[148:149], v[130:131], v[98:105] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:720
	ds_load_u8 v149, v145 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:976
	ds_load_u8 v150, v145 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:208
	ds_load_u8 v150, v145 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:464
	ds_load_u8 v151, v145 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[106:113], v[148:149], v[132:133], v[106:113] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1744
	ds_load_u8 v149, v145 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:2000
	ds_load_u8 v150, v145 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1232
	ds_load_u8 v150, v145 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1488
	ds_load_u8 v151, v145 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[106:113], v[148:149], v[130:131], v[106:113] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:736
	ds_load_u8 v149, v145 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:992
	ds_load_u8 v150, v145 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:224
	ds_load_u8 v150, v145 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:480
	ds_load_u8 v151, v145 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[114:121], v[148:149], v[132:133], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:1760
	ds_load_u8 v149, v145 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v149, v145 offset:2016
	ds_load_u8 v150, v145 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v149, 16, v148
	ds_load_u8 v148, v145 offset:1248
	ds_load_u8 v150, v145 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v145 offset:1504
	ds_load_u8 v151, v145 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[114:121], v[148:149], v[130:131], v[114:121] neg_lo:[1,1,0]
	ds_load_u8 v148, v145 offset:752
	ds_load_u8 v149, v145 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	ds_load_u8 v147, v147
	ds_load_u8 v149, v145 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v149, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v148, v147, 16, v148
	ds_load_u8 v147, v145 offset:240
	ds_load_u8 v149, v145 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v149, v147, 0xc0c0004
	ds_load_u8 v149, v145 offset:496
	ds_load_u8 v150, v145 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v147, v149, 16, v147
	v_wmma_i32_16x16x16_iu4 v[122:129], v[147:148], v[132:133], v[122:129] neg_lo:[1,1,0]
	ds_load_u8 v147, v145 offset:1776
	ds_load_u8 v148, v145 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v146, v146
	ds_load_u8 v148, v145 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v148, v146, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v146, v146, 16, v147
	ds_load_u8 v147, v145 offset:1264
	ds_load_u8 v148, v145 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	ds_load_u8 v148, v145 offset:1520
	ds_load_u8 v145, v145 offset:1392
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v145, v145, v148, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v148, s5, v135
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v145, v145, 16, v147
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v147, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[122:129], v[145:146], v[130:131], v[122:129] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v146, s5, v194
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v149, v146 offset:640
	ds_load_u8 v150, v146 offset:512
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	buffer_load_b32 v145, v140, s[20:23], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v140, s26, v140
	v_add_nc_u32_e32 v141, s26, v141
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:896
	ds_load_u8 v151, v146 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:128
	ds_load_u8 v151, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:384
	ds_load_u8 v152, v146 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[10:17], v[149:150], v[132:133], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1664
	ds_load_u8 v150, v146 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:1920
	ds_load_u8 v151, v146 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1152
	ds_load_u8 v151, v146 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1408
	ds_load_u8 v152, v146 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[10:17], v[149:150], v[130:131], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:656
	ds_load_u8 v150, v146 offset:528
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:912
	ds_load_u8 v151, v146 offset:784
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:144
	ds_load_u8 v151, v146 offset:16
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:400
	ds_load_u8 v152, v146 offset:272
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[58:65], v[149:150], v[132:133], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1680
	ds_load_u8 v150, v146 offset:1552
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:1936
	ds_load_u8 v151, v146 offset:1808
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1168
	ds_load_u8 v151, v146 offset:1040
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1424
	ds_load_u8 v152, v146 offset:1296
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[58:65], v[149:150], v[130:131], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:672
	ds_load_u8 v150, v146 offset:544
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:928
	ds_load_u8 v151, v146 offset:800
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:160
	ds_load_u8 v151, v146 offset:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:416
	ds_load_u8 v152, v146 offset:288
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[50:57], v[149:150], v[132:133], v[50:57] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1696
	ds_load_u8 v150, v146 offset:1568
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:1952
	ds_load_u8 v151, v146 offset:1824
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1184
	ds_load_u8 v151, v146 offset:1056
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1440
	ds_load_u8 v152, v146 offset:1312
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[50:57], v[149:150], v[130:131], v[50:57] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:688
	ds_load_u8 v150, v146 offset:560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:944
	ds_load_u8 v151, v146 offset:816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:176
	ds_load_u8 v151, v146 offset:48
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:432
	ds_load_u8 v152, v146 offset:304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[42:49], v[149:150], v[132:133], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1712
	ds_load_u8 v150, v146 offset:1584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:1968
	ds_load_u8 v151, v146 offset:1840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1200
	ds_load_u8 v151, v146 offset:1072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1456
	ds_load_u8 v152, v146 offset:1328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[42:49], v[149:150], v[130:131], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:704
	ds_load_u8 v150, v146 offset:576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:960
	ds_load_u8 v151, v146 offset:832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:192
	ds_load_u8 v151, v146 offset:64
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:448
	ds_load_u8 v152, v146 offset:320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[34:41], v[149:150], v[132:133], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1728
	ds_load_u8 v150, v146 offset:1600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:1984
	ds_load_u8 v151, v146 offset:1856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1216
	ds_load_u8 v151, v146 offset:1088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1472
	ds_load_u8 v152, v146 offset:1344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[34:41], v[149:150], v[130:131], v[34:41] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:720
	ds_load_u8 v150, v146 offset:592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:976
	ds_load_u8 v151, v146 offset:848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:208
	ds_load_u8 v151, v146 offset:80
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:464
	ds_load_u8 v152, v146 offset:336
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[26:33], v[149:150], v[132:133], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1744
	ds_load_u8 v150, v146 offset:1616
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:2000
	ds_load_u8 v151, v146 offset:1872
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1232
	ds_load_u8 v151, v146 offset:1104
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1488
	ds_load_u8 v152, v146 offset:1360
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[26:33], v[149:150], v[130:131], v[26:33] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:736
	ds_load_u8 v150, v146 offset:608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:992
	ds_load_u8 v151, v146 offset:864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:224
	ds_load_u8 v151, v146 offset:96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:480
	ds_load_u8 v152, v146 offset:352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[18:25], v[149:150], v[132:133], v[18:25] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:1760
	ds_load_u8 v150, v146 offset:1632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v150, v146 offset:2016
	ds_load_u8 v151, v146 offset:1888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v150, v150, 16, v149
	ds_load_u8 v149, v146 offset:1248
	ds_load_u8 v151, v146 offset:1120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v151, v149, 0xc0c0004
	ds_load_u8 v151, v146 offset:1504
	ds_load_u8 v152, v146 offset:1376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v151, v152, v151, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v149, v151, 16, v149
	v_wmma_i32_16x16x16_iu4 v[18:25], v[149:150], v[130:131], v[18:25] neg_lo:[1,1,0]
	ds_load_u8 v149, v146 offset:752
	ds_load_u8 v150, v146 offset:624
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	ds_load_u8 v148, v148
	ds_load_u8 v150, v146 offset:880
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v149, v148, 16, v149
	ds_load_u8 v148, v146 offset:240
	ds_load_u8 v150, v146 offset:112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v150, v148, 0xc0c0004
	ds_load_u8 v150, v146 offset:496
	ds_load_u8 v151, v146 offset:368
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v150, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v148, v150, 16, v148
	v_wmma_i32_16x16x16_iu4 v[1:8], v[148:149], v[132:133], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v132, v146 offset:1776
	ds_load_u8 v133, v146 offset:1648
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	ds_load_u8 v133, v147
	ds_load_u8 v147, v146 offset:1904
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v147, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v133, v133, 16, v132
	ds_load_u8 v132, v146 offset:1264
	ds_load_u8 v147, v146 offset:1136
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v147, v132, 0xc0c0004
	ds_load_u8 v147, v146 offset:1520
	ds_load_u8 v146, v146 offset:1392
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_perm_b32 v146, v146, v147, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v132, v146, 16, v132
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[130:131], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v130, s3, v137
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_lshl_b32 s3, s25, 11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s5, s3, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v130, v144 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v130, s5, v136
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_add_i32 s3, s5, 0x1000
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s27, 0
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v130, v143, v145 offset1:16
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	v_or_b32_e32 v131, 0x80, v194
	v_or_b32_e32 v255, 0x2c0, v194
	v_and_b32_e32 v130, 8, v0
	v_or_b32_e32 v213, 0x400, v194
	v_or_b32_e32 v216, 0x480, v194
	scratch_store_b32 off, v131, off offset:172 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x100, v194
	v_or_b32_e32 v214, 0x500, v194
	v_or_b32_e32 v215, 0x580, v194
	v_or_b32_e32 v217, 0x600, v194
	v_or_b32_e32 v219, 0x680, v194
	scratch_store_b32 off, v131, off offset:144 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x180, v194
	v_or_b32_e32 v218, 0x700, v194
	v_or_b32_e32 v222, 0x780, v194
	v_or_b32_e32 v220, 0x410, v194
	v_or_b32_e32 v224, 0x490, v194
	scratch_store_b32 off, v131, off offset:160 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x200, v194
	v_or_b32_e32 v221, 0x510, v194
	v_or_b32_e32 v223, 0x590, v194
	v_or_b32_e32 v225, 0x610, v194
	v_or_b32_e32 v227, 0x690, v194
	scratch_store_b32 off, v131, off offset:236 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x280, v194
	v_or_b32_e32 v226, 0x710, v194
	v_or_b32_e32 v230, 0x790, v194
	v_or_b32_e32 v228, 0x420, v194
	v_or_b32_e32 v232, 0x4a0, v194
	scratch_store_b32 off, v131, off offset:256 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x300, v194
	v_or_b32_e32 v229, 0x520, v194
	v_or_b32_e32 v231, 0x5a0, v194
	v_or_b32_e32 v237, 0x620, v194
	v_or_b32_e32 v239, 0x6a0, v194
	scratch_store_b32 off, v131, off offset:208 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x380, v194
	v_or_b32_e32 v238, 0x720, v194
	v_or_b32_e32 v240, 0x7a0, v194
	v_or_b32_e32 v233, 0x430, v194
	v_or_b32_e32 v236, 0x4b0, v194
	scratch_store_b32 off, v131, off offset:232 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 16, v194
	v_or_b32_e32 v234, 0x530, v194
	v_or_b32_e32 v235, 0x5b0, v194
	v_or_b32_e32 v241, 0x630, v194
	v_or_b32_e32 v243, 0x6b0, v194
	scratch_store_b32 off, v131, off offset:140 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x90, v194
	v_or_b32_e32 v242, 0x730, v194
	v_or_b32_e32 v248, 0x7b0, v194
	v_or_b32_e32 v244, 0x440, v194
	v_or_b32_e32 v247, 0x4c0, v194
	scratch_store_b32 off, v131, off offset:168 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x110, v194
	v_or_b32_e32 v245, 0x540, v194
	v_or_b32_e32 v246, 0x5c0, v194
	v_or_b32_e32 v252, 0x640, v194
	v_or_b32_e32 v254, 0x740, v194
	scratch_store_b32 off, v131, off offset:148 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x190, v194
	v_or_b32_e32 v249, 0x450, v194
	v_or_b32_e32 v253, 0x4d0, v194
	v_or_b32_e32 v250, 0x550, v194
	v_or_b32_e32 v251, 0x5d0, v194
	scratch_store_b32 off, v131, off offset:152 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x210, v194
	s_mov_b32 s22, s7
	scratch_store_b32 off, v131, off offset:272 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x290, v194
	scratch_store_b32 off, v131, off offset:280 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x310, v194
	scratch_store_b32 off, v131, off offset:212 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x390, v194
	scratch_store_b32 off, v131, off offset:240 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 32, v194
	scratch_store_b32 off, v131, off offset:120 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xa0, v194
	scratch_store_b32 off, v131, off offset:136 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x120, v194
	scratch_store_b32 off, v131, off offset:124 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1a0, v194
	scratch_store_b32 off, v131, off offset:128 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x220, v194
	scratch_store_b32 off, v131, off offset:248 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2a0, v194
	scratch_store_b32 off, v131, off offset:268 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x320, v194
	scratch_store_b32 off, v131, off offset:180 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3a0, v194
	scratch_store_b32 off, v131, off offset:192 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 48, v194
	scratch_store_b32 off, v131, off offset:88 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xb0, v194
	scratch_store_b32 off, v131, off offset:96 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x130, v194
	scratch_store_b32 off, v131, off offset:84 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1b0, v194
	scratch_store_b32 off, v131, off offset:92 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x230, v194
	scratch_store_b32 off, v131, off offset:196 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2b0, v194
	scratch_store_b32 off, v131, off offset:204 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x330, v194
	scratch_store_b32 off, v131, off offset:100 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3b0, v194
	scratch_store_b32 off, v131, off offset:108 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 64, v194
	scratch_store_b32 off, v131, off offset:296 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xc0, v194
	scratch_store_b32 off, v131, off offset:308 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x140, v194
	scratch_store_b32 off, v131, off offset:292 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1c0, v194
	scratch_store_b32 off, v131, off offset:304 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x240, v194
	scratch_store_b32 off, v131, off offset:328 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x340, v194
	scratch_store_b32 off, v131, off offset:320 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3c0, v194
	scratch_store_b32 off, v131, off offset:324 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x7c0, v194
	scratch_store_b32 off, v255, off offset:332 ; 4-byte Folded Spill
	v_or_b32_e32 v255, 0x6c0, v194
	scratch_store_b32 off, v131, off        ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x50, v194
	scratch_store_b32 off, v131, off offset:220 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xd0, v194
	scratch_store_b32 off, v131, off offset:260 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x150, v194
	scratch_store_b32 off, v131, off offset:216 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1d0, v194
	scratch_store_b32 off, v131, off offset:224 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x250, v194
	scratch_store_b32 off, v131, off offset:312 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2d0, v194
	scratch_store_b32 off, v131, off offset:316 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x350, v194
	scratch_store_b32 off, v131, off offset:276 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3d0, v194
	scratch_store_b32 off, v131, off offset:284 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x650, v194
	scratch_store_b32 off, v131, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x6d0, v194
	scratch_store_b32 off, v131, off offset:40 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x750, v194
	scratch_store_b32 off, v131, off offset:36 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x7d0, v194
	scratch_store_b32 off, v131, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x60, v194
	scratch_store_b32 off, v131, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xe0, v194
	scratch_store_b32 off, v131, off offset:200 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x160, v194
	scratch_store_b32 off, v131, off offset:176 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1e0, v194
	scratch_store_b32 off, v131, off offset:188 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x260, v194
	scratch_store_b32 off, v131, off offset:288 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2e0, v194
	scratch_store_b32 off, v131, off offset:300 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x360, v194
	scratch_store_b32 off, v131, off offset:252 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x3e0, v194
	scratch_store_b32 off, v131, off offset:264 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x460, v194
	scratch_store_b32 off, v131, off offset:4 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x4e0, v194
	scratch_store_b32 off, v131, off offset:32 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x560, v194
	scratch_store_b32 off, v131, off offset:8 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x5e0, v194
	scratch_store_b32 off, v131, off offset:16 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x660, v194
	scratch_store_b32 off, v131, off offset:52 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x6e0, v194
	scratch_store_b32 off, v131, off offset:60 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x760, v194
	scratch_store_b32 off, v131, off offset:56 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x7e0, v194
	scratch_store_b32 off, v131, off offset:64 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x70, v194
	scratch_store_b32 off, v131, off offset:112 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0xf0, v194
	scratch_store_b32 off, v131, off offset:132 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x170, v194
	scratch_store_b32 off, v131, off offset:104 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x1f0, v194
	scratch_store_b32 off, v131, off offset:116 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x270, v194
	scratch_store_b32 off, v131, off offset:228 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x2f0, v194
	scratch_store_b32 off, v131, off offset:244 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x370, v194
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v131, off offset:156
	scratch_store_b32 off, v135, off offset:164
	v_or_b32_e32 v131, 0x470, v194
	scratch_store_b32 off, v131, off offset:20 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x4f0, v194
	scratch_store_b32 off, v131, off offset:44 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x570, v194
	scratch_store_b32 off, v131, off offset:12 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x5f0, v194
	scratch_store_b32 off, v131, off offset:24 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x670, v194
	scratch_store_b32 off, v131, off offset:76 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x6f0, v194
	scratch_store_b32 off, v131, off offset:80 ; 4-byte Folded Spill
	v_or_b32_e32 v131, 0x770, v194
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v131, off offset:68
	scratch_store_b32 off, v9, off offset:72
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_add_i32 s0, 0, 0x2000
	s_add_i32 s6, 0, 0x2100
	s_add_i32 s5, 0, 0x800
	s_add_i32 s1, 0, 0x1000
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v73, v9
	v_dual_mov_b32 v67, v9 :: v_dual_mov_b32 v20, v8
	v_dual_mov_b32 v75, v9 :: v_dual_mov_b32 v22, v8
	v_dual_mov_b32 v79, v9 :: v_dual_mov_b32 v18, v8
	v_dual_mov_b32 v77, v9 :: v_dual_mov_b32 v32, v8
	v_dual_mov_b32 v81, v9 :: v_dual_mov_b32 v28, v8
	v_dual_mov_b32 v83, v9 :: v_dual_mov_b32 v30, v8
	v_dual_mov_b32 v87, v9 :: v_dual_mov_b32 v26, v8
	v_dual_mov_b32 v85, v9 :: v_dual_mov_b32 v40, v8
	v_dual_mov_b32 v89, v9 :: v_dual_mov_b32 v36, v8
	v_dual_mov_b32 v91, v9 :: v_dual_mov_b32 v38, v8
	v_dual_mov_b32 v95, v9 :: v_dual_mov_b32 v34, v8
	v_dual_mov_b32 v93, v9 :: v_dual_mov_b32 v48, v8
	v_dual_mov_b32 v97, v9 :: v_dual_mov_b32 v44, v8
	v_dual_mov_b32 v99, v9 :: v_dual_mov_b32 v46, v8
	v_dual_mov_b32 v103, v9 :: v_dual_mov_b32 v42, v8
	v_dual_mov_b32 v101, v9 :: v_dual_mov_b32 v56, v8
	v_dual_mov_b32 v105, v9 :: v_dual_mov_b32 v52, v8
	v_dual_mov_b32 v107, v9 :: v_dual_mov_b32 v54, v8
	v_dual_mov_b32 v111, v9 :: v_dual_mov_b32 v50, v8
	v_dual_mov_b32 v109, v9 :: v_dual_mov_b32 v64, v8
	v_dual_mov_b32 v113, v9 :: v_dual_mov_b32 v60, v8
	v_dual_mov_b32 v115, v9 :: v_dual_mov_b32 v62, v8
	v_dual_mov_b32 v119, v9 :: v_dual_mov_b32 v58, v8
	v_dual_mov_b32 v117, v9 :: v_dual_mov_b32 v16, v8
	v_dual_mov_b32 v121, v9 :: v_dual_mov_b32 v12, v8
	v_dual_mov_b32 v123, v9 :: v_dual_mov_b32 v14, v8
	v_dual_mov_b32 v127, v9 :: v_dual_mov_b32 v10, v8
	v_dual_mov_b32 v125, v9 :: v_dual_mov_b32 v66, v8
	v_mov_b32_e32 v129, v9
	v_mov_b32_e32 v71, v9
	v_mov_b32_e32 v69, v9
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v33, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v41, v8
	v_mov_b32_e32 v37, v8
	v_mov_b32_e32 v39, v8
	v_mov_b32_e32 v35, v8
	v_mov_b32_e32 v49, v8
	v_mov_b32_e32 v45, v8
	v_mov_b32_e32 v47, v8
	v_mov_b32_e32 v43, v8
	v_mov_b32_e32 v57, v8
	v_mov_b32_e32 v53, v8
	v_mov_b32_e32 v55, v8
	v_mov_b32_e32 v51, v8
	v_mov_b32_e32 v65, v8
	v_mov_b32_e32 v61, v8
	v_mov_b32_e32 v63, v8
	v_mov_b32_e32 v59, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v70, v8
	v_mov_b32_e32 v68, v8
	v_mov_b32_e32 v72, v8
	v_mov_b32_e32 v74, v8
	v_mov_b32_e32 v78, v8
	v_mov_b32_e32 v76, v8
	v_mov_b32_e32 v80, v8
	v_mov_b32_e32 v82, v8
	v_mov_b32_e32 v86, v8
	v_mov_b32_e32 v84, v8
	v_mov_b32_e32 v88, v8
	v_mov_b32_e32 v90, v8
	v_mov_b32_e32 v94, v8
	v_mov_b32_e32 v92, v8
	v_mov_b32_e32 v96, v8
	v_mov_b32_e32 v98, v8
	v_mov_b32_e32 v102, v8
	v_mov_b32_e32 v100, v8
	v_mov_b32_e32 v104, v8
	v_mov_b32_e32 v106, v8
	v_mov_b32_e32 v110, v8
	v_mov_b32_e32 v108, v8
	v_mov_b32_e32 v112, v8
	v_mov_b32_e32 v114, v8
	v_mov_b32_e32 v118, v8
	v_mov_b32_e32 v116, v8
	v_mov_b32_e32 v120, v8
	v_mov_b32_e32 v122, v8
	v_mov_b32_e32 v126, v8
	v_mov_b32_e32 v124, v8
	v_mov_b32_e32 v128, v8
	s_add_i32 s3, 0, 0x1800
.LBB0_8:                                ; %._crit_edge
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cmp_eq_u32_e32 vcc_lo, 0, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v130, 0, 1, s4
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v9, 0x88, 0, vcc_lo
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_or_b32_e32 v9, v9, v134
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_xor_b32_e32 v201, 8, v9
	v_add_nc_u32_e32 v131, s0, v9
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v179, v115 :: v_dual_add_nc_u32 v132, s0, v201
	v_dual_mov_b32 v178, v114 :: v_dual_mov_b32 v183, v119
	v_mov_b32_e32 v182, v118
	ds_load_b64 v[197:198], v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[195:196], v132
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_cmp_ne_u32_e64 s0, 1, v130
	v_dual_mov_b32 v173, v109 :: v_dual_mov_b32 v172, v108
	v_dual_mov_b32 v175, v111 :: v_dual_mov_b32 v174, v110
	v_dual_mov_b32 v171, v107 :: v_dual_mov_b32 v170, v106
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v165, v101 :: v_dual_mov_b32 v164, v100
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v162, v98
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v157, v93 :: v_dual_mov_b32 v156, v92
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v154, v90
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v130, off, off offset:256
	scratch_load_b32 v131, off, off offset:236
	v_add_nc_u32_e32 v133, s22, v194
	v_add_nc_u32_e32 v150, s22, v221
	v_add_nc_u32_e32 v148, s22, v226
	v_add_nc_u32_e32 v182, s22, v250
	v_add_nc_u32_e32 v149, s22, v220
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v134, off, off offset:144
	scratch_load_b32 v140, off, off offset:212
	scratch_load_b32 v142, off, off offset:148
	scratch_load_b32 v141, off, off offset:140
	scratch_load_b32 v132, off, off offset:208
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v133, v133
	ds_load_u8 v150, v150
	ds_load_u8 v148, v148
	ds_load_u8 v182, v182
	ds_load_u8 v149, v149
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v160, s22, v238
	v_add_nc_u32_e32 v162, s22, v229
	v_add_nc_u32_e32 v172, s22, v254
	v_add_nc_u32_e32 v161, s22, v228
	v_add_nc_u32_e32 v164, s22, v242
	v_add_nc_u32_e32 v165, s22, v233
	v_add_nc_u32_e32 v173, s22, v244
	v_add_nc_u32_e32 v166, s22, v234
	v_add_nc_u32_e32 v174, s22, v245
	v_add_nc_u32_e32 v181, s22, v253
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v160, v160
	ds_load_u8 v162, v162
	ds_load_u8 v172, v172
	ds_load_u8 v161, v161
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v173, v173
	ds_load_u8 v166, v166
	ds_load_u8 v174, v174
	ds_load_u8 v181, v181
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v180, off, off offset:48
	scratch_load_b32 v189, off, off offset:32
	scratch_load_b32 v190, off, off offset:8
	scratch_load_b32 v188, off, off offset:64
	scratch_load_b32 v211, off, off offset:44
	scratch_load_b32 v212, off, off offset:12
	scratch_load_b32 v210, off, off offset:72
	s_waitcnt vmcnt(13)
	v_add_nc_u32_e32 v130, s22, v130
	s_waitcnt vmcnt(12)
	v_add_nc_u32_e32 v131, s22, v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v130, v130
	ds_load_u8 v131, v131
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v134, s22, v134
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v140, s22, v140
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v142, s22, v142
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v141, s22, v141
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v132, s22, v132
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v134, v134
	ds_load_u8 v140, v140
	ds_load_u8 v142, v142
	ds_load_u8 v141, v141
	ds_load_u8 v132, v132
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v130, v131, v130, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v131, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_add_nc_u32_e32 v180, s22, v180
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v189, s22, v189
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v190, s22, v190
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v188, s22, v188
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v211, s22, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	ds_load_u8 v188, v188
	ds_load_u8 v211, v211
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v212, s22, v212
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v210, s22, v210
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v212, v212
	ds_load_u8 v210, v210
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, s22, v131
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v131, v131
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v131, v132, v131, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v132, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v139, v131, 16, v130
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v132, s22, v132
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v132, v132
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v132, v133, v132, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v133, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v133, s22, v133
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v133, v133
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v134, v133, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v133, 16, v132
	v_dual_mov_b32 v137, v73 :: v_dual_mov_b32 v136, v72
	v_dual_mov_b32 v135, v71 :: v_dual_mov_b32 v134, v70
	v_dual_mov_b32 v133, v69 :: v_dual_mov_b32 v132, v68
	v_dual_mov_b32 v131, v67 :: v_dual_mov_b32 v130, v66
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[197:198], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:280
	scratch_load_b32 v139, off, off offset:272
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v138, s22, v138
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s22, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s22, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v140, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v147, v139, 16, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v138, s22, v219
	v_add_nc_u32_e32 v139, s22, v217
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v139, s22, v222
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v140, s22, v140
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v141, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s22, v141
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v142, s22, v214
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v146, v141, 16, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v140, s22, v218
	v_add_nc_u32_e32 v141, s22, v213
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v142, v142
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v139, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v140, s22, v216
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v155, v139, 16, v138
	ds_load_u8 v140, v140
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v141, v140, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v141, s22, v215
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v142, v141, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v154, v141, 16, v140
	v_dual_mov_b32 v145, v81 :: v_dual_mov_b32 v144, v80
	v_dual_mov_b32 v143, v79 :: v_dual_mov_b32 v142, v78
	v_dual_mov_b32 v141, v77 :: v_dual_mov_b32 v140, v76
	v_dual_mov_b32 v139, v75 :: v_dual_mov_b32 v138, v74
	v_wmma_i32_16x16x16_iu4 v[130:137], v[154:155], v[195:196], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v154, off, off offset:204
	scratch_load_b32 v155, off, off offset:196
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[197:198], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v146, s22, v227
	v_add_nc_u32_e32 v147, s22, v225
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v147, s22, v230
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v148, s22, v224
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v157, v147, 16, v146
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:268
	scratch_load_b32 v147, off, off offset:248
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v154, s22, v154
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v155, s22, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v146, s22, v146
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v147, s22, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	v_perm_b32 v148, v149, v148, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v149, s22, v223
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:192 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v150, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v156, v149, 16, v148
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:180
	scratch_load_b32 v149, off, off offset:120
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[138:145], v[156:157], v[195:196], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v156, off, off offset:100
	scratch_load_b32 v157, off, off offset:88
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v155, s22, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v147, s22, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v150, s22, v150
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v148, s22, v148
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v150, v150
	ds_load_u8 v148, v148
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v156, s22, v156
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v147, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v148, off, off offset:136 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v159, v147, 16, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v155, v156, v155, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v156, off, off offset:96 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v149, s22, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v163, v155, 16, v154
	ds_load_u8 v149, v149
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v148, s22, v148
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v156, s22, v156
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v156, v156
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v148, v149, v148, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v149, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v149, s22, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v149, v149
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v150, v149, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v149, 16, v148
	v_dual_mov_b32 v153, v89 :: v_dual_mov_b32 v152, v88
	v_dual_mov_b32 v151, v87 :: v_dual_mov_b32 v150, v86
	v_dual_mov_b32 v149, v85 :: v_dual_mov_b32 v148, v84
	v_dual_mov_b32 v147, v83 :: v_dual_mov_b32 v146, v82
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[197:198], v[146:153] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v158, s22, v239
	v_add_nc_u32_e32 v159, s22, v237
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v158, v158
	ds_load_u8 v159, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v158, v159, v158, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v159, s22, v240
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v159, v159
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v159, v160, v159, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v160, s22, v232
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v159, v159, 16, v158
	ds_load_u8 v160, v160
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v160, v161, v160, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v161, s22, v231
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v161, v161
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v161, v162, v161, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v158, v161, 16, v160
	v_wmma_i32_16x16x16_iu4 v[146:153], v[158:159], v[195:196], v[146:153] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v158, off, off offset:84 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v157, s22, v157
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v157, v157
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v158, s22, v158
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v158, v158
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v156, v157, v156, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v157, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v157, s22, v157
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v157, v157
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v162, v157, 16, v156
	v_dual_mov_b32 v161, v97 :: v_dual_mov_b32 v160, v96
	v_dual_mov_b32 v159, v95 :: v_dual_mov_b32 v158, v94
	v_dual_mov_b32 v157, v93 :: v_dual_mov_b32 v156, v92
	v_dual_mov_b32 v155, v91 :: v_dual_mov_b32 v154, v90
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[197:198], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v162, s22, v243
	v_add_nc_u32_e32 v163, s22, v241
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v163, s22, v248
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v164, s22, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v200, v163, 16, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:332
	scratch_load_b32 v163, off, off offset:328
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v164, v164
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v162, s22, v162
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s22, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v165, s22, v235
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v166, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v199, v165, 16, v164
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:320
	scratch_load_b32 v165, off, off offset:296
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[154:161], v[199:200], v[195:196], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v163, s22, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v166, s22, v166
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v164, s22, v164
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s22, v165
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v166, v166
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v163, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v164, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v171, v163, 16, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v164, s22, v164
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v164, v164
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v165, v164, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v165, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s22, v165
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v166, v165, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v170, v165, 16, v164
	v_dual_mov_b32 v169, v105 :: v_dual_mov_b32 v168, v104
	v_dual_mov_b32 v167, v103 :: v_dual_mov_b32 v166, v102
	v_dual_mov_b32 v165, v101 :: v_dual_mov_b32 v164, v100
	v_dual_mov_b32 v163, v99 :: v_dual_mov_b32 v162, v98
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[197:198], v[162:169] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v170, s22, v255
	v_add_nc_u32_e32 v171, s22, v252
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s22, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v172, s22, v247
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v203, v171, 16, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v170, off, off offset:316
	scratch_load_b32 v171, off, off offset:312
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v170, s22, v170
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s22, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v172, v173, v172, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v173, s22, v246
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v202, v173, 16, v172
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v172, off, off offset:276
	scratch_load_b32 v173, off, off offset:260
	scratch_load_b32 v174, off, off offset:216
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[162:169], v[202:203], v[195:196], v[162:169] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v171, s22, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v172, s22, v172
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v173, s22, v173
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v174, s22, v174
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v174, v174
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v171, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v172, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v179, v171, 16, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v172, s22, v172
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v173, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v173, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s22, v173
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v174, v173, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v178, v173, 16, v172
	v_dual_mov_b32 v177, v113 :: v_dual_mov_b32 v176, v112
	v_dual_mov_b32 v175, v111 :: v_dual_mov_b32 v174, v110
	v_dual_mov_b32 v173, v109 :: v_dual_mov_b32 v172, v108
	v_dual_mov_b32 v171, v107 :: v_dual_mov_b32 v170, v106
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[197:198], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:40
	scratch_load_b32 v179, off, off offset:28
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s22, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s22, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:36 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s22, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v180, s22, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v205, v179, 16, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:300
	scratch_load_b32 v179, off, off offset:288
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s22, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s22, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v181, s22, v251
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v204, v181, 16, v180
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v180, off, off offset:264
	scratch_load_b32 v181, off, off offset:200
	scratch_load_b32 v182, off, off offset:176
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[170:177], v[204:205], v[195:196], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v179, s22, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v180, s22, v180
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v181, s22, v181
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v182, s22, v182
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v182, v182
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v179, v179, v180, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v180, off, off offset:184 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v187, v179, 16, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v180, s22, v180
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v181, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v181, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s22, v181
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v182, v181, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v186, v181, 16, v180
	v_dual_mov_b32 v185, v121 :: v_dual_mov_b32 v184, v120
	v_dual_mov_b32 v183, v119 :: v_dual_mov_b32 v182, v118
	v_dual_mov_b32 v181, v117 :: v_dual_mov_b32 v180, v116
	v_dual_mov_b32 v179, v115 :: v_dual_mov_b32 v178, v114
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[197:198], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:60
	scratch_load_b32 v187, off, off offset:52
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v186, s22, v186
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s22, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s22, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v187, v187, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v188, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v207, v187, 16, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:244
	scratch_load_b32 v187, off, off offset:228
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v188, s22, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v186, s22, v186
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s22, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v188, v188, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v189, s22, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s22, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v206, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v188, off, off offset:164
	scratch_load_b32 v189, off, off offset:132
	scratch_load_b32 v190, off, off offset:104
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[178:185], v[206:207], v[195:196], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v188, s22, v188
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v189, s22, v189
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v190, s22, v190
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v190, v190
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v187, v187, v188, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v188, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v209, v187, 16, v186
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v188, s22, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v189, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v189, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s22, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v190, v189, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v208, v189, 16, v188
	v_dual_mov_b32 v193, v129 :: v_dual_mov_b32 v192, v128
	v_dual_mov_b32 v191, v127 :: v_dual_mov_b32 v190, v126
	v_dual_mov_b32 v189, v125 :: v_dual_mov_b32 v188, v124
	v_dual_mov_b32 v187, v123 :: v_dual_mov_b32 v186, v122
	v_wmma_i32_16x16x16_iu4 v[186:193], v[208:209], v[197:198], v[186:193] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v208, off, off offset:80
	scratch_load_b32 v209, off, off offset:76
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v208, s22, v208
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v209, s22, v209
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v208, v208
	ds_load_u8 v209, v209
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v208, v209, v208, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v209, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v209, s22, v209
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v209, v209
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v209, v209, v210, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v210, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v209, v209, 16, v208
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v210, s22, v210
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v210, v210
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v210, v210, v211, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v211, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v211, s22, v211
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v211, v211
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v211, v212, v211, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v208, v211, 16, v210
	v_wmma_i32_16x16x16_iu4 v[186:193], v[208:209], v[195:196], v[186:193] neg_lo:[1,1,0]
.LBB0_10:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_12
; %bb.11:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v66, off, off offset:256
	scratch_load_b32 v67, off, off offset:236
	scratch_load_b32 v73, off, off offset:212
	scratch_load_b32 v72, off, off offset:168
	v_dual_mov_b32 v128, v192 :: v_dual_mov_b32 v129, v193
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v68, off, off offset:160
	scratch_load_b32 v70, off, off offset:172
	scratch_load_b32 v71, off, off offset:208
	v_mov_b32_e32 v124, v188
	v_dual_mov_b32 v126, v190 :: v_dual_mov_b32 v125, v189
	v_dual_mov_b32 v127, v191 :: v_dual_mov_b32 v122, v186
	v_mov_b32_e32 v120, v184
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:200
	scratch_load_b32 v78, off, off offset:132
	v_dual_mov_b32 v123, v187 :: v_dual_mov_b32 v116, v180
	v_dual_mov_b32 v121, v185 :: v_dual_mov_b32 v114, v178
	v_dual_mov_b32 v117, v181 :: v_dual_mov_b32 v112, v176
	v_mov_b32_e32 v118, v182
	v_dual_mov_b32 v108, v172 :: v_dual_mov_b32 v119, v183
	v_mov_b32_e32 v110, v174
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:136
	scratch_load_b32 v75, off, off offset:180
	v_mov_b32_e32 v115, v179
	v_dual_mov_b32 v113, v177 :: v_dual_mov_b32 v104, v168
	v_dual_mov_b32 v100, v164 :: v_dual_mov_b32 v109, v173
	v_mov_b32_e32 v98, v162
	v_mov_b32_e32 v106, v170
	v_dual_mov_b32 v102, v166 :: v_dual_mov_b32 v107, v171
	v_mov_b32_e32 v92, v156
	v_dual_mov_b32 v94, v158 :: v_dual_mov_b32 v111, v175
	v_mov_b32_e32 v96, v160
	v_dual_mov_b32 v90, v154 :: v_dual_mov_b32 v105, v169
	v_dual_mov_b32 v88, v152 :: v_dual_mov_b32 v89, v153
	v_dual_mov_b32 v103, v167 :: v_dual_mov_b32 v86, v150
	v_dual_mov_b32 v82, v146 :: v_dual_mov_b32 v83, v147
	v_dual_mov_b32 v101, v165 :: v_dual_mov_b32 v84, v148
	v_dual_mov_b32 v80, v144 :: v_dual_mov_b32 v81, v145
	v_mov_b32_e32 v99, v163
	v_mov_b32_e32 v93, v157
	v_mov_b32_e32 v97, v161
	scratch_load_b32 v77, off, off offset:252 ; 4-byte Folded Reload
	v_mov_b32_e32 v95, v159
	v_mov_b32_e32 v91, v155
	scratch_load_b32 v79, off, off offset:156 ; 4-byte Folded Reload
	v_mov_b32_e32 v85, v149
	s_waitcnt vmcnt(12)
	v_dual_mov_b32 v87, v151 :: v_dual_add_nc_u32 v66, s1, v66
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v67, s1, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v76, s1, v76
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v78, s1, v78
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v76, v76
	ds_load_u8 v78, v78
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:232
	scratch_load_b32 v69, off, off offset:144
	v_add_nc_u32_e32 v68, s1, v68
	v_add_nc_u32_e32 v70, s1, v70
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v67, s1, v67
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v194
	scratch_load_b32 v69, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:280
	scratch_load_b32 v70, off, off offset:152
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[197:198], v[10:17] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:196
	scratch_load_b32 v71, off, off offset:148
	v_add_nc_u32_e32 v73, s1, v73
	v_add_nc_u32_e32 v72, s1, v72
	scratch_load_b32 v66, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v68, s1, v68
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s1, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v67, s1, v67
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s1, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v66, v66
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s1, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:140 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:268
	scratch_load_b32 v72, off, off offset:128
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[197:198], v[58:65] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:92
	scratch_load_b32 v69, off, off offset:84
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s1, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:192
	scratch_load_b32 v73, off, off offset:124
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v74, s1, v74
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:308
	scratch_load_b32 v74, off, off offset:260
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[197:198], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:96
	scratch_load_b32 v71, off, off offset:100
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s1, v70
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:88 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v68, s1, v68
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:332
	scratch_load_b32 v70, off, off offset:304
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[197:198], v[42:49] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v66, s1, v219
	v_add_nc_u32_e32 v67, s1, v217
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s1, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v67, s1, v222
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:324 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s1, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:296 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v70, s1, v70
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:316
	scratch_load_b32 v72, off, off offset:224
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[197:198], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v215
	v_add_nc_u32_e32 v69, s1, v214
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s1, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v69, s1, v225
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:284 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v74, s1, v74
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:220 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s1, v72
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:300
	scratch_load_b32 v74, off, off offset:188
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[197:198], v[26:33] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v70, s1, v216
	v_add_nc_u32_e32 v71, s1, v218
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v221
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v227
	v_add_nc_u32_e32 v70, s1, v223
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[195:196], v[10:17] neg_lo:[1,1,0]
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v66, s1, v243
	v_add_nc_u32_e32 v67, s1, v241
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v69, s1, v230
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v67, s1, v248
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s1, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:264 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:184 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v74, s1, v74
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:104 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v74, 16, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:244
	scratch_load_b32 v76, off, off offset:116
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[197:198], v[18:25] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v72, s1, v224
	v_add_nc_u32_e32 v73, s1, v226
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	ds_load_u8 v69, v69
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v237
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v229
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v70, s1, v239
	v_add_nc_u32_e32 v72, s1, v231
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[195:196], v[58:65] neg_lo:[1,1,0]
	ds_load_u8 v70, v70
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v235
	v_add_nc_u32_e32 v69, s1, v234
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v240
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v69, s1, v252
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s1, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:164 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v79, off, off offset:112 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v76, s1, v76
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v79, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v74, v76, 16, v78
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:32
	scratch_load_b32 v78, off, off offset:44
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[197:198], v[1:8] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v74, s1, v232
	v_add_nc_u32_e32 v75, s1, v238
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	ds_load_u8 v71, v71
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v254
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v75, s1, v228
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v72, s1, v247
	v_add_nc_u32_e32 v74, s1, v253
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[195:196], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v70, s1, v236
	v_add_nc_u32_e32 v71, s1, v242
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v74, v74
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v67, v71, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v233
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v67, v67, 16, v66
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v71, s1, v245
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v68, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v68, s1, v255
	v_add_nc_u32_e32 v70, s1, v246
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[195:196], v[42:49] neg_lo:[1,1,0]
	ds_load_u8 v68, v68
	ds_load_u8 v70, v70
	v_dual_mov_b32 v66, v130 :: v_dual_mov_b32 v67, v131
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off          ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:28 ; 4-byte Folded Reload
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v76, s1, v76
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v76, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v69, s1, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v69, v73, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v244
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v69, v69, 16, v68
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v73, s1, v250
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v70, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:40 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v72, s1, v251
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[195:196], v[34:41] neg_lo:[1,1,0]
	v_mov_b32_e32 v68, v132
	ds_load_u8 v72, v72
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v69, v133 :: v_dual_add_nc_u32 v70, s1, v70
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s1, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v75, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v75, s1, v249
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v71, v71, 16, v70
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:8 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v72, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:60
	scratch_load_b32 v74, off, off offset:16
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[195:196], v[26:33] neg_lo:[1,1,0]
	v_dual_mov_b32 v70, v134 :: v_dual_mov_b32 v71, v135
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s1, v72
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s1, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s1, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v77, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:4 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v73, v73, 16, v72
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v77, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v74, 16, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:80
	scratch_load_b32 v76, off, off offset:24
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[195:196], v[18:25] neg_lo:[1,1,0]
	v_dual_mov_b32 v72, v136 :: v_dual_mov_b32 v73, v137
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s1, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:72 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v78, s1, v78
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v78, v78
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s1, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v79, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v79, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v76, s1, v76
	v_add_nc_u32_e32 v77, s1, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v75, v75, 16, v74
	ds_load_u8 v76, v76
	ds_load_u8 v77, v77
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v79, s1, v79
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v79, v79
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v74, v76, 16, v78
	v_mov_b32_e32 v76, v140
	v_dual_mov_b32 v78, v142 :: v_dual_mov_b32 v77, v141
	v_mov_b32_e32 v79, v143
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[195:196], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v74, v138 :: v_dual_mov_b32 v75, v139
.LBB0_12:                               ; %._crit_edge278
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	s_waitcnt lgkmcnt(1)
	v_dual_mov_b32 v198, v129 :: v_dual_add_nc_u32 v9, s6, v9
	v_dual_mov_b32 v197, v128 :: v_dual_mov_b32 v206, v121
	v_dual_mov_b32 v205, v120 :: v_dual_mov_b32 v208, v117
	v_dual_mov_b32 v207, v116 :: v_dual_mov_b32 v210, v119
	v_dual_mov_b32 v209, v118 :: v_dual_mov_b32 v212, v115
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v218, off offset:352
	scratch_store_b32 off, v217, off offset:356
	scratch_store_b32 off, v216, off offset:348
	scratch_store_b32 off, v215, off offset:340
	scratch_store_b32 off, v214, off offset:336
	scratch_store_b32 off, v213, off offset:344
	v_dual_mov_b32 v211, v114 :: v_dual_mov_b32 v214, v113
	v_dual_mov_b32 v213, v112 :: v_dual_mov_b32 v216, v109
	v_dual_mov_b32 v215, v108 :: v_dual_mov_b32 v218, v111
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v255, off offset:500
	scratch_store_b32 off, v254, off offset:496
	scratch_store_b32 off, v253, off offset:492
	scratch_store_b32 off, v252, off offset:488
	scratch_store_b32 off, v251, off offset:484
	scratch_store_b32 off, v250, off offset:480
	scratch_store_b32 off, v249, off offset:476
	scratch_store_b32 off, v248, off offset:472
	scratch_store_b32 off, v247, off offset:468
	scratch_store_b32 off, v246, off offset:464
	scratch_store_b32 off, v245, off offset:460
	scratch_store_b32 off, v244, off offset:456
	scratch_store_b32 off, v243, off offset:452
	scratch_store_b32 off, v242, off offset:448
	scratch_store_b32 off, v241, off offset:444
	scratch_store_b32 off, v240, off offset:440
	scratch_store_b32 off, v239, off offset:436
	scratch_store_b32 off, v238, off offset:432
	scratch_store_b32 off, v237, off offset:428
	scratch_store_b32 off, v236, off offset:424
	scratch_store_b32 off, v235, off offset:420
	scratch_store_b32 off, v234, off offset:416
	scratch_store_b32 off, v233, off offset:412
	scratch_store_b32 off, v232, off offset:408
	scratch_store_b32 off, v231, off offset:404
	scratch_store_b32 off, v230, off offset:400
	scratch_store_b32 off, v229, off offset:396
	scratch_store_b32 off, v228, off offset:392
	scratch_store_b32 off, v227, off offset:388
	scratch_store_b32 off, v226, off offset:384
	scratch_store_b32 off, v225, off offset:380
	scratch_store_b32 off, v224, off offset:376
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v223, off offset:372
	scratch_store_b32 off, v222, off offset:368
	scratch_store_b32 off, v221, off offset:364
	scratch_store_b32 off, v220, off offset:360
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v255, v219 :: v_dual_add_nc_u32 v196, s6, v201
	v_dual_mov_b32 v217, v110 :: v_dual_mov_b32 v220, v107
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	v_cndmask_b32_e64 v195, 0, 1, s2
	v_dual_mov_b32 v219, v106 :: v_dual_mov_b32 v222, v105
	scratch_store_b64 off, v[197:198], off offset:504 ; 8-byte Folded Spill
	v_dual_mov_b32 v198, v125 :: v_dual_mov_b32 v197, v124
	v_dual_mov_b32 v221, v104 :: v_dual_mov_b32 v224, v101
	v_dual_mov_b32 v223, v100 :: v_dual_mov_b32 v226, v103
	v_dual_mov_b32 v225, v102 :: v_dual_mov_b32 v228, v99
	v_dual_mov_b32 v227, v98 :: v_dual_mov_b32 v232, v97
	v_cmp_ne_u32_e64 s0, 1, v195
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[229:230], v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_b64 v[195:196], v196
	v_dual_mov_b32 v231, v96 :: v_dual_mov_b32 v234, v93
	scratch_store_b64 off, v[197:198], off offset:512 ; 8-byte Folded Spill
	v_dual_mov_b32 v198, v127 :: v_dual_mov_b32 v197, v126
	v_dual_mov_b32 v233, v92 :: v_dual_mov_b32 v236, v95
	v_dual_mov_b32 v235, v94 :: v_dual_mov_b32 v238, v91
	v_dual_mov_b32 v237, v90 :: v_dual_mov_b32 v240, v89
	v_dual_mov_b32 v239, v88 :: v_dual_mov_b32 v242, v85
	v_dual_mov_b32 v241, v84 :: v_dual_mov_b32 v244, v87
	scratch_store_b64 off, v[197:198], off offset:520 ; 8-byte Folded Spill
	v_dual_mov_b32 v198, v123 :: v_dual_mov_b32 v197, v122
	v_dual_mov_b32 v243, v86 :: v_dual_mov_b32 v246, v83
	v_dual_mov_b32 v245, v82 :: v_dual_mov_b32 v248, v81
	v_dual_mov_b32 v247, v80 :: v_dual_mov_b32 v250, v77
	v_dual_mov_b32 v249, v76 :: v_dual_mov_b32 v252, v79
	v_dual_mov_b32 v251, v78 :: v_dual_mov_b32 v254, v75
	scratch_store_b64 off, v[197:198], off offset:528 ; 8-byte Folded Spill
	v_dual_mov_b32 v253, v74 :: v_dual_mov_b32 v198, v73
	v_dual_mov_b32 v197, v72 :: v_dual_mov_b32 v200, v69
	v_dual_mov_b32 v199, v68 :: v_dual_mov_b32 v202, v71
	v_dual_mov_b32 v201, v70 :: v_dual_mov_b32 v204, v67
	v_mov_b32_e32 v203, v66
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_14
; %bb.13:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v9, off, off offset:244
	scratch_load_b32 v197, off, off offset:228
	scratch_load_b32 v198, off, off offset:156
	scratch_load_b32 v199, off, off offset:112
	scratch_load_b32 v200, off, off offset:104
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v197, s5, v197
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v198, s5, v198
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v199, s5, v199
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v200, s5, v200
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	ds_load_u8 v199, v199
	ds_load_u8 v200, v200
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v197, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v197, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s5, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v198, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s5, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v198, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v199, v198, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v198, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s5, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v198, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v200, v198, 0xc0c0004
	v_lshl_or_b32 v198, v197, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v197, v200, 16, v199
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v199, off, off offset:20
	scratch_load_b32 v200, off, off offset:12
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[186:193], v[197:198], v[229:230], v[186:193] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v197, off, off offset:76
	scratch_load_b32 v198, off, off offset:68
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v199, s5, v199
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v200, s5, v200
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v197, s5, v197
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s5, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v199, v199
	ds_load_u8 v200, v200
	ds_load_u8 v197, v197
	ds_load_u8 v198, v198
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v197, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v197, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v197, s5, v197
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v197, v197
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v197, v198, v197, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v198, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s5, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v198, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v199, v199, v198, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v198, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v198, s5, v198
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v198, v198
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v200, v200, v198, 0xc0c0004
	v_lshl_or_b32 v198, v197, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v197, v200, 16, v199
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[186:193], v[197:198], v[195:196], v[186:193] neg_lo:[1,1,0]
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[192:193], off offset:504
	scratch_store_b64 off, v[188:189], off offset:512
	v_dual_mov_b32 v188, v190 :: v_dual_mov_b32 v189, v191
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[188:189], off offset:520
	scratch_store_b64 off, v[186:187], off offset:528
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v186, off, off offset:288
	scratch_load_b32 v187, off, off offset:252
	scratch_load_b32 v188, off, off offset:184
	scratch_load_b32 v189, off, off offset:176
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v186, s5, v186
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v187, s5, v187
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v188, s5, v188
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v189, s5, v189
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v186, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v186, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s5, v186
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s5, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v187, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s5, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v187, 0xc0c0004
	v_lshl_or_b32 v187, v186, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v186, v189, 16, v188
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v188, off, off offset:4
	scratch_load_b32 v189, off, off offset:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[229:230], v[178:185] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v186, off, off offset:52
	scratch_load_b32 v187, off, off offset:56
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v188, s5, v188
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v189, s5, v189
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v186, s5, v186
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s5, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v188, v188
	ds_load_u8 v189, v189
	ds_load_u8 v186, v186
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v186, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v186, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v186, s5, v186
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v186, v186
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v186, v187, v186, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s5, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v188, v188, v187, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v187, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v187, s5, v187
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v187, v187
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v189, v189, v187, 0xc0c0004
	v_lshl_or_b32 v187, v186, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v186, v189, 16, v188
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[195:196], v[178:185] neg_lo:[1,1,0]
	v_dual_mov_b32 v212, v179 :: v_dual_mov_b32 v211, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v178, off, off offset:312 ; 4-byte Folded Reload
	v_dual_mov_b32 v208, v181 :: v_dual_mov_b32 v207, v180
	v_mov_b32_e32 v206, v185
	v_dual_mov_b32 v210, v183 :: v_dual_mov_b32 v205, v184
	v_mov_b32_e32 v209, v182
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v179, off, off offset:276
	scratch_load_b32 v180, off, off offset:220
	scratch_load_b32 v181, off, off offset:216
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v178, s5, v178
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v179, s5, v179
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v180, s5, v180
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v181, s5, v181
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v178, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v178, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s5, v178
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s5, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v179, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s5, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v179, 0xc0c0004
	v_lshl_or_b32 v179, v178, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v178, v181, 16, v180
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v180, off, off offset:476
	scratch_load_b32 v181, off, off offset:480
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[229:230], v[170:177] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v178, off, off offset:28
	scratch_load_b32 v179, off, off offset:36
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v180, s5, v180
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v181, s5, v181
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v178, s5, v178
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s5, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v180, v180
	ds_load_u8 v181, v181
	ds_load_u8 v178, v178
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v178, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v178, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v178, s5, v178
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v178, v178
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v178, v179, v178, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s5, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v180, v180, v179, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v179, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v179, s5, v179
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v179, v179
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v181, v181, v179, 0xc0c0004
	v_lshl_or_b32 v179, v178, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v178, v181, 16, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[170:177], v[178:179], v[195:196], v[170:177] neg_lo:[1,1,0]
	v_dual_mov_b32 v220, v171 :: v_dual_mov_b32 v219, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v170, off, off offset:328 ; 4-byte Folded Reload
	v_dual_mov_b32 v216, v173 :: v_dual_mov_b32 v215, v172
	v_mov_b32_e32 v214, v177
	v_dual_mov_b32 v218, v175 :: v_dual_mov_b32 v213, v176
	v_mov_b32_e32 v217, v174
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v171, off, off offset:320
	scratch_load_b32 v172, off, off offset:296
	scratch_load_b32 v173, off, off offset:292
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v170, s5, v170
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v171, s5, v171
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v172, s5, v172
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v173, s5, v173
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v170, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v170, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s5, v170
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s5, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s5, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v171, 0xc0c0004
	v_lshl_or_b32 v171, v170, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v170, v173, 16, v172
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v172, off, off offset:456
	scratch_load_b32 v173, off, off offset:460
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[229:230], v[162:169] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v170, off, off offset:488
	scratch_load_b32 v171, off, off offset:496
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v172, s5, v172
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v173, s5, v173
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v170, s5, v170
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s5, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v172, v172
	ds_load_u8 v173, v173
	ds_load_u8 v170, v170
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v170, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v170, off, off         ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v170, s5, v170
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v170, v170
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v170, v171, v170, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s5, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v172, v172, v171, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v171, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v171, s5, v171
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v171, v171
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v173, v173, v171, 0xc0c0004
	v_lshl_or_b32 v171, v170, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v170, v173, 16, v172
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[162:169], v[170:171], v[195:196], v[162:169] neg_lo:[1,1,0]
	v_dual_mov_b32 v228, v163 :: v_dual_mov_b32 v227, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v162, off, off offset:196 ; 4-byte Folded Reload
	v_dual_mov_b32 v224, v165 :: v_dual_mov_b32 v223, v164
	v_mov_b32_e32 v222, v169
	v_dual_mov_b32 v226, v167 :: v_dual_mov_b32 v221, v168
	v_mov_b32_e32 v225, v166
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v163, off, off offset:100
	scratch_load_b32 v164, off, off offset:88
	scratch_load_b32 v165, off, off offset:84
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v162, s5, v162
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v163, s5, v163
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v164, s5, v164
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v165, s5, v165
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v162, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v162, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, s5, v162
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s5, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s5, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v162, v165, 16, v164
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v164, off, off offset:412
	scratch_load_b32 v165, off, off offset:416
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[229:230], v[154:161] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v162, off, off offset:444
	scratch_load_b32 v163, off, off offset:448
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v164, s5, v164
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v165, s5, v165
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v162, s5, v162
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s5, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v164, v164
	ds_load_u8 v165, v165
	ds_load_u8 v162, v162
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v162, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v162, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v162, s5, v162
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v162, v162
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v162, v163, v162, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s5, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v164, v164, v163, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v163, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v163, s5, v163
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v163, v163
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v165, v165, v163, 0xc0c0004
	v_lshl_or_b32 v163, v162, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v162, v165, 16, v164
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[154:161], v[162:163], v[195:196], v[154:161] neg_lo:[1,1,0]
	v_dual_mov_b32 v238, v155 :: v_dual_mov_b32 v237, v154
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v154, off, off offset:248 ; 4-byte Folded Reload
	v_dual_mov_b32 v234, v157 :: v_dual_mov_b32 v233, v156
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v156, off, off offset:120
	scratch_load_b32 v157, off, off offset:124
	scratch_load_b32 v155, off, off offset:180
	v_mov_b32_e32 v232, v161
	v_dual_mov_b32 v236, v159 :: v_dual_mov_b32 v231, v160
	v_mov_b32_e32 v235, v158
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v154, s5, v154
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v156, s5, v156
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v157, s5, v157
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s5, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v154, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v154, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s5, v154
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s5, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s5, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v154, v157, 16, v156
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v156, off, off offset:392
	scratch_load_b32 v157, off, off offset:396
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[229:230], v[146:153] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v154, off, off offset:428
	scratch_load_b32 v155, off, off offset:432
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v156, s5, v156
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v157, s5, v157
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v154, s5, v154
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s5, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v156, v156
	ds_load_u8 v157, v157
	ds_load_u8 v154, v154
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v154, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v154, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v154, s5, v154
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v154, v154
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v154, v155, v154, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s5, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v156, v156, v155, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v155, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v155, s5, v155
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v155, v155
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v157, v157, v155, 0xc0c0004
	v_lshl_or_b32 v155, v154, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v154, v157, 16, v156
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[146:153], v[154:155], v[195:196], v[146:153] neg_lo:[1,1,0]
	v_dual_mov_b32 v246, v147 :: v_dual_mov_b32 v245, v146
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v146, off, off offset:272 ; 4-byte Folded Reload
	v_dual_mov_b32 v242, v149 :: v_dual_mov_b32 v241, v148
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v148, off, off offset:140
	scratch_load_b32 v149, off, off offset:148
	scratch_load_b32 v147, off, off offset:212
	v_mov_b32_e32 v240, v153
	v_dual_mov_b32 v244, v151 :: v_dual_mov_b32 v239, v152
	v_mov_b32_e32 v243, v150
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v146, s5, v146
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v148, s5, v148
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v149, s5, v149
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s5, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v9, v146, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v146, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s5, v146
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s5, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s5, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v146, v149, 16, v148
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v148, off, off offset:360
	scratch_load_b32 v149, off, off offset:364
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[229:230], v[138:145] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v146, off, off offset:380
	scratch_load_b32 v147, off, off offset:384
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s5, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v148, s5, v148
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v149, s5, v149
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v146, s5, v146
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s5, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v148, v148
	ds_load_u8 v149, v149
	ds_load_u8 v146, v146
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v146, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v146, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v146, s5, v146
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v146, v146
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v146, v147, v146, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s5, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v148, v148, v147, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v147, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v147, s5, v147
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v147, v147
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v149, v149, v147, 0xc0c0004
	v_lshl_or_b32 v147, v146, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v9, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v146, v149, 16, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[138:145], v[146:147], v[195:196], v[138:145] neg_lo:[1,1,0]
	v_dual_mov_b32 v254, v139 :: v_dual_mov_b32 v253, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v138, off, off offset:236 ; 4-byte Folded Reload
	v_dual_mov_b32 v250, v141 :: v_dual_mov_b32 v249, v140
	v_add_nc_u32_e32 v140, s5, v194
	v_mov_b32_e32 v248, v145
	v_dual_mov_b32 v252, v143 :: v_dual_mov_b32 v247, v144
	v_mov_b32_e32 v251, v142
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v139, off, off offset:208
	scratch_load_b32 v141, off, off offset:144
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s5, v9
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v138, s5, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v139, s5, v139
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v141, s5, v141
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	ds_load_u8 v141, v141
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v9, v138, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v138, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s5, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s5, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s5, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v9, s5, v255
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_lshl_or_b32 v138, v141, 16, v140
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v140, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v9, v9
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v141, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[229:230], v[130:137] neg_lo:[1,1,0]
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v138, off, off offset:356
	scratch_load_b32 v139, off, off offset:352
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v140, s5, v140
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v141, s5, v141
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v138, s5, v138
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s5, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v140, v140
	ds_load_u8 v141, v141
	ds_load_u8 v138, v138
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v9, v138, v9, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v138, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v138, s5, v138
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v138, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v138, v139, v138, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s5, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v140, v140, v139, 0xc0c0004
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	scratch_load_b32 v139, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v139, s5, v139
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v139, v139
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v141, v141, v139, 0xc0c0004
	v_lshl_or_b32 v139, v138, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v138, v141, 16, v140
	v_wmma_i32_16x16x16_iu4 v[130:137], v[138:139], v[195:196], v[130:137] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v198, v137
	v_mov_b32_e32 v200, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v202, v135
	v_dual_mov_b32 v204, v131 :: v_dual_mov_b32 v197, v136
	v_mov_b32_e32 v199, v132
	v_mov_b32_e32 v201, v134
	v_mov_b32_e32 v203, v130
.LBB0_14:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_16
; %bb.15:
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:256
	scratch_load_b32 v66, off, off offset:236
	v_add_nc_u32_e32 v68, s3, v194
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v69, off, off offset:144
	scratch_load_b32 v71, off, off offset:148
	scratch_load_b32 v70, off, off offset:140
	scratch_load_b32 v67, off, off offset:208
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x9                            ; 56-byte Folded Reload
	scratch_load_b32 v72, off, off offset:120
	scratch_load_b32 v73, off, off offset:124
	scratch_load_b32 v75, off, off offset:176
	scratch_load_b32 v77, off, off offset:104
	scratch_load_b32 v74, off, off offset:184
	scratch_load_b32 v76, off, off offset:112
	scratch_load_b64 v[130:131], off, off offset:504
	scratch_load_b64 v[124:125], off, off offset:512
	scratch_load_b64 v[133:134], off, off offset:520
	scratch_load_b64 v[122:123], off, off offset:528
	s_waitcnt vmcnt(15)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(14)
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(10)
	v_add_nc_u32_e32 v67, s3, v67
	v_add_nc_u32_e32 v69, s3, v69
	v_add_nc_u32_e32 v70, s3, v70
	v_add_nc_u32_e32 v71, s3, v71
	s_waitcnt vmcnt(9)
	v_add_nc_u32_e32 v72, s3, v72
	s_waitcnt vmcnt(8)
	v_add_nc_u32_e32 v73, s3, v73
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v74, s3, v74
	v_add_nc_u32_e32 v75, s3, v75
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v76, s3, v76
	v_add_nc_u32_e32 v77, s3, v77
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:172 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:272
	scratch_load_b32 v69, off, off offset:212
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[229:230], v[10:17] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:196
	scratch_load_b32 v67, off, off offset:100
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s3, v69
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v66, s3, v66
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:168 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:248
	scratch_load_b32 v71, off, off offset:180
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[229:230], v[58:65] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:88
	scratch_load_b32 v69, off, off offset:84
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v71, s3, v71
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s3, v68
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:192 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:204 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:220
	scratch_load_b32 v73, off, off offset:216
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[229:230], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:292
	scratch_load_b32 v70, off, off offset:296
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s3, v72
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v73, s3, v73
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s3, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:328
	scratch_load_b32 v69, off, off offset:320
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[229:230], v[42:49] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v66, off, off offset:356
	scratch_load_b32 v67, off, off offset:352
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s3, v69
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v66, s3, v66
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:324 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:308 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:312
	scratch_load_b32 v71, off, off offset:276
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[229:230], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s3, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:224 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:288
	scratch_load_b32 v73, off, off offset:252
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[229:230], v[26:33] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:364
	scratch_load_b32 v70, off, off offset:360
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s3, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v73, s3, v73
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v72, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v72, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s3, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s3, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s3, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v73, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v75, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:156 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[229:230], v[18:25] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v72, off, off offset:392
	scratch_load_b32 v74, off, off offset:228
	scratch_load_b32 v73, off, off offset:396
	scratch_load_b32 v69, off, off offset:336
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v75, s3, v75
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s3, v72
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v74, s3, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v74, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v73, s3, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v74, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v74, off, off offset:164 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s3, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s3, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s3, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v75, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	v_add_nc_u32_e32 v9, s3, v255
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	v_lshl_or_b32 v74, v77, 16, v76
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v76, off, off offset:20
	scratch_load_b32 v77, off, off offset:12
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[229:230], v[1:8] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:4
	scratch_load_b32 v75, off, off offset:8
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v76, s3, v76
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v77, s3, v77
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v74, s3, v74
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v75, s3, v75
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:388 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:380
	scratch_load_b32 v69, off, off offset:384
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[10:17], v[66:67], v[195:196], v[10:17] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:448
	scratch_load_b32 v66, off, off offset:444
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v69, s3, v69
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s3, v66
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:436 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:428
	scratch_load_b32 v71, off, off offset:432
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[58:65], v[68:69], v[195:196], v[58:65] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v69, off, off offset:416
	scratch_load_b32 v68, off, off offset:412
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v71, s3, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:452 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:476
	scratch_load_b32 v73, off, off offset:480
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[50:57], v[70:71], v[195:196], v[50:57] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v71, off, off offset:460
	scratch_load_b32 v70, off, off offset:456
	s_waitcnt vmcnt(4)
	v_add_nc_u32_e32 v9, s3, v9
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v66, v66
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(3)
	v_add_nc_u32_e32 v72, s3, v72
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v73, s3, v73
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v71, s3, v71
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v66, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v66, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v66, s3, v66
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v66, v66
	ds_load_u8 v67, v67
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v67, v66, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v68, v68
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v68, v67, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v67, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v67, s3, v67
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v67, v67
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v69, v69, v67, 0xc0c0004
	v_lshl_or_b32 v67, v66, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v66, v69, 16, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v68, off, off offset:488
	scratch_load_b32 v69, off, off offset:496
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[42:49], v[66:67], v[195:196], v[42:49] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v68, v68
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v68, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v68, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v68, s3, v68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v68, v68
	ds_load_u8 v69, v69
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v70, v70
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v70, v69, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v69, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v69, s3, v69
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v69, v69
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v71, v71, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v68, v71, 16, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v70, off, off offset:28
	scratch_load_b32 v71, off, off offset:36
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[34:41], v[68:69], v[195:196], v[34:41] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v70, v70
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v70, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v70, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v70, s3, v70
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v70, v70
	ds_load_u8 v71, v71
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v72, v72
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v72, v71, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v71, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v71, s3, v71
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v71, v71
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v73, v73, v71, 0xc0c0004
	v_lshl_or_b32 v71, v70, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v70, v73, 16, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v72, off, off offset:52
	scratch_load_b32 v73, off, off offset:56
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[26:33], v[70:71], v[195:196], v[26:33] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v72, s3, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v72, v72
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s3, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v72, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v72, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v72, s3, v72
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v72, v72
	ds_load_u8 v73, v73
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v72, v73, v72, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s3, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v74, v74
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v74, v73, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v73, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v73, s3, v73
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v73, v73
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v75, v75, v73, 0xc0c0004
	v_lshl_or_b32 v73, v72, 16, v9
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v9, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshl_or_b32 v72, v75, 16, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v74, off, off offset:76
	scratch_load_b32 v75, off, off offset:68
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_wmma_i32_16x16x16_iu4 v[18:25], v[72:73], v[195:196], v[18:25] neg_lo:[1,1,0]
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, s3, v9
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v74, s3, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v9, v9
	ds_load_u8 v74, v74
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s3, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v74, v9, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v74, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v74, s3, v74
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v74, v74
	ds_load_u8 v75, v75
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s3, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v76, v76
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v76, v76, v75, 0xc0c0004
	.loc	1 125 31                        ; generate_amdgcn.py:125:31
	scratch_load_b32 v75, off, off offset:24 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v75, s3, v75
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	ds_load_u8 v75, v75
	ds_load_u8 v77, v77
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v77, v75, 0xc0c0004
	v_lshl_or_b32 v75, v74, 16, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v74, v77, 16, v76
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[195:196], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_17
.LBB0_16:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v131, v129 :: v_dual_mov_b32 v130, v128
	v_dual_mov_b32 v134, v127 :: v_dual_mov_b32 v133, v126
	v_dual_mov_b32 v206, v121 :: v_dual_mov_b32 v205, v120
	v_dual_mov_b32 v208, v117 :: v_dual_mov_b32 v207, v116
	v_dual_mov_b32 v210, v119 :: v_dual_mov_b32 v209, v118
	v_dual_mov_b32 v212, v115 :: v_dual_mov_b32 v211, v114
	v_dual_mov_b32 v214, v113 :: v_dual_mov_b32 v213, v112
	v_dual_mov_b32 v216, v109 :: v_dual_mov_b32 v215, v108
	v_dual_mov_b32 v218, v111 :: v_dual_mov_b32 v217, v110
	v_dual_mov_b32 v220, v107 :: v_dual_mov_b32 v219, v106
	v_dual_mov_b32 v222, v105 :: v_dual_mov_b32 v221, v104
	v_dual_mov_b32 v224, v101 :: v_dual_mov_b32 v223, v100
	v_dual_mov_b32 v226, v103 :: v_dual_mov_b32 v225, v102
	v_dual_mov_b32 v228, v99 :: v_dual_mov_b32 v227, v98
	v_dual_mov_b32 v232, v97 :: v_dual_mov_b32 v231, v96
	v_dual_mov_b32 v234, v93 :: v_dual_mov_b32 v233, v92
	v_dual_mov_b32 v236, v95 :: v_dual_mov_b32 v235, v94
	v_dual_mov_b32 v238, v91 :: v_dual_mov_b32 v237, v90
	v_dual_mov_b32 v240, v89 :: v_dual_mov_b32 v239, v88
	v_dual_mov_b32 v242, v85 :: v_dual_mov_b32 v241, v84
	v_dual_mov_b32 v244, v87 :: v_dual_mov_b32 v243, v86
	v_dual_mov_b32 v246, v83 :: v_dual_mov_b32 v245, v82
	v_dual_mov_b32 v248, v81 :: v_dual_mov_b32 v247, v80
	v_dual_mov_b32 v250, v77 :: v_dual_mov_b32 v249, v76
	v_dual_mov_b32 v252, v79 :: v_dual_mov_b32 v251, v78
	v_dual_mov_b32 v254, v75 :: v_dual_mov_b32 v253, v74
	v_dual_mov_b32 v198, v73 :: v_dual_mov_b32 v197, v72
	v_dual_mov_b32 v200, v69 :: v_dual_mov_b32 v199, v68
	v_dual_mov_b32 v202, v71 :: v_dual_mov_b32 v201, v70
	v_dual_mov_b32 v204, v67 :: v_dual_mov_b32 v203, v66
.LBB0_17:
	.loc	1 128 22 is_stmt 1              ; generate_amdgcn.py:128:22
	v_or_b32_e32 v9, s24, v194
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v74, v0, 4, 1
	.loc	1 125 39                        ; generate_amdgcn.py:125:39
	s_add_i32 s0, s10, s11
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v115, v11
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s5, s13, 0xffff
	v_lshlrev_b32_e32 v9, 1, v9
	.loc	1 133 31                        ; generate_amdgcn.py:133:31
	v_add_lshl_u32 v255, s0, v74, 1
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s4, s12
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v74, s10, v74
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v94, v9, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s15, 0xffff
	s_mov_b32 s4, s14
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v99, v255, s[4:7], 0 offen offset:4
	buffer_load_u16 v90, v255, s[4:7], 0 offen offset:16
	buffer_load_u16 v92, v255, s[4:7], 0 offen offset:20
	buffer_load_u16 v71, v255, s[4:7], 0 offen offset:24
	buffer_load_u16 v72, v255, s[4:7], 0 offen offset:28
	buffer_load_u16 v132, v255, s[4:7], 0 offen offset:8
	buffer_load_u16 v149, v255, s[4:7], 0 offen
	buffer_load_u16 v141, v255, s[4:7], 0 offen offset:12
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v88, v220
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v220, v61
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v66, v122
	v_cvt_f32_i32_e32 v112, v243
	v_cvt_f32_i32_e32 v174, v244
	v_cvt_f32_i32_e32 v145, v235
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v235, v1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v66, off offset:52 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v66, v123
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v3
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	s_waitcnt lgkmcnt(1)
	v_cvt_f32_i32_e32 v229, v249
	v_cvt_f32_i32_e32 v230, v250
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v156, v10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v66, off offset:56 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v66, v124
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v4
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v188, v245
	v_cvt_f32_i32_e32 v189, v246
	scratch_store_b32 off, v66, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v66, v125
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v5
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v81, v253
	v_cvt_f32_i32_e32 v253, v254
	scratch_store_b32 off, v66, off offset:36 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v66, v133
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v1, off offset:44 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v6
	v_cvt_f32_i32_e32 v136, v37
	v_cvt_f32_i32_e32 v37, v21
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v127, v227
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v227, v25
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	scratch_store_b32 off, v1, off offset:48 ; 4-byte Folded Spill
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v1, v7
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v66, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v66, v134
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v134, v36
	v_cvt_f32_i32_e32 v36, v20
	scratch_store_b32 off, v1, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v1, v8
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v66, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v66, v130
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v108, v27
	v_cvt_f32_i32_e32 v95, v28
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v101, v241
	v_cvt_f32_i32_e32 v181, v242
	v_cvt_f32_i32_e32 v154, v234
	v_cvt_f32_i32_e32 v138, v232
	v_cvt_f32_i32_e32 v118, v223
	v_cvt_f32_i32_e32 v119, v224
	v_cvt_f32_i32_e32 v98, v221
	v_cvt_f32_i32_e32 v86, v216
	v_cvt_f32_i32_e32 v84, v217
	v_cvt_f32_i32_e32 v221, v208
	v_cvt_f32_i32_e32 v241, v209
	v_cvt_f32_i32_e32 v242, v210
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v208, v64
	v_cvt_f32_i32_e32 v209, v65
	v_cvt_f32_i32_e32 v65, v52
	s_waitcnt lgkmcnt(0)
	v_cvt_f32_i32_e32 v195, v53
	v_cvt_f32_i32_e32 v64, v31
	v_cvt_f32_i32_e32 v52, v32
	v_cvt_f32_i32_e32 v53, v33
	v_cvt_f32_i32_e32 v152, v49
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v137, v231
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v67, v16
	v_cvt_f32_i32_e32 v231, v59
	v_cvt_f32_i32_e32 v59, v50
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v69, v201
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v201, v51
	v_cvt_f32_i32_e32 v186, v54
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v121, v240
	v_cvt_f32_i32_e32 v109, v226
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v226, v58
	v_cvt_f32_i32_e32 v187, v55
	v_cvt_f32_i32_e32 v179, v56
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v196, v247
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v247, v12
	v_cvt_f32_i32_e32 v143, v34
	v_cvt_f32_i32_e32 v125, v38
	v_cvt_f32_i32_e32 v116, v40
	v_cvt_f32_i32_e32 v117, v41
	v_cvt_f32_i32_e32 v172, v42
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v77, v204
	v_cvt_f32_i32_e32 v73, v199
	v_cvt_f32_i32_e32 v135, v238
	v_cvt_f32_i32_e32 v238, v206
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v150, v13
	v_cvt_f32_i32_e32 v159, v46
	v_cvt_f32_i32_e32 v160, v47
	v_cvt_f32_i32_e32 v151, v48
	v_cvt_f32_i32_e32 v96, v29
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v29, s11, v194
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v82, v213
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v213, v62
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v80, v197
	v_cvt_f32_i32_e32 v197, v248
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v248, v14
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v76, v203
	v_cvt_f32_i32_e32 v70, v202
	v_cvt_f32_i32_e32 v202, v251
	v_cvt_f32_i32_e32 v203, v252
	v_cvt_f32_i32_e32 v153, v233
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v233, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.h, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v128, v228
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v228, v24
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v75, v200
	v_cvt_f32_i32_e32 v68, v198
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.h, v2.h
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v129, v237
	v_cvt_f32_i32_e32 v146, v236
	v_cvt_f32_i32_e32 v110, v225
	v_cvt_f32_i32_e32 v97, v222
	v_cvt_f32_i32_e32 v89, v219
	v_cvt_f32_i32_e32 v87, v215
	v_cvt_f32_i32_e32 v85, v218
	v_cvt_f32_i32_e32 v83, v214
	v_cvt_f32_i32_e32 v215, v211
	v_cvt_f32_i32_e32 v222, v207
	v_cvt_f32_i32_e32 v237, v205
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v219, v60
	v_cvt_f32_i32_e32 v214, v63
	v_cvt_f32_i32_e32 v180, v57
	v_cvt_f32_i32_e32 v173, v43
	v_cvt_f32_i32_e32 v144, v35
	v_cvt_f32_i32_e32 v126, v39
	v_cvt_f32_i32_e32 v63, v30
	v_cvt_f32_i32_e32 v107, v26
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v167, v239
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v239, v17
	v_cvt_f32_i32_e32 v165, v44
	v_cvt_f32_i32_e32 v44, v18
	v_cvt_f32_i32_e32 v166, v45
	v_cvt_f32_i32_e32 v45, v19
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s24, s24, s11
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s11, s7
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v66, off offset:8
	scratch_store_b32 off, v1, off offset:32
	v_cvt_f32_i32_e32 v66, v131
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x1f
	buffer_load_u16 v30, v255, s[4:7], 0 offen offset:32
	buffer_load_u16 v236, v255, s[4:7], 0 offen offset:36
	buffer_load_u16 v35, v255, s[4:7], 0 offen offset:40
	buffer_load_u16 v225, v255, s[4:7], 0 offen offset:44
	buffer_load_u16 v39, v255, s[4:7], 0 offen offset:48
	buffer_load_u16 v218, v255, s[4:7], 0 offen offset:52
	buffer_load_u16 v211, v255, s[4:7], 0 offen offset:56
	buffer_load_u16 v43, v255, s[4:7], 0 offen offset:60
	buffer_load_u16 v205, v255, s[4:7], 0 offen offset:64
	buffer_load_u16 v207, v255, s[4:7], 0 offen offset:68
	buffer_load_u16 v198, v255, s[4:7], 0 offen offset:72
	buffer_load_u16 v200, v255, s[4:7], 0 offen offset:76
	buffer_load_u16 v192, v255, s[4:7], 0 offen offset:80
	buffer_load_u16 v193, v255, s[4:7], 0 offen offset:84
	buffer_load_u16 v184, v255, s[4:7], 0 offen offset:88
	buffer_load_u16 v185, v255, s[4:7], 0 offen offset:92
	buffer_load_u16 v175, v255, s[4:7], 0 offen offset:96
	buffer_load_u16 v176, v255, s[4:7], 0 offen offset:100
	buffer_load_u16 v168, v255, s[4:7], 0 offen offset:104
	buffer_load_u16 v170, v255, s[4:7], 0 offen offset:108
	buffer_load_u16 v161, v255, s[4:7], 0 offen offset:112
	buffer_load_u16 v162, v255, s[4:7], 0 offen offset:116
	buffer_load_u16 v155, v255, s[4:7], 0 offen offset:120
	buffer_load_u16 v157, v255, s[4:7], 0 offen offset:124
	buffer_load_u16 v147, v255, s[4:7], 0 offen offset:128
	buffer_load_u16 v148, v255, s[4:7], 0 offen offset:132
	buffer_load_u16 v139, v255, s[4:7], 0 offen offset:136
	buffer_load_u16 v140, v255, s[4:7], 0 offen offset:140
	buffer_load_u16 v130, v255, s[4:7], 0 offen offset:144
	buffer_load_u16 v131, v255, s[4:7], 0 offen offset:148
	buffer_load_u16 v120, v255, s[4:7], 0 offen offset:152
	buffer_load_u16 v122, v255, s[4:7], 0 offen offset:156
	s_clause 0x7
	buffer_load_u16 v111, v255, s[4:7], 0 offen offset:160
	buffer_load_u16 v113, v255, s[4:7], 0 offen offset:164
	buffer_load_u16 v103, v255, s[4:7], 0 offen offset:168
	buffer_load_u16 v104, v255, s[4:7], 0 offen offset:172
	buffer_load_u16 v91, v255, s[4:7], 0 offen offset:176
	buffer_load_u16 v93, v255, s[4:7], 0 offen offset:180
	buffer_load_u16 v57, v255, s[4:7], 0 offen offset:184
	buffer_load_u16 v60, v255, s[4:7], 0 offen offset:188
	scratch_store_b32 off, v0, off offset:16 ; 4-byte Folded Spill
	s_waitcnt vmcnt(47)
	v_lshlrev_b32_e32 v61, 16, v99
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v106, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v74, 4, v106
	buffer_load_u16 v243, v106, s[4:7], 0 offen
	v_or_b32_e32 v3, 16, v106
	v_or_b32_e32 v7, 20, v106
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(42)
	v_lshlrev_b32_e32 v149, 16, v149
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x2
	buffer_load_u16 v244, v74, s[4:7], 0 offen
	buffer_load_u16 v249, v3, s[4:7], 0 offen
	buffer_load_u16 v250, v7, s[4:7], 0 offen
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v3, 16, v94
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v74, v212
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v61, v3, v61
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v78, 8, v106
	v_or_b32_e32 v79, 12, v106
	s_clause 0x1
	buffer_load_u16 v245, v78, s[4:7], 0 offen
	buffer_load_u16 v246, v79, s[4:7], 0 offen
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v254, v61, v115 :: v_dual_and_b32 v9, 16, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v20, 32, v106
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v149, v3, v149
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v21, 36, v106
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v142, 0xbfb8aa3b, v254
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	scratch_store_b32 off, v9, off offset:20 ; 4-byte Folded Spill
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v9
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	scratch_store_b32 off, v66, off offset:4 ; 4-byte Folded Spill
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v25, 40, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v142
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v27, 44, v106
	scratch_store_b32 off, v1, off          ; 4-byte Folded Spill
	v_or_b32_e32 v28, 48, v106
	v_or_b32_e32 v31, 52, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v142, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v163, 0, 0xffffffc0, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v32, 56, v106
	v_or_b32_e32 v33, 60, v106
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v0, v149, v156
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v142, 0xbfb8aa3b, v254
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x7
	buffer_load_u16 v232, v20, s[4:7], 0 offen
	buffer_load_u16 v234, v21, s[4:7], 0 offen
	buffer_load_u16 v223, v25, s[4:7], 0 offen
	buffer_load_u16 v224, v27, s[4:7], 0 offen
	buffer_load_u16 v216, v28, s[4:7], 0 offen
	buffer_load_u16 v217, v31, s[4:7], 0 offen
	buffer_load_u16 v210, v32, s[4:7], 0 offen
	buffer_load_u16 v212, v33, s[4:7], 0 offen
	v_or_b32_e32 v158, 24, v106
	v_or_b32_e32 v49, 0x60, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v0
	v_exp_f32_e32 v142, v142
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v16, 28, v106
	v_or_b32_e32 v50, 0x64, v106
	v_or_b32_e32 v51, 0x68, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v7, 0x6c, v106
	v_or_b32_e32 v54, 0x70, v106
	v_or_b32_e32 v55, 0x74, v106
	v_or_b32_e32 v56, 0x78, v106
	v_or_b32_e32 v58, 0x7c, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v142, v142, v163
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x1
	buffer_load_u16 v240, v158, s[4:7], 0 offen
	buffer_load_u16 v16, v16, s[4:7], 0 offen
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x7
	buffer_load_u16 v177, v49, s[4:7], 0 offen
	buffer_load_u16 v178, v50, s[4:7], 0 offen
	buffer_load_u16 v169, v51, s[4:7], 0 offen
	buffer_load_u16 v171, v7, s[4:7], 0 offen
	buffer_load_u16 v163, v54, s[4:7], 0 offen
	buffer_load_u16 v164, v55, s[4:7], 0 offen
	buffer_load_u16 v156, v56, s[4:7], 0 offen
	buffer_load_u16 v158, v58, s[4:7], 0 offen
	v_or_b32_e32 v34, 64, v106
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v1, 1.0, v142
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v38, 0x44, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v40, 0x48, v106
	v_or_b32_e32 v41, 0x4c, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v21, null, v1, v1, v254
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v20, v20
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v42, 0x50, v106
	v_or_b32_e32 v46, 0x54, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v27, v21
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v47, 0x58, v106
	v_or_b32_e32 v48, 0x5c, v106
	s_clause 0x7
	buffer_load_u16 v204, v34, s[4:7], 0 offen
	buffer_load_u16 v206, v38, s[4:7], 0 offen
	buffer_load_u16 v194, v40, s[4:7], 0 offen
	buffer_load_u16 v199, v41, s[4:7], 0 offen
	buffer_load_u16 v190, v42, s[4:7], 0 offen
	buffer_load_u16 v191, v46, s[4:7], 0 offen
	buffer_load_u16 v182, v47, s[4:7], 0 offen
	buffer_load_u16 v183, v48, s[4:7], 0 offen
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v31, 0, 0xffffffc0, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v62, 0x80, v106
	v_or_b32_e32 v61, 0xa0, v106
	v_or_b32_e32 v12, 0xc0, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, s0, v254, v1, v254
	v_fma_f32 v7, -v21, v27, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v20, v20, v31
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v94, 0x84, v106
	v_or_b32_e32 v115, 0xa4, v106
	v_or_b32_e32 v14, 0xc4, v106
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v27, v7, v27
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v7, 16, v132
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v99, 0x88, v106
	v_or_b32_e32 v100, 0xa8, v106
	v_or_b32_e32 v10, 0xc8, v106
	v_or_b32_e32 v123, 0x8c, v106
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v7, v3, v7
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v25, 16, v141
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v105, 0xac, v106
	v_or_b32_e32 v11, 0xcc, v106
	v_or_b32_e32 v124, 0x90, v106
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v38, v7, v247
	.loc	1 134 25 is_stmt 0              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v25, v3, v25
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v7, 16, v90
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v133, 0x94, v106
	v_or_b32_e32 v251, 0x98, v106
	v_or_b32_e32 v252, 0x9c, v106
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v25, v25, v150
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v102, 0xb0, v106
	v_or_b32_e32 v13, 0xb4, v106
	v_or_b32_e32 v6, 0xd0, v106
	v_or_b32_e32 v4, 0xd8, v106
	v_or_b32_e32 v114, 0xb8, v106
	v_or_b32_e32 v8, 0xbc, v106
	v_or_b32_e32 v9, 0xd4, v106
	v_or_b32_e32 v5, 0xdc, v106
	s_clause 0xf
	buffer_load_u16 v149, v62, s[4:7], 0 offen
	buffer_load_u16 v150, v94, s[4:7], 0 offen
	buffer_load_u16 v141, v99, s[4:7], 0 offen
	buffer_load_u16 v142, v123, s[4:7], 0 offen
	buffer_load_u16 v132, v124, s[4:7], 0 offen
	buffer_load_u16 v133, v133, s[4:7], 0 offen
	buffer_load_u16 v123, v251, s[4:7], 0 offen
	buffer_load_u16 v124, v252, s[4:7], 0 offen
	buffer_load_u16 v252, v61, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	buffer_load_u16 v251, v100, s[4:7], 0 offen
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	buffer_load_u16 v99, v102, s[4:7], 0 offen
	buffer_load_u16 v94, v13, s[4:7], 0 offen
	buffer_load_u16 v61, v114, s[4:7], 0 offen
	buffer_load_u16 v62, v8, s[4:7], 0 offen
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v13, 1.0, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x7
	buffer_load_u16 v54, v12, s[4:7], 0 offen
	buffer_load_u16 v56, v14, s[4:7], 0 offen
	buffer_load_u16 v49, v10, s[4:7], 0 offen
	buffer_load_u16 v51, v11, s[4:7], 0 offen
	buffer_load_u16 v41, v6, s[4:7], 0 offen
	buffer_load_u16 v42, v9, s[4:7], 0 offen
	buffer_load_u16 v33, v4, s[4:7], 0 offen
	buffer_load_u16 v34, v5, s[4:7], 0 offen
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v4, v3, v7
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v20, 0xbfb8aa3b, v25
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v32, v28, v27
	s_mov_b32 vcc_lo, s0
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v8, 16, v92
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v11, v4, v248
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v20
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v21, v32, v28
	.loc	1 132 24 is_stmt 1              ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v66, v15
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v5, v3, v8
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v79, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v20, 0, 0x42800000, s1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v32, v31, v27 :: v_dual_mul_f32 v31, 0xbfb8aa3b, v38
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v22, 0xe0, v106
	.loc	1 132 24                        ; generate_amdgcn.py:132:24
	v_cvt_f32_i32_e32 v78, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v25
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v21, v32, v28
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v23, 0xe4, v106
	v_or_b32_e32 v26, 0xe8, v106
	v_or_b32_e32 v17, 0xec, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v8, v20
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v32, v21, v27, v32
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v31
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v18, 0xf0, v106
	v_or_b32_e32 v19, 0xf4, v106
	v_or_b32_e32 v15, 0xf8, v106
	v_or_b32_e32 v106, 0xfc, v106
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v32, v1, v254
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v100, v255, s[4:7], 0 offen offset:192
	buffer_load_u16 v102, v255, s[4:7], 0 offen offset:196
	buffer_load_u16 v90, v255, s[4:7], 0 offen offset:200
	buffer_load_u16 v92, v255, s[4:7], 0 offen offset:204
	buffer_load_u16 v55, v255, s[4:7], 0 offen offset:208
	buffer_load_u16 v58, v255, s[4:7], 0 offen offset:212
	buffer_load_u16 v48, v255, s[4:7], 0 offen offset:216
	buffer_load_u16 v50, v255, s[4:7], 0 offen offset:220
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v38
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v40, null, v13, v13, v0
	v_div_scale_f32 v10, s0, v0, v13, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v6, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v46, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v30, v30, v226
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v6, v6, v12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v7, -v40, v46, 1.0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v46, v7, v46
	v_mul_f32_e32 v31, v10, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v40, v31, v10
	v_fmac_f32_e32 v31, v12, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v40, v31, v10
	v_div_fmas_f32 v10, v10, v46, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v0, v10, v13, v0
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v9, v5, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v5, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v66.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v14, v8, v5
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_clause 0x7
	buffer_load_u16 v27, v22, s[4:7], 0 offen
	buffer_load_u16 v28, v23, s[4:7], 0 offen
	buffer_load_u16 v21, v26, s[4:7], 0 offen
	buffer_load_u16 v20, v17, s[4:7], 0 offen
	buffer_load_u16 v4, v18, s[4:7], 0 offen
	buffer_load_u16 v5, v19, s[4:7], 0 offen
	buffer_load_u16 v8, v15, s[4:7], 0 offen
	buffer_load_u16 v7, v106, s[4:7], 0 offen
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v23, null, v6, v6, v38
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v31, v23
	v_div_scale_f32 v12, null, v14, v14, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v22, v12
	v_fma_f32 v46, -v23, v31, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v31, v46, v31
	v_fma_f32 v32, -v12, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, v32, v22
	v_div_scale_f32 v32, s0, v25, v14, v25
	v_mul_f32_e32 v10, v32, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v12, v10, v32
	v_fmac_f32_e32 v10, v46, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v12, v10, v32
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(62)
	v_lshlrev_b32_e32 v15, 16, v243
	v_lshlrev_b32_e32 v17, 16, v244
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v3, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v17, v3, v17
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v15, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v17, v17, v77 :: v_dual_mul_f32 v0, v15, v0
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v26, 0xbfb8aa3b, v9
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v18, 16, v246
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v40, 0xbfb8aa3b, v11
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v18, v3, v18 :: v_dual_lshlrev_b32 v19, 16, v245
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v40
	v_cndmask_b32_e64 v26, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v24
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v13, 0, 0x42800000, s1
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v12, v22, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v26, 0xbfb8aa3b, v9 :: v_dual_fmac_f32 v13, 0xbfb8aa3b, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v0, v24, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v10, v14, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v47, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v13, v26, v40
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v13
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v17, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, s2, v38, v6, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v13.l, 0x7fff, v0.h, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v0, v47, v15
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v46, v17, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v26, -v23, v46, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v26, v31
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v23, v46, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v32, 1, v2
	v_add3_u32 v1, v1, v32, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v13.h, 0x7fff, v1.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v1, null, v12, v12, v9
	v_div_fmas_f32 v17, v17, v31, v46
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v31, 16, v71
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v1
	v_div_fixup_f32 v6, v17, v6, v38
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v14, v18, v75 :: v_dual_lshlrev_b32 v17, 16, v72
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v31, v3, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v17, v3, v17 :: v_dual_mul_f32 v10, v14, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v1, v15, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v239
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v18, v3, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v10.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v15, v22, v15
	v_div_scale_f32 v22, vcc_lo, v9, v12, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v17
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v18, v73
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v19, null, v0, v0, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v25
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v18, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v18, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v14, v19
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v42, 16, v42
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v25, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v24, v22, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v18, v10, v18, 0x7fff
	v_mov_b16_e32 v66.l, v6.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v42, v3, v42 :: v_dual_fmac_f32 v25, 0xbfb8aa3b, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v1, v24, v22
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v19, v14, 1.0
	s_waitcnt vmcnt(17)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v24, v10, v15 :: v_dual_lshlrev_b32 v33, 16, v33
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v49, v3, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v33, v3, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v1, -v1, v24, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v22, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v1, v1, v15, v24
	v_div_fixup_f32 v1, v1, v12, v9
	v_fmac_f32_e32 v14, v23, v14
	v_div_scale_f32 v23, s0, v11, v0, v11
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v26, v23, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v10, -v19, v26, v23
	v_fmac_f32_e32 v26, v10, v14
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v10, v31, v67
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	s_clause 0x7
	buffer_load_u16 v46, v255, s[4:7], 0 offen offset:224
	buffer_load_u16 v47, v255, s[4:7], 0 offen offset:228
	buffer_load_u16 v38, v255, s[4:7], 0 offen offset:232
	buffer_load_u16 v40, v255, s[4:7], 0 offen offset:236
	buffer_load_u16 v31, v255, s[4:7], 0 offen offset:240
	buffer_load_u16 v32, v255, s[4:7], 0 offen offset:244
	buffer_load_u16 v24, v255, s[4:7], 0 offen offset:248
	buffer_load_u16 v25, v255, s[4:7], 0 offen offset:252
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v19, v26, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v23, 0xbfb8aa3b, v10
	v_cndmask_b32_e64 v19, 0, 0xffffffc0, s2
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v14, v26
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_ldexp_f32 v19, v22, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v66
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v14, s24, s10, v29
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v250
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v66, 1.0, v19
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v15, v0, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v19, v3, v29 :: v_dual_fmac_f32 v22, 0xbfb8aa3b, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v66, v66, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v19, v70 :: v_dual_lshlrev_b32 v26, 16, v249
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v22, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v19.h, 0x7fff, v18.h, s1
	v_add3_u32 v23, v6, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v29, v1
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	s_mov_b32 s10, s6
	v_cndmask_b16 v19.l, 0x7fff, v23.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v22, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v30 :: v_dual_lshlrev_b32 v22, 16, v236
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v6, 1.0, v9 :: v_dual_and_b32 v23, 1, v2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.h, v2.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v27, 16, v27
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v23, v1, v23, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v6, v6, v10
	v_fma_f32 v18, -v15, v11, 1.0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v8, 16, v8
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v27, v3, v27 :: v_dual_lshlrev_b32 v4, 16, v4
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v5, 16, v5
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v18, v11
	v_div_scale_f32 v18, s0, v17, v66, v17
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v26, v3, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v4, v3, v4 :: v_dual_mul_f32 v29, v18, v11
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v26, v26, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v15, v29, v18
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v26, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v26, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v29, v69, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v9.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v15, v29, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v67, -v12, v26, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v0, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v26, v67, v26
	v_div_scale_f32 v67, s1, v10, v6, v10
	v_mul_f32_e32 v69, v67, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v12, v69, v67
	v_dual_fmac_f32 v69, v18, v26 :: v_dual_lshlrev_b32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v3, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v12, v69, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v16, v68 :: v_dual_lshlrev_b32 v67, 16, v234
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v72, 16, v240
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v72, v3, v72
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v3, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v231
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_div_fmas_f32 v11, v15, v11, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v12, v12, v26, v69
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v70, v70
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v12, v6, v10
	v_div_fixup_f32 v10, v11, v66, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v16, v10
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v70, v18
	v_exp_f32_e32 v18, v71
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v70, 16, v232
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v15, v15, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v18, v26
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.h, 0x7fff, v23.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v10, 1.0, v11 :: v_dual_lshlrev_b32 v23, 16, v225
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v26.l, 0x7fff, v9.h, vcc_lo
	v_and_b32_e32 v9, 1, v2
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v29, v72, v80
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v3, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v10, v10, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v1, v9, 0x7fff
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v29, v6 :: v_dual_mul_f32 v23, v23, v220
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v18, -v12, v11, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v6.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v18, v11
	v_div_scale_f32 v18, vcc_lo, v22, v15, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v0, 1, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v1, v18, v11
	v_fma_f32 v68, -v12, v1, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v17, v16, 1.0
	v_dual_fmac_f32 v1, v68, v11 :: v_dual_fmac_f32 v16, v29, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v29, 16, v35
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v35, s1, v30, v10, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v1, v18
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v3, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v69, v35, v16
	v_div_fmas_f32 v1, v12, v11, v1
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v29, v29, v219
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v66, 0xbfb8aa3b, v23
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v17, v69, v35
	v_div_fixup_f32 v1, v1, v15, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v6, v0, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v29
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v66
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v69, v68, v16 :: v_dual_lshlrev_b32 v22, 16, v218
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v71
	v_cndmask_b32_e64 v66, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v11, -v17, v69, v35
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v17, v3, v67
	v_mul_f32_e32 v70, v3, v70
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v23
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v11, v16, v69
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v17, v253
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.h, 0x7fff, v9.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v18, v66
	v_cndmask_b32_e64 v66, 0, 0x42800000, s3
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v11, v10, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v17, v1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v35.l, 0x7fff, v0.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v29
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v224
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v12, v18, v12
	v_exp_f32_e32 v16, v66
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v70, v81
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_and_b32 v9, 1, v2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v3, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v1, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v12, v12, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v16, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v1, vcc_lo, v23, v12, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v16, v15
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v10, v18, v10 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v30, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v11, v11, v29
	v_fma_f32 v18, -v15, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v0, v17
	v_fmac_f32_e32 v16, v18, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v3, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v17, v0, 1.0
	v_fmac_f32_e32 v0, v22, v0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v39
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v39, s1, v29, v11, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v3, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v70, v39, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v213
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v22
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v67, v1, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v71
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v15, v67, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v67, v69, v16 :: v_dual_and_b32 v6, 1, v6
	v_fma_f32 v69, -v17, v70, v39
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v10, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v1, -v15, v67, v1
	v_fmac_f32_e32 v70, v69, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v1, v1, v16, v67
	v_fma_f32 v16, -v17, v70, v39
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.h, 0x7fff, v9.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v1, v1, v12, v23
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v30, v1
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v18, v214
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v68, 0xbfb8aa3b, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v3, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v68, 0, 0x42800000, s2
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v15, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, s3
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v15, v15, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v16, v0, v70
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v68
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v1, v17, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v1, 16, v43
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 16, v223
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v11, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s3
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.h, v2.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v1, v3, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v66, v3, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.h, 0x7fff, v17.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v16, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v39.l, 0x7fff, v6.h, vcc_lo
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v1, v1, v209
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v66, v66, v229 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v67, 0xbfb8aa3b, v1 :: v_dual_mul_f32 v0, v66, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v11, v11, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v0.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v23, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v9, v9, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v0, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v12
	v_fma_f32 v17, -v10, v23, 1.0
	v_div_scale_f32 v15, vcc_lo, v18, v9, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v23, v17, v23
	v_fma_f32 v29, -v12, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v16, v29, v16 :: v_dual_lshlrev_b32 v29, 16, v211
	v_mul_f32_e32 v66, v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v12, v66, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v208
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, s0, v22, v11, v22
	v_dual_fmac_f32 v66, v69, v16 :: v_dual_mul_f32 v71, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v70, v29, v23
	v_fma_f32 v12, -v12, v66, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v10, v70, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v16, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v70, v69, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v67, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v9, v12, v9, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v10, v70, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v67, 16, v205
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v71
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v23, v70
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v30, v203
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v15, v15, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v10, v11, v22
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v23, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v16, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v43.l, 0x7fff, v6.h, vcc_lo
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v18, null, v9, v9, v17
	v_rcp_f32_e32 v22, v18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v12, v11, 1.0
	v_fmac_f32_e32 v11, v23, v11
	v_div_scale_f32 v23, vcc_lo, v1, v15, v1
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v216
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v66, -v18, v22, 1.0
	v_mul_f32_e32 v69, v23, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v22, v66, v22
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s0, v17, v9, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v68, v202
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v210
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v66, v66, v59 :: v_dual_mul_f32 v71, v67, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v59, v3, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v12, v69, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v66 :: v_dual_fmac_f32 v69, v68, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v18, v71, v67
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v12, v69, v23
	v_fmac_f32_e32 v71, v68, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s2
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v204
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v12, v11, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v12, -v18, v71, v67
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v66
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v11, v15, v1
	v_div_fmas_f32 v12, v12, v22, v71
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v59, v196
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v12, v9, v17
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v10, v30, v10 :: v_dual_mul_f32 v9, v15, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v10.h
	v_cmp_o_f32_e64 s0, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v9.h
	v_and_b32_e32 v6, 1, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v207
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v3, v16
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v70, 0, 0x42800000, s1
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v18, v70, v23
	v_exp_f32_e32 v23, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v23, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v23, null, v11, v11, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v29, 1, v2
	v_add3_u32 v15, v0, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v59.h, 0x7fff, v15.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v200
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v18, v18, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v15, v3, v15 :: v_dual_lshlrev_b32 v30, 16, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v12
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v3, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v15, v195
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v29, -v12, v17, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v17, v29, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v10, v6, 0x7fff
	v_and_b32_e32 v10, 1, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v22, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v59.l, 0x7fff, v6.h, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v29, -v23, v22, 1.0
	v_fmac_f32_e32 v22, v29, v22
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v29, 16, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v3, v29
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v29, v29, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v29
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s1, v66, v11, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v70, v67, v22
	v_fma_f32 v65, -v23, v70, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v65, v22
	v_fma_f32 v23, -v23, v70, v67
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v30, v30, v197 :: v_dual_lshlrev_b32 v67, 16, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v67, v3, v67
	.loc	1 135 19 is_stmt 1              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v30, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v9, v10, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, vcc_lo, v16, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v0, 1, v2
	v_add3_u32 v0, v1, v0, 0x7fff
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v1, 16, v206
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.h, 0x7fff, v0.h, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v1, v3, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v1, v1, v189
	.loc	1 135 26 is_stmt 1              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v30, v10, v17
	v_fma_f32 v69, -v12, v30, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v30, v69, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v12, v30, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v15
	v_cndmask_b32_e64 v12, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v17, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v69
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v10, v10, v18, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s3
	v_exp_f32_e32 v12, v12
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v22, v23, v22, v70
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v1, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v17, v17, v30
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v68, v188
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v22, v11, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v65.l, 0x7fff, v6.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v192
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v0, 1.0, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v12, v16
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v23, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v0, v0, v15
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v11.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v18, 16, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v9, v9, v29
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v28, 16, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v22, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v23, -v12, v10, 1.0
	v_fmac_f32_e32 v10, v23, v10
	v_div_scale_f32 v23, vcc_lo, v15, v0, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v17, v22, 1.0
	v_mul_f32_e32 v68, v23, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v22, v30, v22
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v66, s1, v29, v9, v29
	v_fma_f32 v70, -v12, v68, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v71, v66, v22
	v_fmac_f32_e32 v68, v70, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v17, v71, v66
	v_fma_f32 v12, -v12, v68, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v71, v70, v22
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v70, 16, v190
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v12, v10, v68
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v17, v71, v66
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v184
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v10, v0, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v67, v101
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v67, 16, v191
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v22, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v30, v30, v186 :: v_dual_mul_f32 v67, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v12, v9, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v70, v3, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v30 :: v_dual_mul_f32 v9, v15, v9
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v11, v16, 0x7fff
	v_mov_b16_e32 v15.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v72
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v101.l, 0x7fff, v16.h, vcc_lo
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v3, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v16, v16, v180 :: v_dual_and_b32 v15, 1, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v9, v15, 0x7fff
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v1, v3, v18 :: v_dual_lshlrev_b32 v18, 16, v199
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v101.h, 0x7fff, v6.h, s0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v1, v1, v187 :: v_dual_mul_f32 v18, v3, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v18, v181
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v69
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v18, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s2
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v69, v69
	v_ldexp_f32 v17, v69, v23
	v_exp_f32_e32 v23, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v17, v17, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v23, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v22, vcc_lo, v1, v17, v1
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	v_div_scale_f32 v18, null, v6, v6, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v23, v18
	v_fma_f32 v29, -v12, v10, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v10, v29, v10
	v_fma_f32 v29, -v18, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v68, v22, v10 :: v_dual_fmac_f32 v23, v29, v23
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v3, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v66, s0, v30, v6, v30
	v_fma_f32 v71, -v12, v68, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v29, v29, v179
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v72, v66, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v68, v71, v10 :: v_dual_mul_f32 v73, 0xbfb8aa3b, v29
	v_fma_f32 v71, -v18, v72, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v68, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v72, v71, v23 :: v_dual_lshlrev_b32 v71, 16, v182
	v_div_fmas_f32 v10, v12, v10, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v73, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v18, v72, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v10, v17, v1
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v71, v3, v71
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v29
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v23, v72
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v67, v174
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v67, v70, v112
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v2
	v_add3_u32 v11, v0, v11, 0x7fff
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v0, v23, v1 :: v_dual_lshlrev_b32 v23, 16, v176
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v112.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v3, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v12, v6, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	v_cndmask_b16 v112.l, 0x7fff, v15.h, vcc_lo
	v_and_b32_e32 v15, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v69, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v6, v67, v6
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v173
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v6.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v69, 0, 0x42800000, s1
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v67
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v6, v9, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v69, v69
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v69, v22
	v_exp_f32_e32 v22, v73
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v18, v18, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v22, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v1, 1.0, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_scale_f32 v22, null, v1, v1, v29
	v_div_scale_f32 v66, s1, v29, v1, v29
	v_rcp_f32_e32 v11, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v12, v10, 1.0
	v_fmac_f32_e32 v10, v17, v10
	v_div_scale_f32 v17, vcc_lo, v16, v18, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v22, v11, 1.0
	v_dual_mul_f32 v0, v17, v10 :: v_dual_fmac_f32 v11, v30, v11
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v30, 16, v175
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v12, v0, v17
	v_mul_f32_e32 v70, v66, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v69, v10
	v_fma_f32 v69, -v22, v70, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v12, v0, v17
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v70, v69, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v12, v10, v0
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v22, v70, v66
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 16, v177
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v12, v17, v12
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v11, v70
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v71, v167
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v18, v16
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v66, v3, v66
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v10, v1, v29
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v29, 16, v178
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v66, v66, v129
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, v2.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v17, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v29, v3, v29
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v1.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v29, v29, v135 :: v_dual_mul_f32 v30, v30, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v72, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v11, v67
	v_ldexp_f32 v10, v11, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v12, v12, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v18, -v11, v16, 1.0
	v_fmac_f32_e32 v16, v18, v16
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v183
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v22, v3, v68
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v22, v121
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v121.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v121.h, 0x7fff, v15.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v22, v0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v170
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v3, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v18, v18, v166
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v69, 0xbfb8aa3b, v18
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v0, vcc_lo, v23, v12, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v129.h, 0x7fff, v15.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v67, v0, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v70, -v11, v67, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v10, v10, v30
	v_div_scale_f32 v68, s1, v30, v10, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v67, v70, v16
	v_rcp_f32_e32 v9, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v11, v67, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v11, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v0, v16, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v17, v9, 1.0
	s_mov_b32 vcc_lo, s1
	v_dual_fmac_f32 v9, v22, v9 :: v_dual_lshlrev_b32 v22, 16, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v71, v68, v9 :: v_dual_mul_f32 v22, v3, v22
	v_fma_f32 v70, -v17, v71, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v165
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v71, v70, v9 :: v_dual_mul_f32 v72, 0xbfb8aa3b, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v16, -v17, v71, v68
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v72
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v169
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v16, v9, v71
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_ldexp_f32 v11, v11, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v10, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v69, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s3
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v129.l, 0x7fff, v6.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v66, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v69
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v171
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v9.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v30, v3, v30 :: v_dual_and_b32 v15, 1, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v12, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v16, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v11, v11, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v9, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v29, v0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v1, null, v10, v10, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	v_and_b32_e32 v17, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v23, v1
	v_fma_f32 v29, -v12, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v17, v0, v17, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v0, 16, v162
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v16, v29, v16 :: v_dual_lshlrev_b32 v29, 16, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v135.h, 0x7fff, v17.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v1, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v0, v3, v0 :: v_dual_fmac_f32 v23, v17, v23
	v_dual_mul_f32 v17, v3, v29 :: v_dual_mul_f32 v0, v0, v160
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, s0, v22, v10, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v159
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v67, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v70, v29, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v71, 0xbfb8aa3b, v17
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, vcc_lo, v18, v11, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v66, v15, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s1
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v12, v66, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v71, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v66, v69, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v1, v70, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v12, v66, v15
	v_fmac_f32_e32 v70, v69, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v16, v66
	v_fma_f32 v1, -v1, v70, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v71
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v15, v67, v15
	v_cndmask_b32_e64 v29, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v1, v1, v23, v70
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v30, v154
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v67, 16, v155
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v1, v10, v22
	v_div_fixup_f32 v10, v12, v11, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v16, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v15, v15, v0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v135.l, 0x7fff, v6.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v9, v23, v10 :: v_dual_add_f32 v10, 1.0, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v12
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v30, v68, v153
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v68, 16, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v9.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v18, null, v10, v10, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v68, v3, v68 :: v_dual_and_b32 v29, 1, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v22, v18
	v_fma_f32 v23, -v12, v11, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v11, v23, v11
	v_div_scale_f32 v23, vcc_lo, v0, v15, v0
	v_fma_f32 v66, -v18, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v69, v23, v11 :: v_dual_fmac_f32 v22, v66, v22
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v67, s0, v17, v10, v17
	v_fma_f32 v71, -v12, v69, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v66, v66, v151
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v72, v67, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v69, v71, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v73, 0xbfb8aa3b, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v71, -v18, v72, v67
	v_fma_f32 v12, -v12, v69, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v73
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v72, v71, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v11, v12, v11, v69
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v73, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v18, v72, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v0, v11, v15, v0
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v68, v145
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v22, v72
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v73, 0xbfb8aa3b, v66 :: v_dual_lshlrev_b32 v68, 16, v156
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v12, v10, v17
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v3, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v15, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v9, v29, 0x7fff
	v_mov_b16_e32 v22.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v145.h, 0x7fff, v15.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v148
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v3, v15
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v15, v15, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v15
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v1, v30, v1 :: v_dual_lshlrev_b32 v30, 16, v164
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v1.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v30, v3, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v71, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v157
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v30, v30, v146 :: v_dual_fmac_f32 v71, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v3, v16
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v30, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v152
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v70, 0xbfb8aa3b, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v70, 0, 0x42800000, s1
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v70, v70
	v_ldexp_f32 v18, v70, v23
	v_exp_f32_e32 v23, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v18, v18, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v23, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v23, null, v11, v11, v66
	v_div_scale_f32 v67, s1, v66, v11, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v12, v17, 1.0
	v_rcp_f32_e32 v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v17, v29, v17
	v_fma_f32 v29, -v23, v22, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v22, v29, v22 :: v_dual_lshlrev_b32 v29, 16, v147
	v_mul_f32_e32 v70, v67, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v3, v29
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v29, v29, v143
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v1, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v29 :: v_dual_and_b32 v1, 1, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v145.l, 0x7fff, v6.h, s0
	v_add3_u32 v6, v10, v9, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v9, vcc_lo, v16, v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v72
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v30, v9, v17
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v0, 16, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v69, -v12, v30, v9
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v0, v3, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v30, v69, v17
	v_fma_f32 v69, -v23, v70, v67
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v0, v0, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v9, -v12, v30, v9
	v_fmac_f32_e32 v70, v69, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v9, v17, v30
	v_fma_f32 v23, -v23, v70, v67
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v29
	v_exp_f32_e32 v17, v71
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v22, v23, v22, v70
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v68, v137
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v137.h, 0x7fff, v1.h, s0
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v22, v11, v66
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v139
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v67, 16, v149
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v17, v17, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v137.l, 0x7fff, v6.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v23, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v18, v16
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s3
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v1, 1.0, v17 :: v_dual_lshlrev_b32 v18, 16, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v67, v3, v67 :: v_dual_mul_f32 v0, v0, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v12, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v1, v1, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v11.h
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	v_mov_b16_e32 v16.h, v2.h
	v_and_b32_e32 v6, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v9, v9, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	v_add3_u32 v6, v0, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v22, v17
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v0, v3, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v12, v10, 1.0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v18, 16, v150
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v11, v16, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v0, v0, v136
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v10, v23, v10
	v_div_scale_f32 v23, vcc_lo, v15, v1, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v17, v22, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v69, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v18, v3, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v68, v23, v10
	v_fmac_f32_e32 v22, v30, v22
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v69
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v66, s1, v29, v9, v29
	v_fma_f32 v70, -v12, v68, v23
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v30, v30, v134
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, s2
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v71, v66, v22
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v18, v128
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v68, v70, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v30 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v70, -v17, v71, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v12, -v12, v68, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v69, v69
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v71, v70, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v12, v10, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v72, 0, 0x42800000, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v12, -v17, v71, v66
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v130
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v10, v1, v15
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v72, 0xbfb8aa3b, v30
	v_ldexp_f32 v17, v69, v23
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v22, v71
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v67, v127
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v23, v72
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v127.h, 0x7fff, v6.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v12, v9, v29
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v18, v1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v17, v17, v0
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v23, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v127.l, 0x7fff, v16.h, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v67, 16, v142
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v3, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v22, vcc_lo, v0, v17, v0
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v16, v16, v126
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v70, 16, v141
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v18, null, v6, v6, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v69, 0xbfb8aa3b, v16 :: v_dual_mul_f32 v70, v3, v70
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v67, v3, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v23, v18
	v_fma_f32 v29, -v12, v10, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v69
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v15, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v1, v11, 0x7fff
	v_mov_b16_e32 v15.h, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v10, v29, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v69, 0, 0x42800000, s1
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v9.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v28, v3, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v29, -v18, v23, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, v22, v10 :: v_dual_fmac_f32 v69, 0xbfb8aa3b, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v23, v29, v23
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v3, v66
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v66, s0, v30, v6, v30
	v_fma_f32 v71, -v12, v68, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v69, v69
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v29, v29, v125 :: v_dual_mul_f32 v72, v66, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v9, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v68, v71, v10 :: v_dual_mul_f32 v73, 0xbfb8aa3b, v29
	v_fma_f32 v71, -v18, v72, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v12, -v12, v68, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v22, 0, 0xffffffc0, s1
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v72, v71, v23 :: v_dual_lshlrev_b32 v71, 16, v132
	v_div_fmas_f32 v10, v12, v10, v68
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v73, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v18, v72, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v18, v69, v22
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v10, v17, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v73, 0xbfb8aa3b, v29
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v23, v72
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v18, 1.0, v18 :: v_dual_mul_f32 v23, v67, v119
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v67, v70, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v22, v73
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v12, v6, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_scale_f32 v12, null, v18, v18, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v23, v0
	v_mul_f32_e32 v6, v67, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, v2.h
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v23, 16, v122
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v118.h, 0x7fff, v11.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v22, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v6.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v3, v23
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v1, 1.0, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v9, 1, v17
	v_cndmask_b16 v118.l, 0x7fff, v15.h, vcc_lo
	v_and_b32_e32 v15, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v22, null, v1, v1, v29
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v117
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v11, v22
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v12, v10, 1.0
	v_div_scale_f32 v66, s1, v29, v1, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v23
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v71, v3, v71 :: v_dual_fmac_f32 v10, v17, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, vcc_lo, v16, v18, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v22, v11, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v9, v6, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v0, v17, v10
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v11, v30, v11
	v_fma_f32 v69, -v12, v0, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v70, v66, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v0, v69, v10
	v_fma_f32 v69, -v22, v70, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v12, v0, v17
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v70, v69, v11
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v123
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v12, v10, v0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v10, -v22, v70, v66
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 16, v124
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v30, 16, v120
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v12, v17, v12
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v71, v110
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v71, 16, v252
	v_lshlrev_b32_e32 v68, 16, v133
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v11, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_mul_f32 v71, v3, v71
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v22, v3, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v30, v30, v116
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v10, v1, v29
	v_div_fixup_f32 v0, v0, v18, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v22, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v72, 0xbfb8aa3b, v30 :: v_dual_mul_f32 v1, v17, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v109.h, 0x7fff, v15.h, s0
	v_cndmask_b16 v109.l, 0x7fff, v9.h, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v22, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v72
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v113
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v1.h
	v_mov_b16_e32 v6.h, v2.h
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_and_b32_e32 v6, 1, v6
	v_and_b32_e32 v15, 1, v2
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s1, v1, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v3, v69
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v1, v6, 0x7fff
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v11, v67
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v0, s0, v23, v12, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v110.l, 0x7fff, v6.h, s1
	v_cndmask_b16 v110.h, 0x7fff, v15.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v11, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v12, v12, v23
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v11
	v_div_scale_f32 v17, null, v10, v10, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v9, v17
	v_fma_f32 v18, -v11, v16, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v16, v18, v16
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v18, v3, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v17, v9, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v1, v0, v16
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v15, v18, v108 :: v_dual_lshlrev_b32 v18, 16, v111
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v9, v22, v9
	v_div_scale_f32 v22, s2, v30, v10, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v29, 0xbfb8aa3b, v15 :: v_dual_mul_f32 v18, v3, v18
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v67, -v11, v1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v68, v22, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v18, v18, v107 :: v_dual_fmac_f32 v1, v67, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v67, -v17, v68, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v29, 0, 0x42800000, s3
	v_mul_f32_e32 v70, 0xbfb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v0, -v11, v1, v0
	v_dual_fmac_f32 v68, v67, v9 :: v_dual_lshlrev_b32 v67, 16, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v0, v16, v1
	v_fma_f32 v1, -v17, v68, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s3
	v_exp_f32_e32 v11, v29
	v_cndmask_b32_e64 v29, 0, 0x42800000, s4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s2
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v67, v3, v67
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v1, v1, v9, v68
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v9, v3, v66
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v29, 0xbfb8aa3b, v18
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v12, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v1, v1, v10, v30
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v17, v29
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v69, v98
	v_dual_mul_f32 v9, v9, v97 :: v_dual_add_f32 v10, 1.0, v11
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v1, v16, v1 :: v_dual_mul_f32 v0, v9, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v10, v10, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v17, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v30, vcc_lo, v15, v10, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v16, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v6, 1.0, v9 :: v_dual_lshlrev_b32 v9, 16, v104
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e32 v11.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v22, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v6, v6, v18
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v9, v3, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v12, v16, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v11, 1, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v29, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v22, v0, v22, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v9, v9, v96
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v16, v23, v16 :: v_dual_lshlrev_b32 v23, 16, v103
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v1, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v66, 0xbfb8aa3b, v9 :: v_dual_mul_f32 v69, v30, v16
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v23, v3, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v17, v29, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v72, -v12, v69, v30
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v29, v68, v29
	v_div_scale_f32 v68, s1, v18, v6, v18
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v66, 0, 0x42800000, s0
	v_dual_mul_f32 v70, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v69, v72, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v73, v68, v29
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v75, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v66, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v70
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v12, v69, v30
	v_fma_f32 v72, -v17, v73, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v70, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v16, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v73, v72, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v10, v12, v10, v15
	v_fma_f32 v16, -v17, v73, v68
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v30, v66, v75
	v_exp_f32_e32 v66, v70
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v70, 16, v91
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v16, v16, v29, v73
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v30, 1.0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v70, v3, v70
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v16, v6, v18
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v67, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v29, null, v30, v30, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v17, v66, v17
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v66, v71, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v16, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v18, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.h, v2.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v17, 1.0, v17 :: v_dual_mul_f32 v6, v66, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v88.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v66, 16, v93
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v17, v17, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.l, v6.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v16, -v29, v18, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v88.l, 0x7fff, v11.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v12
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v66, v3, v66
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v1, 1, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v18, v16, v18
	v_div_scale_f32 v10, s0, v9, v30, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v64, v66, v64
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v66, 16, v251
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v22, v10, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v12, v15, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v71, 0xbfb8aa3b, v64
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v66, v3, v66 :: v_dual_lshlrev_b32 v67, 16, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v29, v22, v10
	v_fmac_f32_e32 v15, v11, v15
	v_div_scale_f32 v11, s1, v23, v17, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v22, v68, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v69, v11, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v6, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v10, -v29, v22, v10
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v29, v70, v63
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v68, -v12, v69, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v63, 0, 0x42800000, s2
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v18, v22
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v69, v68, v15
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v63, 0xbfb8aa3b, v64 :: v_dual_mul_f32 v18, v3, v67
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v66, v87
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v10, v30, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v12, v69, v11
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v12, 0xbfb8aa3b, v29
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v30, 16, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v11, v11, v15, v69
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_exp_f32_e32 v15, v63
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s2
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v11, v17, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v17, v18, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v30, v30, v52
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v11, v22, v11 :: v_dual_fmac_f32 v12, 0xbfb8aa3b, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v15, v63
	v_cndmask_b32_e64 v15, 0, 0xffffffc0, vcc_lo
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v17, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v12, v12
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v10.l, v11.h
	v_mov_b16_e32 v10.h, v2.h
	v_cndmask_b16 v63.h, 0x7fff, v16.h, s0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v16, 16, v99
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v9, v9, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b16 v63.l, 0x7fff, v1.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v6, v12, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v17
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v60
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v11, v10, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v3, v16
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v6, 1.0, v6
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v67, 0xbfb8aa3b, v30
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v3, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v6, v6, v29
	v_fma_f32 v18, -v17, v12, 1.0
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v22, v22, v53
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v23, v10
	v_dual_fmac_f32 v12, v18, v12 :: v_dual_and_b32 v15, 1, v2
	v_div_scale_f32 v18, vcc_lo, v64, v9, v64
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v60, 0xbfb8aa3b, v22
	v_cndmask_b32_e64 v67, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v57, v18, v12 :: v_dual_lshlrev_b32 v0, 16, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v53, -v10, v23, 1.0
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v60
	v_fmac_f32_e32 v67, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v17, v57, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v0, v3, v0 :: v_dual_fmac_f32 v23, v53, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v53, s1, v29, v6, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v52, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v57, v60, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v0, v0, v85
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v66, v53, v23
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v16, v84
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v52, 0xbfb8aa3b, v22
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v17, -v17, v57, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v10, v66, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v52, v52
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v17, v12, v57
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v17, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v66, v60, v23
	s_mov_b32 vcc_lo, s1
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v57, 16, v62
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v12, v9, v64
	v_fma_f32 v10, -v10, v66, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v18, v52, v18
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v0, v9
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.h, 0x7fff, v15.h, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v10, v10, v23, v66
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s3
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v10, v6, v29
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v17, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v18, v18, v22
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v52.l, 0x7fff, v1.h, vcc_lo
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v23, 16, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v10
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v12
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v16, v6
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v2
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v9, v9, v30
	v_div_scale_f32 v29, s1, v30, v9, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v0, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v1, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v17, -v12, v10, 1.0
	v_div_scale_f32 v0, s0, v22, v18, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.h, 0x7fff, v16.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v10, v17, v10 :: v_dual_mul_f32 v17, v3, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v15.l, v6.h
	v_mov_b16_e32 v15.h, v2.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v11, v1, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v16, v0, v10 :: v_dual_mul_f32 v17, v17, v45
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v15, 1, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v1, v23, v1
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v23, 16, v100
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v17
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v60, -v12, v16, v0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v6, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v62, v29, v1 :: v_dual_mul_f32 v23, v3, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v16, v60, v10
	v_fma_f32 v60, -v11, v62, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v23, v23, v44
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, s2
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v44, 16, v61
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v0, -v12, v16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v62, v60, v1 :: v_dual_mul_f32 v61, 0xbfb8aa3b, v23
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v17 :: v_dual_mul_f32 v44, v3, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v0, v10, v16
	v_fma_f32 v10, -v11, v62, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v61
	v_exp_f32_e32 v12, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v1, v10, v1, v62
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, s3
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v16, v3, v57
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v18, v22
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v18, 16, v92
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v1, v9, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v23
	v_ldexp_f32 v11, v12, v11
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, s3
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v12, v44, v82
	v_mul_f32_e32 v16, v16, v83
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v10, v45
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v11, 1.0, v11 :: v_dual_mul_f32 v18, v3, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v12, v1
	v_mul_f32_e32 v0, v16, v0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v30, 16, v90
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v18, v18, v37 :: v_dual_lshlrev_b32 v37, 16, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v9, v10, v9
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v10, null, v11, v11, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v53.l, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v15, 1, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v12, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v45, 0xbfb8aa3b, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v15, v0, v15, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v16, null, v9, v9, v23
	v_div_scale_f32 v0, vcc_lo, v17, v11, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v45
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v22, v16
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v10, v12, 1.0
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v1.h
	v_mov_b16_e32 v6.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, s2
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v37, v3, v37 :: v_dual_fmac_f32 v12, v29, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v6, 1, v6
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v29, -v16, v22, 1.0
	v_mul_f32_e32 v44, v0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v1, v6, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v22, v29, v22
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v29, v3, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v30, s1, v23, v9, v23
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v29, v29, v36 :: v_dual_lshlrev_b32 v36, 16, v54
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v54, -v10, v44, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v56, v30, v22 :: v_dual_mul_f32 v57, 0xbfb8aa3b, v29
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v36, v3, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v44, v54, v12
	v_fma_f32 v54, -v16, v56, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v57
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v36, v36, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v0, -v10, v44, v0
	v_fmac_f32_e32 v56, v54, v22
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v57, 0, 0x42800000, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v0, v12, v44
	v_fma_f32 v12, -v16, v56, v30
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v57, 0xbfb8aa3b, v29
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v11, v17
	v_div_fmas_f32 v12, v12, v22, v56
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v10, v45, v10
	v_exp_f32_e32 v16, v57
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v37, v74
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v12, v9, v23
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_lshlrev_b32 v37, 16, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v22, v0
	v_dual_mul_f32 v9, v36, v9 :: v_dual_lshlrev_b32 v44, 16, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v10, v10, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v16, v30
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v16.l, v9.h
	v_cndmask_b16 v36.h, 0x7fff, v15.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v15, v12
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v36.l, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v1, 1, v16
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v16, 16, v58
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v44, v3, v44
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v17, null, v11, v11, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v16, v3, v16
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v23, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v22, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v1, v9, v1, 0x7fff
	v_and_b32_e32 v6, 1, v2
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v16, v16, v78 :: v_dual_fmac_f32 v15, v23, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v23, vcc_lo, v18, v10, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v17, v22, 1.0
	v_mul_f32_e32 v45, v23, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v51
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v22, v30, v22
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v30, v3, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v37, s0, v29, v11, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v51, 0, 0x42800000, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v54, -v12, v45, v23
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v30, v30, v79 :: v_dual_mul_f32 v55, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v51, 0xbfb8aa3b, v16
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v45, v54, v15 :: v_dual_mul_f32 v56, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v54, -v17, v55, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v12, v45, v23
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v55, v54, v22
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v12, v12, v15, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v56, 0, 0x42800000, s2
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v15, -v17, v55, v37
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v17, v51, v23
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v56, 0xbfb8aa3b, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v15, v15, v22, v55
	v_div_fixup_f32 v10, v12, v10, v18
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v17, 1.0, v17
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v44, v221
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v23, v56
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v44, v49, v222
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v11, v15, v11, v29
	v_div_scale_f32 v15, null, v17, v17, v16
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v10, v22, v10
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v22.h, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v11, v44, v11
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v18, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v9, v9
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v12, v23, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v22.l, v11.h
	v_mov_b16_e32 v2.l, v10.h
	v_cndmask_b16 v29.l, 0x7fff, v1.h, s0
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v29.h, 0x7fff, v6.h, vcc_lo
	v_and_b32_e32 v0, 1, v22
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v22, -v15, v18, 1.0
	v_div_scale_f32 v6, vcc_lo, v16, v17, v16
	v_div_scale_f32 v23, null, v12, v12, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v18, v22, v18
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v22, 16, v50
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v45, s0, v30, v12, v30
	v_rcp_f32_e32 v9, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v6, v18
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v22, v3, v22
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v1, 1, v2
	v_add3_u32 v0, v11, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v1, v10, v1, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v37, -v23, v9, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v9, v37, v9
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v37, 16, v48
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v48, v22, v227
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v22, 16, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v41, -v15, v44, v6
	v_mul_f32_e32 v49, v45, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_dual_mul_f32 v37, v3, v37 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v48
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v22, v3, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v44, v41, v18
	v_fma_f32 v41, -v23, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v37, v37, v228
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v50
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v22, v22, v241
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v6, -v15, v44, v6
	v_fmac_f32_e32 v49, v41, v9
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v51, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v50, 0, 0x42800000, s1
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v6, v6, v18, v44
	v_fma_f32 v23, -v23, v49, v45
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v51
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v48
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v6, v6, v17, v16
	v_div_fmas_f32 v9, v23, v9, v49
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v15, 0, 0x42800000, s2
	v_exp_f32_e32 v18, v50
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v23, v42, v242
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v12, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s2
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v6, v23, v6
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v9, v22, v9 :: v_dual_lshlrev_b32 v30, 16, v47
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v15, v15
	v_ldexp_f32 v18, v18, v41
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v6.h
	v_cndmask_b16 v22.h, 0x7fff, v1.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v10, 1.0, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v2
	v_mov_b16_e32 v1.l, v9.h
	v_mov_b16_e32 v1.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v12, v15, v12
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v15, null, v10, v10, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v11, v6, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_dual_add_f32 v12, 1.0, v12 :: v_dual_and_b32 v1, 1, v1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v16, v15
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v22.l, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v23.h, 0x7fff, v11.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, vcc_lo, v48, v10, v48
	v_div_scale_f32 v18, null, v12, v12, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v0, v9, v1, 0x7fff
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v1, v3, v30
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v30, 16, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v6, v18
	v_fma_f32 v17, -v15, v16, 1.0
	v_div_scale_f32 v42, s0, v37, v12, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	v_dual_mul_f32 v1, v1, v233 :: v_dual_mul_f32 v30, v3, v30
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v16, v17, v16 :: v_dual_mul_f32 v41, 0xbfb8aa3b, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v18, v6, 1.0
	v_mul_f32_e32 v34, v11, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v6, v17, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v15, v34, v11
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v17, 16, v46
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_dual_mul_f32 v45, v42, v6 :: v_dual_fmac_f32 v34, v44, v16
	.loc	1 134 25 is_stmt 1              ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v44, -v18, v45, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v11, -v15, v34, v11
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	v_mul_f32_e32 v17, v17, v235
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v15, v41
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v45, v44, v6
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v11, v11, v16, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v46, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v16, -v18, v45, v42
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	scratch_load_b32 v42, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v30, v238
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v46
	v_ldexp_f32 v15, v15, v41
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v6, v16, v6, v45
	v_div_fixup_f32 v10, v11, v10, v48
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v44, 0, 0x42800000, s1
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v15, 1.0, v15
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v6, v6, v12, v37
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v37, 16, v38
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v38, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v17
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, s1
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_scale_f32 v11, null, v15, v15, v1
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v9, v18, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v16, v44
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cndmask_b16 v23.l, 0x7fff, v0.h, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v10, v11
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(6)
	v_dual_mul_f32 v30, v33, v237 :: v_dual_lshlrev_b32 v33, 16, v40
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v37, v3, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v6, v30, v6 :: v_dual_mul_f32 v33, v3, v33
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_ldexp_f32 v12, v16, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.h, v2.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v30, -v11, v10, 1.0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v16.l, v6.h
	v_and_b32_e32 v18, 1, v2
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v12, 1.0, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v10, v30, v10
	v_div_scale_f32 v30, vcc_lo, v1, v15, v1
	v_div_scale_f32 v0, null, v12, v12, v17
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v40, v30, v10
	v_rcp_f32_e32 v34, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v16, v6, v16, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v37, v37, v42
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v42, -v11, v40, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_dual_mul_f32 v45, 0xbfb8aa3b, v37 :: v_dual_fmac_f32 v40, v42, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v45
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v33, v33, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v38, -v0, v34, 1.0
	v_fma_f32 v11, -v11, v40, v30
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v45, 0, 0x42800000, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v41, 0xbfb8aa3b, v33 :: v_dual_fmac_f32 v34, v38, v34
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v38, s0, v17, v12, v17
	v_div_fmas_f32 v10, v11, v10, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v41
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v44, v38, v34
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v6, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v10, v15, v1
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v41, 0, 0x42800000, s1
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v42, -v0, v44, v38
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_add3_u32 v10, v9, v18, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v16.h, s0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, 0xbfb8aa3b, v37 :: v_dual_fmac_f32 v44, v42, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v11, v45
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v0, -v0, v44, v38
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v38, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v0, v0, v34, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s2
	v_ldexp_f32 v30, v41, v30
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v44, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v0, v0, v12, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v10.h, 0x7fff, v10.h, vcc_lo
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v11, v11, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_dual_add_f32 v30, 1.0, v30 :: v_dual_add_f32 v11, 1.0, v11
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v12, null, v30, v30, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v17, null, v11, v11, v37
	v_rcp_f32_e32 v15, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v9, v17
	v_fma_f32 v18, -v12, v15, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v15, v18, v15
	v_div_scale_f32 v18, vcc_lo, v33, v30, v33
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v28, v28, v38
	scratch_load_b32 v38, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v28, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v16, 1, v2
	v_add3_u32 v16, v1, v16, 0x7fff
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v1, v18, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s0
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v28, -v12, v1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v1, v28, v15
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v28, off, off offset:48 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v12, -v12, v1, v18
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v18, 16, v31
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v1, v12, v15, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v3, v18
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v18, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v1, v1, v30, v33
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(2)
	v_mul_f32_e32 v27, v27, v38
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v0, v27, v0
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_fma_f32 v27, -v17, v9, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v6.l, v0.h
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v9, v27, v9
	v_div_scale_f32 v27, s1, v37, v11, v37
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 1, v6
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	s_mov_b32 vcc_lo, s1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v6, v0, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v16.l, 0x7fff, v6.h, s2
	.loc	1 133 23                        ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v0, 16, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v32, v27, v9
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v6, 16, v21
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v0, v3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v21, -v17, v32, v27
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v6, v3, v6
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v0, v0, v28
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_dual_fmac_f32 v32, v21, v9 :: v_dual_mul_f32 v21, 0xbfb8aa3b, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v12, -v17, v32, v27
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v6, v6, v18
	scratch_load_b32 v18, off, off offset:36 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fmas_f32 v9, v12, v9, v32
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	scratch_load_b32 v12, off, off offset:44 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v17, 0, 0x42800000, s0
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v9, v11, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_dual_fmac_f32 v17, 0xbfb8aa3b, v0 :: v_dual_mul_f32 v6, v6, v9
	v_exp_f32_e32 v17, v17
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v12, v15, v12
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v3, v20
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	scratch_load_b32 v20, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v11, 0xbfb8aa3b, v12
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v15, v15, v18 :: v_dual_lshlrev_b32 v18, 16, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s0
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v15, v1
	.loc	1 133 23 is_stmt 1              ; generate_amdgcn.py:133:23
	v_lshlrev_b32_e32 v15, 16, v24
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v24.l, v6.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v9, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v11, v17, v11
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v17, v3, v18
	.loc	1 134 13 is_stmt 0              ; generate_amdgcn.py:134:13
	scratch_load_b32 v18, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 134 25                        ; generate_amdgcn.py:134:25
	v_mul_f32_e32 v15, v3, v15
	.loc	1 135 44 is_stmt 1              ; generate_amdgcn.py:135:44
	v_fmac_f32_e32 v9, 0xbfb8aa3b, v12
	.loc	1 135 38 is_stmt 0              ; generate_amdgcn.py:135:38
	v_add_f32_e32 v11, 1.0, v11
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v1.h
	v_cmp_o_f32_e64 s1, v1, v1
	v_mov_b16_e32 v24.h, v2.h
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v27, 1, v2
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v1, v27, 0x7fff
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v1, v3, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v24, v6, v24, 0x7fff
	.loc	1 134 13                        ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v15, v15, v20
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v20, null, v11, v11, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 135 44 is_stmt 0              ; generate_amdgcn.py:135:44
	v_mul_f32_e32 v25, 0xbfb8aa3b, v15
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v25, 0, 0x42800000, s0
	.loc	1 134 13 is_stmt 1              ; generate_amdgcn.py:134:13
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v18
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v18, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v25, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v21, 0xbfb8aa3b, v17
	v_ldexp_f32 v9, v9, v18
	.loc	1 135 26 is_stmt 0              ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v18, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v25, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v9, 1.0, v9
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v28, null, v9, v9, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v20, v18, 1.0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_rcp_f32_e32 v31, v28
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v25, v25, v33
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v18, v30, v18
	v_div_scale_f32 v30, vcc_lo, v0, v11, v0
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_exp_f32_e32 v21, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_scale_f32 v37, s0, v12, v9, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v33, v30, v18
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v25, 1.0, v25
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v40, -v20, v33, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_scale_f32 v34, null, v25, v25, v15
	.loc	1 135 44                        ; generate_amdgcn.py:135:44
	v_ldexp_f32 v21, v21, v32
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v32, -v28, v31, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v40, v18
	v_rcp_f32_e32 v41, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 135 38                        ; generate_amdgcn.py:135:38
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v31, v32, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v20, -v20, v33, v30
	v_div_scale_f32 v32, null, v21, v21, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v37, v31
	v_div_fmas_f32 v18, v20, v18, v33
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v38, v32
	v_fma_f32 v30, -v34, v41, 1.0
	v_fma_f32 v5, -v28, v42, v37
	v_div_fixup_f32 v0, v18, v11, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v41, v30, v41 :: v_dual_fmac_f32 v42, v5, v31
	v_div_scale_f32 v5, s2, v17, v21, v17
	v_fma_f32 v40, -v32, v38, 1.0
	v_div_scale_f32 v30, s3, v15, v25, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v20, -v28, v42, v37
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v37, off, off offset:12 ; 4-byte Folded Reload
	v_dual_mul_f32 v1, v1, v44 :: v_dual_fmac_f32 v38, v40, v38
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_mul_f32_e32 v33, v30, v41
	v_div_fmas_f32 v20, v20, v31, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_dual_mul_f32 v0, v1, v0 :: v_dual_lshlrev_b32 v1, 16, v7
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v7, v3, v8
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v9, v20, v9, v12
	v_mul_f32_e32 v28, v5, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v2.l, v0.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v1, v3, v1
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v31, -v32, v28, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v28, v31, v38
	v_fma_f32 v5, -v32, v28, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v5, v5, v38, v28
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v5, v21, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v4, v4, v37
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v37, -v34, v33, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 135 19 is_stmt 0              ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v3, v4, v9
	.loc	1 130 9 is_stmt 1               ; generate_amdgcn.py:130:9
	scratch_load_b32 v4, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fmac_f32_e32 v33, v37, v41
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_fma_f32 v8, -v34, v33, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v41, v33
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v4, v7, v4
	.loc	1 135 26                        ; generate_amdgcn.py:135:26
	v_div_fixup_f32 v7, v8, v25, v15
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	scratch_load_b32 v8, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v4, v4, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v7.l, v4.h
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_and_b32_e32 v7, 1, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v1, v1, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v8.l, v3.h
	v_mov_b16_e32 v8.h, v2.h
	.loc	1 135 19                        ; generate_amdgcn.py:135:19
	v_mul_f32_e32 v1, v1, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v5, 1, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v6, 1, v8
	v_cndmask_b16 v8.l, 0x7fff, v24.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v5, v0, v5, 0x7fff
	v_add3_u32 v6, v3, v6, 0x7fff
	scratch_load_b32 v3, off, off offset:20 ; 4-byte Folded Reload
	v_cndmask_b16 v8.h, 0x7fff, v27.h, s1
	v_and_b32_e32 v2, 1, v2
	v_add3_u32 v0, v4, v7, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v2, v1, v2, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v5.h, vcc_lo
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s0
	v_cndmask_b16 v2.l, 0x7fff, v0.h, s2
	s_mov_b32 s0, 0x76543210
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s1
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, 0, v3
	v_cndmask_b32_e32 v5, v35, v19, vcc_lo
	v_cndmask_b32_e32 v4, v19, v35, vcc_lo
	v_cndmask_b32_e32 v34, v10, v22, vcc_lo
	v_dual_cndmask_b32 v10, v22, v10 :: v_dual_cndmask_b32 v35, v1, v16
	v_dual_cndmask_b32 v1, v16, v1 :: v_dual_mov_b32 v16, 0x5410
	v_mov_b32_e32 v22, 0x7632
	v_dual_cndmask_b32 v6, v39, v59 :: v_dual_cndmask_b32 v31, v36, v52
	v_cndmask_b32_e32 v32, v52, v36, vcc_lo
	v_cndmask_b32_e32 v36, v2, v8, vcc_lo
	v_cndmask_b32_e32 v2, v8, v2, vcc_lo
	v_cndmask_b32_e32 v8, 0x1054, v16, vcc_lo
	v_dual_cndmask_b32 v16, 0x3276, v22 :: v_dual_cndmask_b32 v33, v23, v29
	v_cndmask_b32_e32 v23, v29, v23, vcc_lo
	v_permlanex16_b32 v22, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v4, v8, 8, v8
	v_lshl_or_b32 v6, v16, 8, v16
	v_dual_cndmask_b32 v3, v13, v26 :: v_dual_cndmask_b32 v0, v26, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v11, v43, v65 :: v_dual_and_b32 v4, 0x540054, v4
	v_dual_cndmask_b32 v13, v101, v121 :: v_dual_and_b32 v6, 0x760076, v6
	v_cndmask_b32_e32 v17, v112, v129, vcc_lo
	v_cndmask_b32_e32 v19, v135, v137, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v6, v6, 4, v6
	v_cndmask_b32_e32 v21, v145, v127, vcc_lo
	v_cndmask_b32_e32 v25, v118, v110, vcc_lo
	v_dual_cndmask_b32 v27, v109, v88 :: v_dual_cndmask_b32 v30, v63, v53
	v_permlanex16_b32 v3, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v37, 0x5040504, v4
	v_dual_cndmask_b32 v9, v65, v43 :: v_dual_and_b32 v38, 0x7060706, v6
	v_cndmask_b32_e32 v12, v121, v101, vcc_lo
	v_cndmask_b32_e32 v15, v129, v112, vcc_lo
	v_cndmask_b32_e32 v18, v137, v135, vcc_lo
	v_cndmask_b32_e32 v20, v127, v145, vcc_lo
	v_cndmask_b32_e32 v24, v110, v118, vcc_lo
	v_cndmask_b32_e32 v26, v88, v109, vcc_lo
	v_permlanex16_b32 v11, v11, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v13, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v17, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v19, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v21, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v21, v25, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v25, v27, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v27, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v30, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v3, v0, v37
	v_perm_b32 v3, v3, v0, v38
	scratch_load_b32 v0, off, off offset:16 ; 4-byte Folded Reload
	v_cndmask_b32_e32 v7, v59, v39, vcc_lo
	v_permlanex16_b32 v39, v10, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v4, v22, v5, v37
	v_perm_b32 v5, v22, v5, v38
	v_perm_b32 v8, v11, v9, v37
	v_perm_b32 v9, v11, v9, v38
	v_perm_b32 v10, v13, v12, v37
	v_perm_b32 v11, v13, v12, v38
	v_perm_b32 v12, v16, v15, v37
	v_perm_b32 v13, v16, v15, v38
	v_perm_b32 v15, v17, v18, v37
	v_perm_b32 v16, v17, v18, v38
	v_perm_b32 v17, v19, v20, v37
	v_perm_b32 v18, v19, v20, v38
	v_perm_b32 v19, v21, v24, v37
	v_perm_b32 v20, v21, v24, v38
	v_perm_b32 v21, v25, v26, v37
	v_perm_b32 v22, v25, v26, v38
	v_perm_b32 v25, v30, v31, v37
	v_perm_b32 v26, v30, v31, v38
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	scratch_load_b32 v31, off, off          ; 4-byte Folded Reload
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v28, v53, v63, vcc_lo
	v_permlanex16_b32 v32, v23, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v29, v7, v37
	v_perm_b32 v7, v29, v7, v38
	v_perm_b32 v23, v27, v28, v37
	v_perm_b32 v24, v27, v28, v38
	v_perm_b32 v27, v32, v33, v37
	v_perm_b32 v28, v32, v33, v38
	v_perm_b32 v32, v1, v35, v38
	v_perm_b32 v29, v39, v34, v37
	v_perm_b32 v30, v39, v34, v38
	v_perm_b32 v33, v40, v36, v37
	v_perm_b32 v34, v40, v36, v38
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v0, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v14, v14, v31, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v31, v1, v35, v37
	v_add_nc_u32_e32 v0, 32, v14
	v_add_nc_u32_e32 v1, 64, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v35, 0x80000000, v14 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x2
	buffer_store_b128 v[2:5], v35, s[8:11], 0 offen
	buffer_store_b128 v[6:9], v0, s[8:11], 0 offen
	buffer_store_b128 v[10:13], v1, s[8:11], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v14
	v_add_nc_u32_e32 v1, 0x80, v14
	v_add_nc_u32_e32 v2, 0xa0, v14
	v_add_nc_u32_e32 v3, 0xc0, v14
	v_add_nc_u32_e32 v4, 0xe0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[8:11], 0 offen
	buffer_store_b128 v[19:22], v1, s[8:11], 0 offen
	buffer_store_b128 v[23:26], v2, s[8:11], 0 offen
	buffer_store_b128 v[27:30], v3, s[8:11], 0 offen
	buffer_store_b128 v[31:34], v4, s[8:11], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 540
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_vgpr, 256
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.private_seg_size, 540
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 48916
; TotalNumSgprs: 31
; NumVgprs: 256
; ScratchSize: 540
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk
    .private_segment_fixed_size: 540
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_swiglu_bm16_bn128_bk32_gm4_w16_s3_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 243
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
