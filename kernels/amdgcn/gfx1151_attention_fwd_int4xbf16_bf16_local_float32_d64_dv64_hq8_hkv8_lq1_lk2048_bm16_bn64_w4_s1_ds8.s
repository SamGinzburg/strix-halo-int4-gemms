	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s47, s[0:1], 0x64
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s58, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v10, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v9, 3, v0
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v46, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 2, v10
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s47
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s5, s4, s5
	s_add_i32 s9, s4, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s47
	s_mul_hi_u32 s4, s6, s9
	s_ashr_i32 s10, s5, 31
	s_mul_i32 s7, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s5, s6, s7
	s_add_i32 s6, s4, 1
	s_sub_i32 s7, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s6, s4
	s_cselect_b32 s5, s7, s5
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s5, s8
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s6, s4
	s_load_b64 s[4:5], s[0:1], 0x0
	s_xor_b32 s6, s6, s10
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s58, v2
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s10, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s47
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s18, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s18, v9
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v9
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s46, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s44, 1, v1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s58, v[2:3]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v2, 0x80000000, v3, vcc_lo
	buffer_load_b32 v3, v2, s[4:7], 0 offen
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s5, s47, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s6, s5, s47
	s_abs_i32 s5, s5
	s_ashr_i32 s6, s6, 31
	s_mul_hi_u32 s7, s5, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s7, s8
	s_add_i32 s11, s7, 1
	s_sub_i32 s5, s5, s9
	v_lshrrev_b32_e32 v51, 3, v2
	s_sub_i32 s2, s5, s8
	s_cmp_ge_u32 s5, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v46, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s7, s11, s7
	s_cselect_b32 s2, s2, s5
	s_add_i32 s5, s7, 1
	s_cmp_ge_u32 s2, s8
	s_mov_b32 s4, 0
	s_cselect_b32 s2, s5, s7
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s17, s19
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, s18
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s7, 16
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s5, s19, s16
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s7, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s5, s5, s18
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s7, s46, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s8, s6, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s5, s5, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s8, s8, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s7, s7, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s6, s6, s8
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s5, s5, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s7, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s59, s7, s5
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s76, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v11, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr11
.LBB0_3:                                ; %Flow91
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v50, 0x78, v0
	v_and_b32_e32 v49, 15, v0
	v_lshlrev_b32_e32 v47, 1, v0
	v_and_b32_e32 v48, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s18, v49
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v49, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v12, 16, v0
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v26, 0xff800000 :: v_dual_lshlrev_b32 v35, 4, v48
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_lshlrev_b32 v34, 3, v10
	v_cmp_eq_u32_e32 vcc_lo, 0, v48
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v6, 1, v50
	v_dual_mov_b32 v142, 0xff800000 :: v_dual_lshlrev_b32 v7, 4, v0
	v_dual_mov_b32 v19, 0xff800000 :: v_dual_and_b32 v8, 24, v0
	v_cndmask_b32_e64 v20, 0x420, 0, vcc_lo
	v_bfe_i32 v23, v0, 2, 1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_mov_b32_e32 v28, 0x5410
	buffer_load_u16 v11, v3, s[60:63], 0 offen
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v3, s19, v1
	v_mov_b32_e32 v1, 0
	v_lshlrev_b32_e32 v17, 5, v0
	v_and_b32_e32 v18, 28, v0
	v_lshlrev_b32_e32 v21, 3, v0
	v_cmp_eq_u32_e64 s1, 0, v12
	v_dual_mov_b32 v29, 0x7632 :: v_dual_and_b32 v4, 24, v47
	v_lshlrev_b32_e32 v30, 4, v10
	v_bfe_i32 v24, v0, 3, 1
	v_xor_b32_e32 v55, v7, v8
	v_and_b32_e32 v23, 0x840, v23
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[36:37], null, s45, v6, v[34:35]
	v_cndmask_b32_e64 v28, 0x1054, v28, s1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_and_or_b32 v57, 0x3e0, v17, v18
	v_lshlrev_b32_e32 v18, 4, v8
	v_mov_b32_e32 v8, v1
	v_and_or_b32 v21, v21, 16, v20
	v_bfe_i32 v25, v0, 5, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v31, v49, 5, v4
	v_xor_b32_e32 v37, v30, v50
	v_and_b32_e32 v38, 0x420, v24
	v_lshl_or_b32 v30, v2, 6, v30
	v_and_or_b32 v24, 0x410, v24, v2
	v_or3_b32 v66, v21, v23, v18
	v_lshl_or_b32 v21, v28, 8, v28
	v_and_b32_e32 v17, 0x60, v17
	v_and_b32_e32 v25, 0x840, v25
	v_xor_b32_e32 v39, 8, v31
	v_xor_b32_e32 v40, 16, v31
	v_lshl_or_b32 v67, v10, 10, v37
	v_dual_mov_b32 v2, v1 :: v_dual_and_b32 v13, 0x70, v0
	v_lshlrev_b32_e32 v14, 3, v49
	v_xor_b32_e32 v23, v24, v30
	v_and_b32_e32 v21, 0x540054, v21
	v_add_nc_u32_e32 v58, 0, v31
	v_xor_b32_e32 v31, 24, v31
	v_xor3_b32 v17, v38, v17, v25
	v_xor_b32_e32 v37, 32, v66
	v_xor_b32_e32 v38, 64, v66
	v_xor_b32_e32 v41, 8, v55
	v_xor_b32_e32 v42, 20, v57
	v_xor_b32_e32 v43, 24, v57
	v_xor_b32_e32 v44, 28, v57
	v_add_nc_u32_e32 v94, 0, v39
	v_add_nc_u32_e32 v95, 0, v40
	v_xor_b32_e32 v39, 0x60, v66
	v_xor_b32_e32 v40, 0x1b0, v67
	v_xor_b32_e32 v45, 0x240, v67
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 4, v0
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v15, 14, v0
	v_lshlrev_b32_e32 v16, 6, v48
	v_and_b32_e32 v22, 4, v0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v53, s16, v3
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v54, s17, v3
	v_lshrrev_b32_e32 v32, 1, v13
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v13, v13, 4, v14
	v_cndmask_b32_e64 v18, 0x3276, v29, s1
	v_lshl_or_b32 v97, v10, 7, v23
	v_lshl_or_b32 v10, v21, 4, v21
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v96, 0, v31
	v_add_nc_u32_e32 v115, 0, v37
	v_add_nc_u32_e32 v116, 0, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[37:38], null, s15, v9, v[34:35]
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s77, s3, 11
	v_add_nc_u32_e32 v98, 0, v41
	v_add_nc_u32_e32 v104, 0, v42
	v_add_nc_u32_e32 v105, 0, v43
	v_add_nc_u32_e32 v106, 0, v44
	v_add_nc_u32_e32 v117, 0, v39
	v_add_nc_u32_e32 v120, 0, v40
	v_add_nc_u32_e32 v121, 0, v45
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[38:39], v58
	ds_load_b64 v[40:41], v94
	ds_load_b64 v[42:43], v95
	ds_load_b64 v[44:45], v96
	v_xor_b32_e32 v52, v46, v51
	v_dual_mov_b32 v20, v1 :: v_dual_and_b32 v27, 0x80, v47
	v_and_or_b32 v56, v5, 1, s77
	v_lshlrev_b32_e32 v14, 2, v15
	v_lshl_add_u32 v22, v22, 7, 0
	v_mov_b32_e32 v5, v1
	v_lshl_or_b32 v15, v15, 7, v16
	v_xor_b32_e32 v13, v13, v32
	v_lshl_or_b32 v18, v18, 8, v18
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	v_and_b32_e32 v125, 0x5040504, v10
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_xor_b32_e32 v16, 0x210, v52
	v_xor_b32_e32 v32, 12, v57
	v_add3_u32 v17, v22, v27, v17
	v_add_nc_u32_e32 v99, 0, v13
	v_and_b32_e32 v13, 0x760076, v18
	s_lshr_b32 s0, s0, 29
	v_add_nc_u32_e32 v68, 0, v16
	s_add_i32 s2, s3, s0
	v_xor_b32_e32 v22, 0x90, v67
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s2, -8
	v_xor_b32_e32 v27, 0x120, v67
	v_xor_b32_e32 v122, 0x2d0, v67
	v_xor_b32_e32 v123, 0x360, v67
	v_xor_b32_e32 v124, 0x3f0, v67
	v_add_nc_u32_e32 v102, 0, v32
	v_xor_b32_e32 v18, 48, v97
	v_xor_b32_e32 v21, 64, v97
	v_xor_b32_e32 v23, 0x50, v97
	v_xor_b32_e32 v32, 0x60, v97
	v_add_nc_u32_e32 v107, v17, v12
	v_lshl_or_b32 v9, v13, 4, v13
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s2, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s13, s2
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s45, v34
	v_or_b32_e32 v59, 2, v56
	v_or_b32_e32 v60, 4, v56
	v_or_b32_e32 v61, 6, v56
	v_or_b32_e32 v62, 8, v56
	v_or_b32_e32 v63, 10, v56
	v_or_b32_e32 v64, 12, v56
	v_or_b32_e32 v69, 14, v56
	v_or_b32_e32 v70, 16, v56
	v_or_b32_e32 v71, 18, v56
	v_or_b32_e32 v72, 20, v56
	v_or_b32_e32 v73, 22, v56
	v_or_b32_e32 v74, 24, v56
	v_or_b32_e32 v75, 26, v56
	v_or_b32_e32 v76, 28, v56
	v_or_b32_e32 v77, 30, v56
	v_or_b32_e32 v78, 32, v56
	v_or_b32_e32 v79, 34, v56
	v_or_b32_e32 v80, 36, v56
	v_or_b32_e32 v81, 38, v56
	v_or_b32_e32 v82, 40, v56
	v_or_b32_e32 v83, 42, v56
	v_or_b32_e32 v84, 44, v56
	v_or_b32_e32 v85, 46, v56
	v_or_b32_e32 v86, 48, v56
	v_or_b32_e32 v87, 50, v56
	v_or_b32_e32 v88, 52, v56
	v_or_b32_e32 v89, 54, v56
	v_or_b32_e32 v90, 56, v56
	v_or_b32_e32 v91, 58, v56
	v_or_b32_e32 v92, 60, v56
	v_or_b32_e32 v93, 62, v56
	v_add_nc_u32_e32 v118, 0, v22
	v_add_nc_u32_e32 v119, 0, v27
	v_add_nc_u32_e32 v122, 0, v122
	v_add_nc_u32_e32 v123, 0, v123
	v_add_nc_u32_e32 v124, 0, v124
	v_add_nc_u32_e32 v128, 0, v18
	v_add_nc_u32_e32 v129, 0, v21
	v_add_nc_u32_e32 v130, 0, v23
	v_add_nc_u32_e32 v131, 0, v32
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v133, 1, v37
	v_add_nc_u32_e32 v134, 2, v37
	v_add_nc_u32_e32 v135, 3, v37
	v_add_nc_u32_e32 v136, 4, v37
	v_add_nc_u32_e32 v137, 5, v37
	v_add_nc_u32_e32 v138, 6, v37
	v_and_b32_e32 v139, 0x7060706, v9
	v_add_nc_u32_e32 v141, 7, v37
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s48, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s81, s8, s2
	s_lshl_b32 s78, s45, 1
	s_mul_i32 s79, s45, 3
	s_mov_b32 s80, 0x76543210
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s70, s62
	s_mov_b32 s71, s63
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s74, s62
	s_mov_b32 s75, s63
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s73, s7, 0xffff
	s_mov_b32 s68, s10
	s_mov_b32 s72, s6
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s69, s11
	s_add_i32 s81, s81, s18
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s58, v35
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v11
	v_lshlrev_b32_e32 v33, 3, v12
	v_xor_b32_e32 v12, 0x70, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v140, s1, v10
	v_or3_b32 v65, v15, v33, v14
	v_xor_b32_e32 v14, 4, v57
	v_xor_b32_e32 v15, 8, v57
	v_xor_b32_e32 v33, 16, v57
	v_add_nc_u32_e32 v132, 0, v12
	v_xor_b32_e32 v16, 8, v65
	v_xor_b32_e32 v24, 16, v65
	v_xor_b32_e32 v25, 24, v65
	v_xor_b32_e32 v28, 32, v65
	v_xor_b32_e32 v29, 40, v65
	v_xor_b32_e32 v30, 48, v65
	v_xor_b32_e32 v31, 56, v65
	v_add_nc_u32_e32 v100, 0, v14
	v_add_nc_u32_e32 v101, 0, v15
	v_xor_b32_e32 v14, 16, v97
	v_xor_b32_e32 v15, 32, v97
	v_add_nc_u32_e32 v103, 0, v33
	v_add_nc_u32_e32 v108, 0, v16
	v_add_nc_u32_e32 v109, 0, v24
	v_add_nc_u32_e32 v110, 0, v25
	v_add_nc_u32_e32 v111, 0, v28
	v_add_nc_u32_e32 v112, 0, v29
	v_add_nc_u32_e32 v113, 0, v30
	v_add_nc_u32_e32 v114, 0, v31
	v_add_nc_u32_e32 v126, 0, v14
	v_add_nc_u32_e32 v127, 0, v15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v18, 1, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s18, s59, s77
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v17, 0, v55
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s48 :: v_dual_mov_b32 v12, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v18, s18, v18
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v10, s49 :: v_dual_mov_b32 v11, s50
	v_dual_mov_b32 v14, s53 :: v_dual_mov_b32 v13, s52
	v_mov_b32_e32 v16, s55
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[21:22], null, v18, s58, v[35:36]
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v15, s54
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v29, 6, v34
	v_or_b32_e32 v143, 4, v34
	v_or_b32_e32 v156, 1, v34
	v_or_b32_e32 v150, 2, v34
	v_or_b32_e32 v152, 7, v34
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v18, 0x80000000, v21, vcc_lo
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s19, s81, s59
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v151, 5, v34
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v153, s59, v34
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v154, 3, v34
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[21:24], v18, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v153, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v153, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v165, s59, v56, 1
	v_add_lshl_u32 v166, v59, s59, 1
	v_add_lshl_u32 v167, v60, s59, 1
	v_add_lshl_u32 v170, v61, s59, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v155, v62, s59, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s2, s44, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v198, v63, s59, 1
	v_add_lshl_u32 v199, v64, s59, 1
	v_add_lshl_u32 v200, v69, s59, 1
	v_add_lshl_u32 v201, v70, s59, 1
	v_add_lshl_u32 v202, v71, s59, 1
	v_add_lshl_u32 v203, v72, s59, 1
	v_add_lshl_u32 v204, v73, s59, 1
	v_add_lshl_u32 v205, v74, s59, 1
	v_add_lshl_u32 v206, v75, s59, 1
	v_add_lshl_u32 v207, v76, s59, 1
	v_add_lshl_u32 v208, v77, s59, 1
	v_add_lshl_u32 v209, v78, s59, 1
	v_add_lshl_u32 v210, v79, s59, 1
	v_add_lshl_u32 v211, v80, s59, 1
	v_add_lshl_u32 v212, v81, s59, 1
	v_add_lshl_u32 v213, v82, s59, 1
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[21:22]
	ds_store_b64 v98, v[23:24]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[21:24], v58 offset1:1
	ds_load_2addr_stride64_b64 v[30:33], v58 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[144:147], v94 offset1:1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v142, v142, v142
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[21:22], v[38:39], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[23:24], v[38:39], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[30:31], v[38:39], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[32:33], v[38:39], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v94 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v95 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[144:145], v[40:41], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[146:147], v[40:41], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[9:10], v[40:41], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[11:12], v[40:41], v[190:197] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v95 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[13:14], v[42:43], v[157:164] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[15:16], v[42:43], v[174:181] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v96 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[9:10], v[42:43], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[11:12], v[42:43], v[190:197] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v96 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[157:164], v[13:14], v[44:45], v[157:164] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v13, s59, v152
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[174:181], v[15:16], v[44:45], v[174:181] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v14, v83, s59, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v168, v158
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v13, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v13, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v13, s19, v134, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v171, v159
	v_cvt_f32_i32_e32 v172, v160
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v158, v85, s59, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s10, s11
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v159, v86, s59, 1
	v_add_lshl_u32 v160, v87, s59, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v22, v161
	v_cvt_f32_i32_e32 v169, v162
	v_cvt_f32_i32_e32 v173, v163
	v_cvt_f32_i32_e32 v15, v164
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[182:189], v[9:10], v[44:45], v[182:189] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v10, s59, v29
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[190:197], v[11:12], v[44:45], v[190:197] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v11, s59, v143
	v_or_b32_e32 v143, s59, v156
	v_or_b32_e32 v12, s59, v150
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v10, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s5, v10, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s6, v11, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v11, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v143, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v143, v54
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v12, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v12, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v11, s19, v138, 1
	v_add_lshl_u32 v143, s19, v133, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s4, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v10, s19, v136, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s6, s7
	s_and_b32 s7, s14, s15
	s_and_b32 s4, s44, s4
	s_and_b32 s6, s8, s9
	s_and_b32 s14, s44, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v11, 0x80000000, v11, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s44, s5
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v143, 0x80000000, v143, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s44, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	s_clause 0x3
	buffer_load_u16 v11, v11, s[64:67], 0 offen
	buffer_load_u16 v143, v143, s[64:67], 0 offen
	buffer_load_u16 v10, v10, s[64:67], 0 offen
	buffer_load_u16 v13, v13, s[64:67], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v29, s59, v151
	v_or_b32_e32 v150, s59, v154
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v12, s19, v137, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s44, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v9, v157
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v29, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s13, v29, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v29, s19, v37, 1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v150, v53
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s17, v150, v54
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v150, s19, v141, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s12, s13
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v157, v84, s59, 1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s44, s8
	s_and_b32 s10, s16, s17
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s44, s10
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v156, v92, s59, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v23, v174
	v_cvt_f32_i32_e32 v16, v175
	v_cvt_f32_i32_e32 v17, v176
	v_cvt_f32_i32_e32 v18, v177
	v_cvt_f32_i32_e32 v24, v178
	v_cvt_f32_i32_e32 v175, v179
	v_cvt_f32_i32_e32 v176, v180
	v_cvt_f32_i32_e32 v177, v181
	v_cvt_f32_i32_e32 v25, v182
	v_cvt_f32_i32_e32 v178, v183
	v_cvt_f32_i32_e32 v174, v184
	v_cvt_f32_i32_e32 v148, v185
	v_cvt_f32_i32_e32 v27, v186
	v_cvt_f32_i32_e32 v149, v187
	v_cvt_f32_i32_e32 v147, v188
	v_cvt_f32_i32_e32 v146, v189
	v_cvt_f32_i32_e32 v28, v190
	v_cvt_f32_i32_e32 v145, v191
	v_cvt_f32_i32_e32 v144, v192
	v_cvt_f32_i32_e32 v33, v193
	v_cvt_f32_i32_e32 v21, v194
	v_cvt_f32_i32_e32 v32, v195
	v_cvt_f32_i32_e32 v31, v196
	v_cvt_f32_i32_e32 v30, v197
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v179, v88, s59, 1
	v_add_lshl_u32 v189, v89, s59, 1
	v_add_lshl_u32 v190, v90, s59, 1
	v_add_lshl_u32 v191, v91, s59, 1
	v_add_lshl_u32 v192, v93, s59, 1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v174, v140, v174
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_cndmask_b16 v11.h, 0xff80, v11.l, s4
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v11.l, 0xff80, v10.l, s5
	v_cndmask_b32_e64 v10, 0x80000000, v29, s2
	v_cndmask_b32_e64 v29, 0x80000000, v150, s7
	buffer_load_u16 v10, v10, s[64:67], 0 offen
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v10.h, 0xff80, v13.l, s6
	v_add_lshl_u32 v13, s19, v135, 1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v26
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v13, 0x80000000, v13, s10
	s_clause 0x2
	buffer_load_u16 v29, v29, s[64:67], 0 offen
	buffer_load_u16 v12, v12, s[64:67], 0 offen
	buffer_load_u16 v150, v13, s[64:67], 0 offen
	v_cndmask_b16 v10.l, 0xff80, v10.l, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e64 v143.h, v10.l
	s_waitcnt vmcnt(2)
	v_cndmask_b16 v13.h, 0xff80, v29.l, s7
	s_waitcnt vmcnt(1)
	v_cndmask_b16 v13.l, 0xff80, v12.l, s9
	s_waitcnt vmcnt(0)
	v_cndmask_b16 v12.h, 0xff80, v150.l, s10
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v193, v165, s[68:71], 0 offen
	buffer_load_u16 v194, v166, s[68:71], 0 offen
	buffer_load_u16 v195, v167, s[68:71], 0 offen
	buffer_load_u16 v196, v170, s[68:71], 0 offen
	buffer_load_u16 v197, v198, s[68:71], 0 offen
	buffer_load_u16 v198, v199, s[68:71], 0 offen
	buffer_load_u16 v181, v200, s[68:71], 0 offen
	buffer_load_u16 v182, v202, s[68:71], 0 offen
	buffer_load_u16 v183, v203, s[68:71], 0 offen
	buffer_load_u16 v184, v204, s[68:71], 0 offen
	buffer_load_u16 v185, v206, s[68:71], 0 offen
	buffer_load_u16 v186, v207, s[68:71], 0 offen
	buffer_load_u16 v187, v208, s[68:71], 0 offen
	buffer_load_u16 v188, v210, s[68:71], 0 offen
	buffer_load_u16 v150, v201, s[68:71], 0 offen
	buffer_load_u16 v151, v205, s[68:71], 0 offen
	buffer_load_u16 v153, v155, s[68:71], 0 offen
	buffer_load_u16 v152, v209, s[68:71], 0 offen
	buffer_load_u16 v180, v211, s[68:71], 0 offen
	buffer_load_u16 v164, v212, s[68:71], 0 offen
	buffer_load_u16 v154, v213, s[68:71], 0 offen
	buffer_load_u16 v165, v14, s[68:71], 0 offen
	buffer_load_u16 v163, v157, s[68:71], 0 offen
	buffer_load_u16 v162, v158, s[68:71], 0 offen
	buffer_load_u16 v155, v159, s[68:71], 0 offen
	buffer_load_u16 v161, v160, s[68:71], 0 offen
	buffer_load_u16 v160, v179, s[68:71], 0 offen
	buffer_load_u16 v159, v189, s[68:71], 0 offen
	buffer_load_u16 v29, v190, s[68:71], 0 offen
	buffer_load_u16 v158, v191, s[68:71], 0 offen
	buffer_load_u16 v157, v156, s[68:71], 0 offen
	buffer_load_u16 v156, v192, s[68:71], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b16 v12.l, 0xff80, v143.l, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v143.l, 0
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v14.h, v11.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v99, v[10:11], v[12:13] offset1:16
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v11.l, v143.l
	v_mov_b16_e64 v14.l, v143.l
	v_mov_b16_e64 v10.l, v143.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v143
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v143.h, v12.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v11
	v_cmp_neq_f32_e64 s11, 0xff800000, v14
	v_cmp_neq_f32_e64 s12, 0xff800000, v10
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v12.l, v143.l
	v_mov_b16_e64 v166.h, v13.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s1, s4, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v13.l, v143.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v10, 0, 1, s1
	s_and_b32 s4, s5, s11
	s_and_b32 s6, s6, s12
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v166.l, v143.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v12
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v11, 0, 1, s4
	v_cndmask_b32_e64 v12, 0, 1, s6
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v13
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s2, s8
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v166
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v13, 0, 1, s8
	v_or_b16 v166.h, v11.l, v10.l
	v_mov_b16_e32 v10.l, v12.l
	s_and_b32 s5, s7, s13
	s_and_b32 s7, s9, s15
	v_cndmask_b32_e64 v14, 0, 1, s5
	v_mov_b16_e32 v11.l, v13.l
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v143
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s10, s16
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v179, v140, v9
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v12, 0, 1, s9
	v_or_b16 v166.l, v11.l, v10.l
	v_mov_b16_e32 v10.l, v14.l
	v_cndmask_b32_e64 v11, 0, 1, s7
	s_and_b32 s10, s14, s2
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v204.h, v143.l
	v_mov_b16_e64 v205.h, v143.l
	v_mov_b16_e64 v206.h, v143.l
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v167.h, v11.l, v10.l
	v_cndmask_b32_e64 v11, 0, 1, s10
	v_lshlrev_b16 v10.l, 8, v12.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v167.l, v11.l, v10.l
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v10, 0, v65
	ds_load_b64 v[189:190], v10
	ds_load_b64 v[13:14], v108
	ds_load_b64 v[11:12], v109
	ds_load_b64 v[9:10], v110
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e64 v143.h, v189.l
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v170, 0x3fb8aa3b, v143
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(2)
	v_mov_b16_e64 v143.h, v13.l
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v191, 16, v193
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(30)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v170, v179, v191 :: v_dual_lshlrev_b32 v191, 16, v194
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v179, v140, v168 :: v_dual_and_b32 v168, 0xffff0000, v189
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v189, 16, v195
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v185, 16, v185
	v_lshlrev_b32_e32 v192, 16, v184
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v168, 0x3fb8aa3b, v168 :: v_dual_lshlrev_b32 v193, 16, v187
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v187, 0x3fb8aa3b, v143
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(1)
	v_mov_b16_e64 v143.h, v11.l
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v188, 16, v188
	v_lshlrev_b32_e32 v186, 16, v186
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v168, v179, v191
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, v140, v171
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v171, 16, v190
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v195.h, v143.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v171, 0x3fb8aa3b, v171
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v171, v179, v189
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v179, 0xffff0000, v190
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v189, v140, v172
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v190, 16, v196
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.h, v143.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v172, 0x3fb8aa3b, v179 :: v_dual_mul_f32 v179, v140, v169
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v169, 0xffff0000, v13
	v_and_b32_e32 v13, 0xffff0000, v14
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v172, v189, v190 :: v_dual_lshlrev_b32 v189, 16, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v169, 0x3fb8aa3b, v169 :: v_dual_add_nc_u32 v190, 0, v66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v197.h, v143.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v169, v179, v189
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v179, v140, v173
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v189, 16, v198
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v173, 16, v14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v140, v15
	v_mul_f32_e32 v15, v140, v16
	v_mul_f32_e32 v16, v140, v17
	v_mul_f32_e32 v17, v140, v18
	v_mul_f32_e32 v18, v140, v175
	v_mul_f32_e32 v175, v140, v176
	v_mul_f32_e32 v176, v140, v177
	v_dual_mul_f32 v177, v140, v178 :: v_dual_lshlrev_b32 v178, 16, v181
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v181, 16, v182
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v182, 0x3fb8aa3b, v13
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v13, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v182, v14, v178 :: v_dual_lshlrev_b32 v191, 16, v183
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v178, 0x3fb8aa3b, v13
	ds_load_b64 v[13:14], v111
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v178, v15, v181 :: v_dual_lshlrev_b32 v15, 16, v12
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v183, 0x3fb8aa3b, v15
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_and_b32_e32 v15, 0xffff0000, v12
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v173, 0x3fb8aa3b, v173
	ds_load_b64 v[11:12], v112
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v184, 0x3fb8aa3b, v15
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v15, 0xffff0000, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v173, v179, v189 :: v_dual_fmac_f32 v184, v17, v192
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v181, 0x3fb8aa3b, v15
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v15, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v179, 0, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v181, v18, v185
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v15
	ds_load_b64 v[17:18], v113
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v185, v175, v186
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v186, 0x3fb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v186, v176, v193
	s_waitcnt vmcnt(13)
	v_dual_fmac_f32 v183, v16, v191 :: v_dual_lshlrev_b32 v176, 16, v180
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[15:16], v114
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v10, 0xffff0000, v13
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v189, 0, v57
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v179, v166
	ds_store_b32 v68, v167
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v10, 0x3fb8aa3b, v10
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mad_u64_u32 v[191:192], null, s18, s45, v[36:37]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v10, v177, v188 :: v_dual_lshlrev_b32 v177, 16, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v188.h, v143.l
	v_mov_b16_e64 v192.h, v143.l
	v_mov_b16_e64 v179.h, v143.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v180, 0x3fb8aa3b, v177
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v177, 0, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v193.h, v143.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v180, v174, v176
	v_dual_mov_b32 v176, v19 :: v_dual_mul_f32 v19, v140, v148
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v148, 16, v164
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v164, 0x3fb8aa3b, v14
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v14, 0xffff0000, v11
	v_mov_b32_e32 v174, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v20, v140, v149
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(10)
	v_dual_fmac_f32 v164, v19, v148 :: v_dual_lshlrev_b32 v149, 16, v165
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v19, 0x3fb8aa3b, v14 :: v_dual_mul_f32 v14, v140, v147
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v147, 16, v12
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v175, 0, v67
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(9)
	v_dual_fmac_f32 v19, v20, v149 :: v_dual_lshlrev_b32 v20, 16, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v163, 0x3fb8aa3b, v147 :: v_dual_mul_f32 v12, 0x3fb8aa3b, v12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v165.h, v143.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v163, v14, v20 :: v_dual_mul_f32 v14, v140, v146
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v20, 16, v162
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v146, 16, v155
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v162, v104
	ds_load_b32 v166, v105
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v12, v14, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v140, v145
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v145, 0xffff0000, v17
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v17.h, v143.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v161, 0x3fb8aa3b, v145
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, 0x3fb8aa3b, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v143.h, v9.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v161, v14, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v140, v144
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v144, 16, v18
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v20, 16, v160
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v18, 0xffff0000, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, 0x3fb8aa3b, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v143.h, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v144, 0x3fb8aa3b, v144
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v147, 0x1000000, v166
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v144, v14, v20
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v14, v140, v33
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v20, 16, v159
	v_lshlrev_b32_e32 v33, 16, v154
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s13, 0, v147
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v18, v14, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v140, v32
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v20, 16, v158
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v32, 0xffff0000, v15
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v15.h, v143.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v194, 0x3fb8aa3b, v32
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v32, 16, v152
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v194, v14, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v14, v140, v31 :: v_dual_lshlrev_b32 v31, 16, v16
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v157
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v157, v101
	ds_load_b32 v158, v102
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v31, 0x3fb8aa3b, v31 :: v_dual_mul_f32 v16, 0x3fb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v31, v14, v20 :: v_dual_mul_f32 v14, v140, v30
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v156
	v_lshlrev_b32_e32 v30, 16, v151
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v16, v14, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v20, v140, v23
	v_mul_f32_e32 v23, v140, v25
	v_dual_mul_f32 v25, v140, v28 :: v_dual_lshlrev_b32 v28, 16, v150
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v150, v189
	ds_load_b32 v154, v100
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v140, v22
	v_mul_f32_e32 v22, v140, v24
	v_dual_mul_f32 v24, v140, v27 :: v_dual_lshlrev_b32 v27, 16, v153
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v153, 1, v158
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e64 s30, 1, v153
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v148, 0x1000000, v150
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v13, 0x10000, v154
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v145, v20, v28 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v149, 1, v154
	ds_load_b32 v20, v106
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v143.h, v11.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v28, v23, v32 :: v_dual_and_b32 v11, 0x10000, v150
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v151, 0x1000000, v154
	v_and_b32_e32 v23, 0x10000, v158
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v9, v22, v30 :: v_dual_mul_f32 v22, 0x3fb8aa3b, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s21, 0, v11
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v143.h, v17.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s34, 0, v23
	v_and_b32_e32 v23, 1, v157
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v187, v14, v27
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v27, v103
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v22, v24, v33 :: v_dual_and_b32 v33, 1, v150
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s25, 0, v13
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v13, 0xff800000, v171, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s23, 1, v149
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v9, s30
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v24, 0x1000000, v20
	v_and_b32_e32 v11, 0x10000, v20
	v_cmp_eq_u32_e64 s2, 1, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v167, 0x3fb8aa3b, v143
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v143.h, v15.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s11, 0, v24
	v_cmp_ne_u32_e64 s12, 0, v11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v11, 0xff800000, v170, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s24, 0, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v185, s34
	v_cndmask_b32_e64 v171, 0xff800000, v16, s11
	v_cndmask_b32_e64 v170, 0xff800000, v31, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v9, 0x10000, v162
	v_and_b32_e32 v152, 0x1000000, v157
	v_cmp_ne_u32_e64 s20, 0, v148
	v_cmp_eq_u32_e64 s26, 1, v23
	v_and_b32_e32 v24, 0x1000000, v158
	v_cmp_ne_u32_e64 s42, 0, v9
	v_and_b32_e32 v9, 1, v166
	v_cmp_ne_u32_e64 s27, 0, v152
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v155, 1, v27
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v145, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v30, 0x10000, v27
	v_cmp_eq_u32_e64 s15, 1, v9
	v_lshrrev_b16 v9.l, 8, v150.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v148, 0xff800000, v184, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v32, 1, v162
	v_lshrrev_b16 v9.h, 8, v166.l
	v_cmp_ne_u32_e64 s31, 0, v24
	v_and_b16 v9.l, 1, v9.l
	v_lshrrev_b16 v15.l, 8, v20.l
	v_cmp_eq_u32_e64 s38, 1, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v173, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v14, 0x10000, v157
	v_cmp_eq_u16_e64 s18, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v154.l
	v_and_b32_e32 v20, 1, v20
	v_and_b16 v9.h, 1, v9.h
	v_cmp_ne_u32_e64 s29, 0, v14
	v_cmp_ne_u32_e64 s37, 0, v30
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v14, 0xff800000, v172, s20
	v_cndmask_b32_e64 v30, 0xff800000, v187, s23
	v_cndmask_b32_e64 v147, 0xff800000, v183, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v160, 0x1000000, v162
	v_cmp_eq_u16_e64 s22, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v157.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v186, s31
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v167, v25, v146
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v160
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v31, 0xff800000, v169, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b16 v15.l, 1, v15.l
	v_cmp_eq_u16_e64 s43, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v12, s41
	v_cndmask_b32_e64 v12, 0xff800000, v168, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v158.l
	v_cmp_eq_u32_e64 s17, 1, v20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v182, s24
	v_cndmask_b32_e64 v159, 0xff800000, v163, s42
	v_cndmask_b32_e64 v146, 0xff800000, v178, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v22, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v15.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v25, v14, v30, v31
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s33, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v27.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v194, s16
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v183.h, v143.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v181, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v16.h, v143.l
	v_mov_b16_e64 v185.h, v143.l
	v_mov_b16_e64 v172.h, v143.l
	v_mov_b16_e64 v173.h, v143.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s36, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v162.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v161, s43
	v_cndmask_b32_e64 v161, 0xff800000, v167, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v182.h, v143.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v10, s36
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, 0x3fb8aa3b, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v23, 0x1000000, v27
	v_and_b16 v9.l, 1, v9.l
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v27, 1, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.h, v143.l
	v_mov_b16_e64 v184.h, v143.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s39, 0, v23
	v_cmp_eq_u16_e64 s40, 1, v9.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v32, v33, v145
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.h, v143.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v164, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v24, 0x10000, v166
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v164, 0xff800000, v18, s13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v18, v140, v21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s35, 1, v155
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v21, 16, v29
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s14, 0, v24
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v180, s37
	v_cndmask_b32_e64 v158, 0xff800000, v19, s40
	v_cndmask_b32_e64 v153, 0xff800000, v28, s35
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v10, v18, v21
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v144, s14
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v19, v146, v147, v148
	v_max3_f32 v21, v149, v150, v151
	v_max3_f32 v22, v152, v153, v154
	v_max_f32_e32 v24, v11, v12
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v10, s17
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v28, v170, v171
	v_max3_f32 v18, v155, v156, v157
	v_max3_f32 v23, v158, v159, v160
	v_max3_f32 v10, v19, v21, v22
	v_max3_f32 v19, v161, v162, v163
	v_max3_f32 v20, v24, v13, v25
	v_max_f32_e32 v29, v164, v168
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v190, v[11:14]
	ds_store_b128 v190, v[153:156] offset:512
	ds_store_b128 v115, v[30:33]
	ds_store_b128 v115, v[157:160] offset:512
	ds_store_b128 v116, v[145:148]
	ds_store_b128 v116, v[161:164] offset:512
	ds_store_b128 v117, v[149:152]
	ds_store_b128 v117, v[168:171] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v144, v18, v23, v19
	v_max3_f32 v9, v20, v9, v10
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[18:21], v107 offset:256
	ds_load_b128 v[22:25], v107
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v29, v169, v28
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.h, v143.l
	v_mov_b16_e64 v166.h, v143.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v9, v144, v10
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v10, v9, s80, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v144, v26, v9, v10
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v9, v21, v21 :: v_dual_sub_f32 v28, v31, v144
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v31, v145, v144
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v145, v25, v25
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v153, v144
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v153, v22, v18, v23
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v11, v144
	v_sub_f32_e32 v11, v12, v144
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v145, v9
	v_max3_f32 v145, v19, v24, v20
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v151, v144
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v11, v11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v32, v144
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v9, v153, v145, v9
.Ltmp27:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v145, v26, v144
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v194, v154, v144
	v_sub_f32_e32 v199, v156, v144
	v_sub_f32_e32 v200, v158, v144
	v_sub_f32_e32 v167, v148, v144
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v145, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v181, v150, v144
	v_sub_f32_e32 v150, v164, v144
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v164, v191, s78, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v188.l, v10.h
	v_mov_b16_e64 v165.l, v11.h
	v_cmp_o_f32_e64 s18, v11, v11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v189, v152, v144
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v26, 0, v145, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v13, v144
	v_sub_f32_e32 v13, v14, v144
	v_sub_f32_e32 v14, v30, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v30, v33, v144 :: v_dual_mul_f32 v7, v7, v26
	v_sub_f32_e32 v33, v147, v144
	v_dual_sub_f32 v157, v157, v144 :: v_dual_mul_f32 v2, v2, v26
	v_dual_sub_f32 v201, v159, v144 :: v_dual_mul_f32 v4, v4, v26
	v_dual_sub_f32 v203, v162, v144 :: v_dual_mul_f32 v8, v8, v26
	v_dual_sub_f32 v147, v163, v144 :: v_dual_mul_f32 v6, v6, v26
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v26
	v_mul_f32_e32 v3, v3, v26
	v_mul_f32_e32 v5, v5, v26
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v26, v9
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v10, v10
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v202, v160, v144
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v163, v191, s45, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v168, v144
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v169, v144
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v168, v191, s79, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v171, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v191.h, v143.l
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v26, v26, v26
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.h, v143.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v147, v147
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v9, v9, v26 :: v_dual_and_b32 v26, 1, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v145, v11, v26, 0x7fff
	v_and_b32_e32 v11, 1, v188
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v151, 0, v151, s16
	v_cndmask_b32_e64 v147, 0, v147, s14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v153, v10, v11, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v13
	v_exp_f32_e32 v13, v31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v205.l, v157.h
	v_mov_b16_e64 v166.l, v151.h
	v_mov_b16_e64 v162.l, v147.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v166, 1, v166
	v_and_b32_e32 v162, 1, v162
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s20
	v_cndmask_b32_e64 v13, 0, v13, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v17.l, v10.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v32, v146, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v179.l, v13.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v198, v155, v144 :: v_dual_and_b32 v11, 1, v17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v167
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v154, v10, v11, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v12
	v_exp_f32_e32 v12, v32
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v13, v13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s21
	v_cndmask_b32_e64 v12, 0, v12, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.l, v17.h
	v_cmp_o_f32_e64 s28, v17, v17
	v_mov_b16_e64 v192.l, v10.h
	v_cmp_o_f32_e64 s21, v10, v10
	v_mov_b16_e64 v197.l, v12.h
	v_and_b32_e32 v16, 1, v16
	v_cmp_o_f32_e64 s26, v12, v12
	v_and_b32_e32 v11, 1, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v26, 1, v197
	v_add3_u32 v165, v17, v16, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v155, v10, v11, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v28
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v153.l, 0x7fff, v155.h, s21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s31
	v_cndmask_b32_e64 v10, 0, v10, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v182.l, v16.h
	v_mov_b16_e64 v193.l, v10.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v178, v149, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v10, v10
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v149, v170, v144 :: v_dual_and_b32 v32, 1, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v11, 1, v193
	v_and_b32_e32 v182, 1, v205
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v170, v16, v32, 0x7fff
	v_add3_u32 v156, v10, v11, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v14
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v14, 0x80000000, v27, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v27, 1, v179
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v147, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v149, v149
	v_mov_b16_e32 v15.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v10, v10
	v_and_b32_e32 v11, 1, v15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v15, 0x80000000, v163, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v163, v13, v27, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v10, v11, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v30
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v156.l, 0x7fff, v163.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b16 v154.l, 0x7fff, v158.h, s23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v10, 0, v10, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s31, v13, v13
	v_mov_b16_e64 v195.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s24, v10, v10
	v_and_b32_e32 v31, 1, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v195
	v_add3_u32 v159, v10, v11, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v155.h, 0x7fff, v159.h, s24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v196.l, v10.h
	v_cmp_o_f32_e64 s25, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v196
	v_add3_u32 v160, v10, v11, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v10, 0x80000000, v164, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v164, v12, v26, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v181
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v168, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v168, v13, v31, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[26:29], v10, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v10, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v155.l, 0x7fff, v160.h, s25
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v16, v16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v187
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v187.h, v143.l
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.l, v12.h
	v_cmp_o_f32_e64 s30, v12, v12
	v_mov_b16_e64 v187.l, v149.h
	v_cndmask_b16 v189.h, 0x7fff, v170.h, s33
	v_mov_b16_e64 v172.l, v10.h
	v_and_b32_e32 v30, 1, v173
	v_cmp_o_f32_e64 s29, v10, v10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v187, 1, v187
	v_and_b32_e32 v17, 1, v172
	v_add3_u32 v169, v12, v30, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v190
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v183.l, v16.h
	v_cmp_o_f32_e64 s34, v16, v16
	v_add3_u32 v167, v10, v17, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v194
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[10:13], v11, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v31, 1, v183
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v30, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v171, v16, v31, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v16, v198
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v185.l, v30.h
	v_cmp_o_f32_e64 s36, v30, v30
	v_cndmask_b16 v189.l, 0x7fff, v171.h, s34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v184.l, v17.h
	v_and_b32_e32 v33, 1, v185
	v_cmp_o_f32_e64 s35, v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v184
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v172, v30, v33, 0x7fff
	v_mov_b16_e64 v191.l, v16.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s38, v16, v16
	v_add3_u32 v173, v17, v32, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[30:33], v14, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v14, v199
	v_exp_f32_e32 v17, v200
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v180, 1, v191
	v_cndmask_b16 v190.h, 0x7fff, v173.h, s35
	v_cndmask_b16 v190.l, 0x7fff, v172.h, s36
	v_permlanex16_b32 v173, v189, s80, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v14, 0, v14, s39
	v_cndmask_b32_e64 v17, 0, v17, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v157, v157
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v172, v173, v189, v125
	v_perm_b32 v173, v173, v189, v139
	v_mov_b16_e64 v186.l, v14.h
	v_mov_b16_e64 v204.l, v17.h
	v_cmp_o_f32_e64 s37, v14, v14
	v_cmp_o_f32_e64 s39, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v178, 1, v186
	v_and_b32_e32 v181, 1, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v179, v14, v178, 0x7fff
	v_add3_u32 v178, v16, v180, 0x7fff
	v_add3_u32 v181, v17, v181, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[14:17], v15, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v180, v157, v182, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v202
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v188.l, v157.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s41, v157, v157
	v_and_b32_e32 v182, 1, v188
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v188, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v182, v157, v182, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v201
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v188, v188 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v206.l, v157.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v146, v161, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v161.h, v143.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s42, v157, v157
	v_and_b32_e32 v183, 1, v206
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v183, v157, v183, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v203
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v143.l, v146.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s2, v146, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v143, 1, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v192.l, v157.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s43, v157, v157
	v_add3_u32 v143, v146, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v184, 1, v192
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v151, v151
	v_add3_u32 v151, v151, v166, 0x7fff
	v_add3_u32 v166, v149, v187, 0x7fff
	v_cndmask_b16 v149.h, 0x7fff, v181.h, s39
	v_mov_b16_e64 v161.l, v150.h
	v_cndmask_b16 v149.l, 0x7fff, v180.h, s40
	v_add3_u32 v184, v157, v184, 0x7fff
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v157, v176, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v187.h, 0x7fff, v169.h, s30
	v_and_b32_e32 v161, 1, v161
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v187.l, 0x7fff, v168.h, s31
	v_cndmask_b16 v143.l, 0x7fff, v166.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_add3_u32 v146, v150, v161, 0x7fff
	v_add3_u32 v161, v147, v162, 0x7fff
	v_cndmask_b16 v147.l, 0x7fff, v143.h, s2
	v_cndmask_b16 v147.h, 0x7fff, v184.h, s43
	v_permlanex16_b32 v171, v187, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v146.l, 0x7fff, v161.h, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v191, v147, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v170, v171, v187, v125
	v_perm_b32 v171, v171, v187, v139
	v_mov_b16_e64 v185.l, v148.h
	v_cmp_o_f32_e64 s14, v148, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v185, 1, v185
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v162, v148, v185, 0x7fff
	v_cndmask_b16 v185.h, 0x7fff, v145.h, s18
	v_cndmask_b16 v148.h, 0x7fff, v179.h, s37
	v_cndmask_b16 v148.l, 0x7fff, v178.h, s38
	v_cndmask_b16 v145.h, 0x7fff, v151.h, s13
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v151, v188, v188
	s_delay_alu instid0(TRANS32_DEP_1)
.Ltmp41:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v150, v150
	v_permlanex16_b32 v181, v148, s80, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v185.l, 0x7fff, v153.h, s19
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v9, v151
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v186.l, v152.h
	v_cmp_o_f32_e64 s15, v152, v152
	v_perm_b32 v180, v181, v148, v125
	v_perm_b32 v181, v181, v148, v139
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v148, v9
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v186, 1, v186
	v_cndmask_b16 v150.h, 0x7fff, v182.h, s41
	v_cndmask_b16 v150.l, 0x7fff, v183.h, s42
	v_cndmask_b16 v153.h, 0x7fff, v154.h, s20
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v148, v148 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v152, v152, v186, 0x7fff
	v_cndmask_b16 v154.h, 0x7fff, v156.h, s22
	v_permlanex16_b32 v188, v150, s80, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v186.h, 0x7fff, v165.h, s28
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v148, v148, v148
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v143.h, 0x7fff, v152.h, s15
	v_permlanex16_b32 v152, v185, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v184, v188, v150, v125
	v_cndmask_b16 v186.l, 0x7fff, v167.h, s29
	v_permlanex16_b32 v161, v153, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v163, v154, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v158, v152, v185, v125
	v_perm_b32 v159, v152, v185, v139
	v_perm_b32 v185, v188, v150, v139
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v150, v9, v148
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v165, v155, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v169, v186, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v179, v190, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v183, v149, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v142, v142, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v156.h, 0x7fff, v164.h, s26
	v_cndmask_b16 v145.l, 0x7fff, v162.h, s14
	v_perm_b32 v160, v161, v153, v125
	v_perm_b32 v161, v161, v153, v139
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v22, v142
	v_sub_f32_e32 v22, v23, v142
	v_sub_f32_e32 v18, v18, v142
	v_sub_f32_e32 v19, v19, v142
	v_sub_f32_e32 v23, v24, v142
	v_sub_f32_e32 v24, v25, v142
	v_sub_f32_e32 v20, v20, v142
	v_sub_f32_e32 v21, v21, v142
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v23, v23
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v24, v24
	v_exp_f32_e32 v21, v21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v162, v163, v154, v125
	v_perm_b32 v163, v163, v154, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s8
	v_cndmask_b32_e64 v18, 0, v18, s10
	v_cndmask_b32_e64 v22, 0, v22, s6
	v_cndmask_b32_e64 v19, 0, v19, s9
	v_cndmask_b32_e64 v23, 0, v23, s4
	v_cndmask_b32_e64 v20, 0, v20, s7
	v_cndmask_b32_e64 v24, 0, v24, s1
	v_cndmask_b32_e64 v21, 0, v21, s5
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v18 :: v_dual_add_f32 v18, v22, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v20, v23, v20
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v164, v165, v155, v125
	v_perm_b32 v165, v165, v155, v139
	v_perm_b32 v168, v169, v186, v125
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v18 :: v_dual_add_f32 v22, v24, v21
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v169, v169, v186, v139
	v_perm_b32 v178, v179, v190, v125
	v_perm_b32 v179, v179, v190, v139
	v_perm_b32 v182, v183, v149, v125
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v18, v20, v22
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v183, v183, v149, v139
	v_perm_b32 v148, v191, v147, v125
	v_perm_b32 v149, v191, v147, v139
	v_permlanex16_b32 v167, v156, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v18
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v146.h, 0x7fff, v146.h, s11
	v_permlanex16_b32 v153, v145, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v155, v143, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v166, v167, v156, v125
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v18, v9
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v167, v167, v156, v139
	v_permlanex16_b32 v194, v146, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v152, v153, v145, v125
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v153, v153, v145, v139
	v_perm_b32 v151, v194, v146, v139
	v_perm_b32 v154, v155, v143, v125
	v_perm_b32 v155, v155, v143, v139
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v23.l, v28.l
	v_mov_b16_e32 v19.l, v26.l
	v_mov_b16_e32 v21.l, v27.l
	v_mov_b16_e32 v25.l, v29.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v23.h, v12.l
	v_mov_b16_e32 v12.l, v28.h
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v28, v9, v18
.Ltmp65:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v19.h, v10.l
	v_mov_b16_e32 v10.l, v26.h
	v_mov_b16_e32 v21.h, v11.l
	v_mov_b16_e32 v11.l, v27.h
	v_mov_b16_e32 v25.h, v13.l
	v_mov_b16_e32 v13.l, v29.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v18.l, v30.l
	v_mov_b16_e32 v20.l, v31.l
	v_mov_b16_e32 v22.l, v32.l
	v_mov_b16_e32 v24.l, v33.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v18.h, v14.l
	v_mov_b16_e32 v14.l, v30.h
	v_mov_b16_e32 v20.h, v15.l
	v_mov_b16_e32 v15.l, v31.h
	v_mov_b16_e32 v22.h, v16.l
	v_mov_b16_e32 v16.l, v32.h
	v_mov_b32_e32 v9, v14
	ds_store_b64 v175, v[18:19]
	v_mov_b16_e32 v24.h, v17.l
	v_mov_b16_e32 v17.l, v33.h
	v_mov_b32_e32 v18, v13
	ds_store_b64 v118, v[9:10]
	v_mov_b32_e32 v10, v15
	ds_store_b64 v119, v[20:21]
	ds_store_b64 v120, v[10:11]
	v_mov_b32_e32 v11, v16
	ds_store_b64 v121, v[22:23]
	ds_store_b64 v122, v[11:12]
	ds_store_b64 v123, v[24:25]
	ds_store_b64 v124, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v177
	ds_load_b128 v[13:16], v126
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v17, v28
.Ltmp67:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[20:23], v127
	ds_load_b128 v[24:27], v128
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v19, v157, v150
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[186:189], v129
	ds_load_b128 v[190:193], v130
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v194, v146, v125
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v18, v176, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v28, v17
.Ltmp71:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v28, v17
.Ltmp73:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[158:165], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[9:12], v131
	ds_load_b128 v[13:16], v132
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v28, v28 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[20:27], v[166:173], v[1:8]
	v_mov_b32_e32 v26, v144
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v20, v17, v28
.Ltmp77:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[186:193], v[178:185], v[1:8]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v20, v174, v18
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[148:155], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v11, v51
	s_branch .LBB0_8
.LBB0_7:
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v19, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v20, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v50
	s_mov_b32 s1, 0x76543210
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp79:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s47, s47, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_cndmask_b32_e32 v9, 0xff800000, v19, vcc_lo
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v12, 0, v20, vcc_lo
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v49
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v10, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v11, 0, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp82:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_max_f32 v10, v10, v10
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp84:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_add_f32 v12, v12, v13
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v10
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v10, 12, v46
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_mov_b32 v17, v3
.Ltmp89:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s46, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v14, v9
	v_add_nc_u32_e32 v10, 0, v10
.Ltmp91:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp95:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v16
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v14, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v15
	v_add_f32_e32 v3, v3, v17
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v14 :: v_dual_add_f32 v12, v12, v13
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v1
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v11, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v10
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v11, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v10
.Ltmp104:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_cndmask_b32 v12, 0, v5
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v2 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp107:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v4 :: v_dual_mov_b32 v7, v9
	v_dual_add_f32 v4, v3, v5 :: v_dual_cndmask_b32 v13, 0, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v5, v2
.Ltmp110:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v8, v9, v9 :: v_dual_mov_b32 v3, v10
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v4
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v7, v7
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v16 :: v_dual_add_f32 v1, v1, v6
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v8, v8, v9 :: v_dual_add_f32 v7, v10, v3
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v5 :: v_dual_mov_b32 v16, v11
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp122:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v8
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v15, v15, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v12 :: v_dual_mov_b32 v18, v13
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v16, v15, v20 :: v_dual_mov_b32 v17, v12
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v15, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v16
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_add_f32 v11, v11, v15
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	v_add_f32_e32 v15, v14, v19
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v9, v7 :: v_dual_mov_b32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp132:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v11 :: v_dual_add_f32 v17, v16, v20
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v16, v12 :: v_dual_mov_b32 v19, v15
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp137:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp138:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp140:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp141:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp142:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp143:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp144:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v46
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v47
.Ltmp146:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v47
	v_lshlrev_b32_e32 v2, 5, v48
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp148:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s45, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp149:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 214
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 214
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11204
; TotalNumSgprs: 84
; NumVgprs: 214
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 214
; Occupancy: 7
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	5                               ; Abbreviation Code
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
	.byte	6                               ; Abbreviation Code
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
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x68:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x75:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x82:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x9d:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp139                        ; DW_AT_low_pc
	.long	.Ltmp140-.Ltmp139               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     214
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
