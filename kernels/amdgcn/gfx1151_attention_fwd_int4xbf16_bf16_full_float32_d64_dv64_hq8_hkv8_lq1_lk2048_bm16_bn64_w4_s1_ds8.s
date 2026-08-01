	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s47, s[0:1], 0x64
	s_load_b32 s58, s[0:1], 0x5c
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s6, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v46, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 2, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s8, s47
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s8
	s_sub_i32 s5, 0, s8
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v2, 2, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
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
	s_lshl_b32 s13, s10, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s10, s10, s47
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v9, s13, v46
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v46
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s46, s2, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s44, 1, v9
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
	s_add_i32 s4, s47, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 0x60, v0
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s5, s4, s47
	s_abs_i32 s4, s4
	s_ashr_i32 s5, s5, 31
	s_mul_hi_u32 s6, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 2, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s7, s6, s8
	s_add_i32 s9, s6, 1
	s_sub_i32 s4, s4, s7
	v_lshrrev_b32_e32 v48, 3, v2
	s_sub_i32 s2, s4, s8
	s_cmp_ge_u32 s4, s8
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v43, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s8
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s5
	s_sub_i32 s2, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s46, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s59, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s4, s59, s2
	s_mov_b32 s2, 0
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s76, s4, 0x800
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
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
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v2
	s_branch .LBB0_3
.Ltmp2:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr10
.LBB0_3:                                ; %Flow145
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b32 s45, s[0:1], 0x60
	v_and_b32_e32 v47, 15, v0
	v_lshlrev_b32_e32 v44, 1, v0
	v_and_b32_e32 v45, 1, v0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s13, v47
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v47, 1
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	v_dual_mov_b32 v23, 0x5410 :: v_dual_and_b32 v12, 16, v0
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_and_b32 v5, 24, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v10, 3, v1
	v_mov_b32_e32 v1, 0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v4, 24, v44
	v_cmp_eq_u32_e32 vcc_lo, 0, v45
	v_lshlrev_b32_e32 v50, 4, v0
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v14, 5, v0
	v_and_b32_e32 v15, 28, v0
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s61, s9, 0xffff
	s_mov_b32 s60, s8
	v_and_b32_e32 v6, 0x70, v0
	buffer_load_u16 v11, v3, s[60:63], 0 offen
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v3, v0, 4, 1
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_lshlrev_b32 v7, 3, v47
	v_cndmask_b32_e64 v16, 0x420, 0, vcc_lo
	v_lshlrev_b32_e32 v17, 3, v0
	v_bfe_i32 v20, v0, 3, 1
	v_bfe_i32 v21, v0, 5, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v26, v47, 5, v4
	v_cmp_eq_u32_e64 s1, 0, v12
	v_bfe_i32 v19, v0, 2, 1
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s77, s3, 11
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v53, 0x800, v3
	v_or_b32_e32 v55, s77, v3
	v_mov_b32_e32 v3, v1
	v_xor_b32_e32 v54, v50, v5
	v_mov_b32_e32 v4, v1
	v_and_or_b32 v56, 0x3e0, v14, v15
	v_dual_mov_b32 v24, 0x7632 :: v_dual_lshlrev_b32 v33, 4, v45
	v_dual_mov_b32 v25, 0xff800000 :: v_dual_add_nc_u32 v2, 0, v2
	v_and_b32_e32 v8, 14, v0
	v_lshlrev_b32_e32 v13, 6, v45
	v_and_b32_e32 v19, 0x840, v19
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v58, 0, v26
	v_xor_b32_e32 v36, 8, v54
	v_xor_b32_e32 v37, 20, v56
	v_xor_b32_e32 v38, 24, v56
	v_xor_b32_e32 v39, 28, v56
	v_and_b32_e32 v18, 4, v0
	v_lshlrev_b32_e32 v31, 3, v12
	v_and_b32_e32 v14, 0x60, v14
	v_lshl_add_u32 v57, v47, 1, v2
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v79, 0, v36
	v_add_nc_u32_e32 v85, 0, v37
	v_add_nc_u32_e32 v86, 0, v38
	v_add_nc_u32_e32 v87, 0, v39
	v_xor_b32_e32 v51, v43, v48
	v_and_b32_e32 v22, 0x80, v44
	v_lshl_add_u32 v18, v18, 7, 0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_mul_lo_u32 v9, v9, s15
	s_lshr_b32 s0, s0, 29
	v_xor_b32_e32 v32, 0x210, v51
	s_add_i32 s2, s3, s0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v49, 1, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s2, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s2, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_add_nc_u32_e32 v72, 0, v32
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s2, s13, s2
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s45, v10
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v52, 0x800, v10
	v_or_b32_e32 v59, 34, v55
	v_or_b32_e32 v60, 36, v55
	v_or_b32_e32 v61, 38, v55
	v_or_b32_e32 v62, 40, v55
	v_or_b32_e32 v63, 42, v55
	v_or_b32_e32 v64, 44, v55
	v_or_b32_e32 v65, 46, v55
	v_or_b32_e32 v66, 48, v55
	v_or_b32_e32 v67, 50, v55
	v_or_b32_e32 v68, 52, v55
	v_or_b32_e32 v69, 54, v55
	v_or_b32_e32 v73, 56, v55
	v_or_b32_e32 v74, 58, v55
	v_or_b32_e32 v75, 60, v55
	v_or_b32_e32 v103, 62, v55
	.loc	1 774 26                        ; attention.py:774:26
	s_mov_b32 s48, 0
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s78, s45, 4
	s_lshl_b32 s79, s45, 5
	s_mul_i32 s80, s45, 48
	s_mov_b32 s81, 0x76543210
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
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s58, v33
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[34:35], null, s45, v46, v[10:11]
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v11, 16, v11
	v_lshlrev_b32_e32 v15, 4, v5
	v_mov_b32_e32 v5, v1
	v_lshrrev_b32_e32 v28, 1, v6
	v_lshl_or_b32 v29, v6, 4, v7
	v_mov_b32_e32 v6, v1
	v_and_or_b32 v16, v17, 16, v16
	v_and_b32_e32 v17, 0x420, v20
	v_and_b32_e32 v20, 0x840, v21
	v_cndmask_b32_e64 v21, 0x1054, v23, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v23, 8, v26
	v_xor_b32_e32 v35, 16, v26
	v_xor_b32_e32 v26, 24, v26
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v30, 2, v8
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v76, 0, v23
	v_lshl_or_b32 v13, v8, 7, v13
	v_or3_b32 v71, v16, v19, v15
	v_cndmask_b32_e64 v15, 0x3276, v24, s1
	v_add_nc_u32_e32 v77, 0, v35
	v_add_nc_u32_e32 v78, 0, v26
	ds_load_b64 v[35:36], v58
	ds_load_b64 v[37:38], v76
	ds_load_b64 v[39:40], v77
	ds_load_b64 v[41:42], v78
	v_mov_b32_e32 v8, v1
	v_or3_b32 v70, v13, v31, v30
	v_xor_b32_e32 v13, 4, v56
	v_xor3_b32 v14, v17, v14, v20
	v_lshl_or_b32 v16, v21, 8, v21
	v_lshl_or_b32 v15, v15, 8, v15
	v_xor_b32_e32 v28, v29, v28
	v_add_nc_u32_e32 v81, 0, v13
	v_add3_u32 v14, v18, v22, v14
	v_and_b32_e32 v16, 0x540054, v16
	v_and_b32_e32 v13, 0x760076, v15
	v_xor_b32_e32 v29, 8, v56
	v_xor_b32_e32 v30, 12, v56
	v_xor_b32_e32 v31, 16, v56
	v_xor_b32_e32 v17, 8, v70
	v_xor_b32_e32 v19, 16, v70
	v_xor_b32_e32 v20, 24, v70
	v_xor_b32_e32 v21, 32, v70
	v_xor_b32_e32 v23, 40, v70
	v_xor_b32_e32 v18, 48, v70
	v_xor_b32_e32 v22, 56, v70
	v_xor_b32_e32 v24, 32, v71
	v_xor_b32_e32 v26, 64, v71
	v_xor_b32_e32 v32, 0x60, v71
	v_add_nc_u32_e32 v88, v14, v12
	v_lshl_or_b32 v12, v16, 4, v16
	v_lshl_or_b32 v13, v13, 4, v13
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s14, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s12, 0x3fb8aa3b
	s_add_i32 s1, s1, s2
	v_add_nc_u32_e32 v80, 0, v28
	v_add_nc_u32_e32 v82, 0, v29
	v_add_nc_u32_e32 v83, 0, v30
	v_add_nc_u32_e32 v84, 0, v31
	v_add_nc_u32_e32 v89, 0, v17
	v_add_nc_u32_e32 v90, 0, v19
	v_add_nc_u32_e32 v91, 0, v20
	v_add_nc_u32_e32 v92, 0, v21
	v_add_nc_u32_e32 v93, 0, v23
	v_add_nc_u32_e32 v94, 0, v18
	v_add_nc_u32_e32 v95, 0, v22
	v_add_nc_u32_e32 v96, 0, v24
	v_add_nc_u32_e32 v97, 0, v26
	v_add_nc_u32_e32 v98, 0, v32
	v_and_b32_e32 v99, 0x5040504, v12
	v_add3_u32 v100, s1, v10, v9
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v102, s8, v11 :: v_dual_and_b32 v101, 0x7060706, v13
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s13, s59, s77
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s1, s59, v52
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v18, 0x800, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v19, v100, s59, 1
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v128, s13, v49
	v_or_b32_e32 v21, 2, v55
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s9, s44, s1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s59, v18
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v129, 0x80000000, v19, s9
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[18:19], null, v128, s58, v[33:34]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v20, s59, v55, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s1, vcc_lo, s2
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s4, s59, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v112, v59, s59, 1
	v_add_lshl_u32 v21, v21, s59, 1
	v_or_b32_e32 v22, 4, v55
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v130, 0x80000000, v20, s4
	v_cndmask_b32_e64 v131, 0x80000000, v112, s4
	v_cndmask_b32_e64 v112, 0x80000000, v21, s4
	v_or_b32_e32 v23, 6, v55
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[18:21], v18, s[60:63], 0 offen
	v_or_b32_e32 v24, 8, v55
	v_or_b32_e32 v28, 10, v55
	v_or_b32_e32 v105, 20, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v22, v22, s59, 1
	v_add_lshl_u32 v23, v23, s59, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v17, 0, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v126, v75, s59, 1
	v_add_lshl_u32 v24, v24, s59, 1
	v_add_lshl_u32 v28, v28, s59, 1
	v_add_lshl_u32 v105, v105, s59, 1
	v_cndmask_b32_e64 v22, 0x80000000, v22, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s48 :: v_dual_mov_b32 v12, s51
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v23, 0x80000000, v23, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v10, s49
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v150, 0x80000000, v126, s4
	v_cndmask_b32_e64 v24, 0x80000000, v24, s4
	v_cndmask_b32_e64 v28, 0x80000000, v28, s4
	v_cndmask_b32_e64 v128, 0x80000000, v105, s4
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v31, 16, v55
	v_or_b32_e32 v32, 18, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v127, v103, s59, 1
	v_or_b32_e32 v29, 12, v55
	v_add_lshl_u32 v114, v60, s59, 1
	v_add_lshl_u32 v31, v31, s59, 1
	v_add_lshl_u32 v32, v32, s59, 1
	v_cndmask_b32_e64 v153, 0x80000000, v127, s4
	v_add_lshl_u32 v29, v29, s59, 1
	v_or_b32_e32 v30, 14, v55
	v_cndmask_b32_e64 v127, 0x80000000, v31, s4
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	v_cndmask_b32_e64 v133, 0x80000000, v114, s4
	v_cndmask_b32_e64 v114, 0x80000000, v29, s4
	v_add_lshl_u32 v115, v61, s59, 1
	v_add_lshl_u32 v30, v30, s59, 1
	v_or_b32_e32 v107, 22, v55
	v_or_b32_e32 v108, 24, v55
	v_or_b32_e32 v109, 26, v55
	v_cndmask_b32_e64 v135, 0x80000000, v115, s4
	v_cndmask_b32_e64 v115, 0x80000000, v30, s4
	v_or_b32_e32 v110, 28, v55
	v_add_lshl_u32 v119, v65, s59, 1
	v_add_lshl_u32 v120, v66, s59, 1
	v_add_lshl_u32 v121, v67, s59, 1
	v_add_lshl_u32 v122, v68, s59, 1
	v_add_lshl_u32 v107, v107, s59, 1
	v_add_lshl_u32 v108, v108, s59, 1
	v_add_lshl_u32 v109, v109, s59, 1
	v_add_lshl_u32 v110, v110, s59, 1
	v_cndmask_b32_e64 v141, 0x80000000, v119, s4
	v_cndmask_b32_e64 v146, 0x80000000, v120, s4
	v_cndmask_b32_e64 v147, 0x80000000, v121, s4
	v_cndmask_b32_e64 v148, 0x80000000, v122, s4
	v_cndmask_b32_e64 v132, 0x80000000, v107, s4
	v_cndmask_b32_e64 v134, 0x80000000, v108, s4
	v_cndmask_b32_e64 v136, 0x80000000, v109, s4
	v_cndmask_b32_e64 v139, 0x80000000, v110, s4
	v_or_b32_e32 v111, 30, v55
	v_or_b32_e32 v113, 32, v55
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s50 :: v_dual_mov_b32 v14, s53
	v_dual_mov_b32 v13, s52 :: v_dual_mov_b32 v16, s55
	v_dual_mov_b32 v15, s54 :: v_dual_add_nc_u32 v142, 0, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v116, v62, s59, 1
	v_add_lshl_u32 v117, v63, s59, 1
	v_add_lshl_u32 v118, v64, s59, 1
	v_add_lshl_u32 v111, v111, s59, 1
	v_add_lshl_u32 v113, v113, s59, 1
	v_add_lshl_u32 v123, v69, s59, 1
	v_add_lshl_u32 v124, v73, s59, 1
	v_add_lshl_u32 v125, v74, s59, 1
	v_cndmask_b32_e64 v137, 0x80000000, v116, s4
	v_cndmask_b32_e64 v138, 0x80000000, v117, s4
	v_cndmask_b32_e64 v140, 0x80000000, v118, s4
	v_cndmask_b32_e64 v156, 0x80000000, v111, s4
	v_cndmask_b32_e64 v158, 0x80000000, v113, s4
	v_cndmask_b32_e64 v123, 0x80000000, v123, s4
	v_cndmask_b32_e64 v124, 0x80000000, v124, s4
	v_cndmask_b32_e64 v125, 0x80000000, v125, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v26.l, 0
	.loc	1 881 25                        ; attention.py:881:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v190.l, v26.l
	v_mov_b16_e64 v189.l, v26.l
	v_mov_b16_e64 v191.l, v26.l
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v17, v[18:19]
	ds_store_b64 v79, v[20:21]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[185:188], v129, s[64:67], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xa
	buffer_load_u16 v126, v130, s[68:71], 0 offen
	buffer_load_u16 v105, v112, s[68:71], 0 offen
	buffer_load_u16 v164, v22, s[68:71], 0 offen
	buffer_load_u16 v163, v23, s[68:71], 0 offen
	buffer_load_u16 v162, v24, s[68:71], 0 offen
	buffer_load_u16 v161, v28, s[68:71], 0 offen
	buffer_load_u16 v154, v127, s[68:71], 0 offen
	buffer_load_u16 v152, v32, s[68:71], 0 offen
	buffer_load_u16 v157, v114, s[68:71], 0 offen
	buffer_load_u16 v155, v115, s[68:71], 0 offen
	buffer_load_u16 v151, v128, s[68:71], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[28:31], v58 offset1:1
	ds_load_2addr_stride64_b64 v[107:110], v58 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[119:122], v76 offset1:1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v106, v106, v106
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[28:29], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[30:31], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[107:108], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[109:110], v[35:36], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[37:38], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[121:122], v[37:38], v[111:118] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x14
	buffer_load_u16 v145, v132, s[68:71], 0 offen
	buffer_load_u16 v144, v134, s[68:71], 0 offen
	buffer_load_u16 v143, v136, s[68:71], 0 offen
	buffer_load_u16 v139, v139, s[68:71], 0 offen
	buffer_load_u16 v136, v156, s[68:71], 0 offen
	buffer_load_u16 v134, v158, s[68:71], 0 offen
	buffer_load_u16 v132, v131, s[68:71], 0 offen
	buffer_load_u16 v131, v133, s[68:71], 0 offen
	buffer_load_u16 v127, v135, s[68:71], 0 offen
	buffer_load_u16 v122, v137, s[68:71], 0 offen
	buffer_load_u16 v121, v138, s[68:71], 0 offen
	buffer_load_u16 v119, v140, s[68:71], 0 offen
	buffer_load_u16 v110, v141, s[68:71], 0 offen
	buffer_load_u16 v28, v146, s[68:71], 0 offen
	buffer_load_u16 v29, v147, s[68:71], 0 offen
	buffer_load_u16 v30, v148, s[68:71], 0 offen
	buffer_load_u16 v31, v123, s[68:71], 0 offen
	buffer_load_u16 v32, v124, s[68:71], 0 offen
	buffer_load_u16 v107, v125, s[68:71], 0 offen
	buffer_load_u16 v108, v150, s[68:71], 0 offen
	buffer_load_u16 v109, v153, s[68:71], 0 offen
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v76 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v77 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[9:10], v[37:38], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[11:12], v[37:38], v[177:184] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v77 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[15:16], v[39:40], v[111:118] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v78 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[169:176], v[9:10], v[39:40], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[11:12], v[39:40], v[177:184] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v78 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[13:14], v[41:42], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[111:118], v[15:16], v[41:42], v[111:118] neg_lo:[1,1,0]
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v17
	v_cvt_f32_i32_e32 v123, v18
	v_cvt_f32_i32_e32 v168, v19
	v_cvt_f32_i32_e32 v167, v20
	v_cvt_f32_i32_e32 v166, v21
	v_mul_f32_e32 v141, v102, v141
	v_cvt_f32_i32_e32 v165, v22
	v_cvt_f32_i32_e32 v160, v23
	v_cvt_f32_i32_e32 v159, v24
	v_mul_f32_e32 v123, v102, v123
	v_cvt_f32_i32_e32 v156, v112
	v_cvt_f32_i32_e32 v153, v113
	v_cvt_f32_i32_e32 v140, v117
	v_mul_f32_e32 v159, v102, v159
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[169:176], v[9:10], v[41:42], v[169:176] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[11:12], v[41:42], v[177:184] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v158, v111
	v_cvt_f32_i32_e32 v148, v114
	v_cvt_f32_i32_e32 v146, v116
	v_cvt_f32_i32_e32 v137, v169
	v_cvt_f32_i32_e32 v135, v170
	v_cvt_f32_i32_e32 v130, v172
	v_cvt_f32_i32_e32 v147, v115
	v_cvt_f32_i32_e32 v128, v174
	v_cvt_f32_i32_e32 v133, v171
	v_cvt_f32_i32_e32 v124, v175
	v_cvt_f32_i32_e32 v116, v182
	v_mul_f32_e32 v135, v102, v135
	v_cvt_f32_i32_e32 v138, v118
	v_cvt_f32_i32_e32 v129, v173
	v_cvt_f32_i32_e32 v120, v176
	v_cvt_f32_i32_e32 v118, v184
	v_cvt_f32_i32_e32 v112, v178
	v_cvt_f32_i32_e32 v114, v180
	v_cvt_f32_i32_e32 v113, v179
	v_cvt_f32_i32_e32 v111, v177
	v_cvt_f32_i32_e32 v117, v183
	v_cvt_f32_i32_e32 v115, v181
	v_mul_f32_e32 v140, v102, v140
	v_mul_f32_e32 v113, v102, v113
	v_mul_f32_e32 v111, v102, v111
	v_mul_f32_e32 v117, v102, v117
	v_mul_f32_e32 v115, v102, v115
	v_mul_f32_e32 v130, v102, v130
	v_mul_f32_e32 v120, v102, v120
	v_mul_f32_e32 v118, v102, v118
	v_mul_f32_e32 v148, v102, v148
	v_mul_f32_e32 v146, v102, v146
	v_mul_f32_e32 v112, v102, v112
	v_mul_f32_e32 v128, v102, v128
	v_mul_f32_e32 v114, v102, v114
	v_mul_f32_e32 v124, v102, v124
	v_mul_f32_e32 v116, v102, v116
	v_mul_f32_e32 v138, v102, v138
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v14, 0xff80ff80, v188, s9
	v_cndmask_b32_e64 v13, 0xff80ff80, v187, s9
	v_cndmask_b32_e64 v16, 0xff80ff80, v186, s9
	v_cndmask_b32_e64 v15, 0xff80ff80, v185, s9
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v126, 16, v126
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v190.h, v14.l
	v_mov_b16_e64 v189.h, v13.l
	v_mov_b16_e64 v191.h, v16.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v10.l, v13.l
	v_mov_b16_e32 v10.h, v14.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v190
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e32 v9.l, v15.l
	v_mov_b16_e32 v9.h, v16.l
	v_mov_b16_e32 v12.l, v13.h
	v_mov_b16_e32 v12.h, v14.h
	v_mov_b16_e32 v11.l, v15.h
	v_mov_b16_e32 v11.h, v16.h
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e32 v26.h, v15.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s2, 0xff800000, v189
	v_cmp_neq_f32_e64 s5, 0xff800000, v191
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s1, s9, s1
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_store_2addr_b64 v80, v[9:10], v[11:12] offset1:16
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v11, 0, 1, s1
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v26
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s4, s9, s2
	s_and_b32 s5, s9, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v13, 0xffff0000, v13
	v_and_b32_e32 v15, 0xffff0000, v15
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v12, 0, 1, s4
	v_cndmask_b32_e64 v125, 0, 1, s5
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v16
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s9, s6
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v13
	v_cmp_neq_f32_e64 s11, 0xff800000, v15
	v_cmp_neq_f32_e64 s12, 0xff800000, v14
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[23:24], v142
	ds_load_b64 v[21:22], v89
	ds_load_b64 v[19:20], v90
	ds_load_b64 v[17:18], v91
	ds_load_b64 v[15:16], v92
	ds_load_b64 v[13:14], v93
	ds_load_b64 v[9:10], v94
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v142, 0, 1, s7
	v_or_b16 v150.h, v12.l, v11.l
	v_mov_b16_e32 v11.l, v125.l
	s_and_b32 s6, s9, s8
	s_and_b32 s8, s9, s11
	v_cndmask_b32_e64 v169, 0, 1, s6
	v_mov_b16_e64 v12.l, v142.l
	v_lshlrev_b16 v11.l, 8, v11.l
	s_and_b32 s10, s9, s10
	s_and_b32 s9, s9, s12
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v142, 0, 1, s9
	v_or_b16 v150.l, v12.l, v11.l
	v_mov_b16_e64 v11.l, v169.l
	v_cndmask_b32_e64 v12, 0, 1, s8
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt lgkmcnt(6)
	v_mov_b16_e64 v142.h, v23.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v23, 0xffff0000, v23
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v11.l, 8, v11.l
	v_add_nc_u32_e32 v149, 0, v51
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v170, 0xffff0000, v24
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v161
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v152, 16, v152
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v125.l, v12.l, v11.l
	v_mov_b16_e64 v11.l, v142.l
	v_cndmask_b32_e64 v12, 0, 1, s10
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v142.l, v26.l
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v151, 16, v151
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v143, 16, v143
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v11.l, 8, v11.l
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v139, 16, v139
	v_lshlrev_b32_e32 v145, 16, v145
	v_lshlrev_b32_e32 v144, 16, v144
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v134, 16, v134
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v125.h, v12.l, v11.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[11:12], v95
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v149, v150
	ds_store_b32 v72, v125
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v149, 0x3fb8aa3b, v142 :: v_dual_add_nc_u32 v150, 0, v56
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v142, 0x3fb8aa3b, v23
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v132, 16, v132
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v137, v102, v137 :: v_dual_lshlrev_b32 v136, 16, v136
	v_mul_f32_e32 v133, v102, v133
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v142, v123, v105 :: v_dual_mov_b32 v123, v104
	v_dual_fmac_f32 v149, v141, v126 :: v_dual_mov_b32 v126, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v27, 16, v164
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v23, 16, v24
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v24, v102, v168 :: v_dual_add_nc_u32 v141, 0, v71
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v105, 0, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v104, 16, v163
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v163, v102, v166 :: v_dual_mul_f32 v164, 0x3fb8aa3b, v23
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v166, 16, v162
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v122, 16, v122
	v_lshlrev_b32_e32 v131, 16, v131
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v119, 16, v119
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v164, v24, v27
	v_mad_u64_u32 v[23:24], null, s13, s45, v[34:35]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v27, v102, v167 :: v_dual_mul_f32 v24, 0x3fb8aa3b, v170
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v167, 16, v155
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v31, 16, v31
	v_lshlrev_b32_e32 v30, 16, v30
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v24, v27, v104
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v27.l, v26.l
	v_mov_b16_e32 v27.h, v21.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v21, 0xffff0000, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v104.l, v26.l
	v_mov_b16_e32 v104.h, v19.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v19, 0xffff0000, v19
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v162, 0x3fb8aa3b, v27 :: v_dual_mul_f32 v27, v102, v165
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v21, 0x3fb8aa3b, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v165.l, v26.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v19, 0x3fb8aa3b, v19 :: v_dual_fmac_f32 v162, v163, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v166.h, v17.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v21, v27, v161
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v27, v102, v160 :: v_dual_lshlrev_b32 v160, 16, v157
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v157, 16, v22
	v_and_b32_e32 v17, 0xffff0000, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v166.l, v26.l
	v_mov_b16_e64 v163.h, v15.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v15, 0xffff0000, v15
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v157, 0x3fb8aa3b, v157
	v_mul_f32_e32 v17, 0x3fb8aa3b, v17
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v163.l, v26.l
	v_mov_b16_e64 v165.h, v13.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v15, 0x3fb8aa3b, v15
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v157, v27, v160
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v27, 0xffff0000, v22
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v17, v146, v143 :: v_dual_lshlrev_b32 v146, 16, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v15, v135, v132 :: v_dual_and_b32 v18, 0xffff0000, v18
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v155, 0x3fb8aa3b, v27
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.h, v9.l
	v_mov_b16_e64 v160.h, v11.l
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v155, v159, v167
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v159, v102, v158 :: v_dual_mul_f32 v158, 0x3fb8aa3b, v104
	v_dual_mul_f32 v104, v102, v156 :: v_dual_mul_f32 v167, 0x3fb8aa3b, v165
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v13, 0x3fb8aa3b, v13
	.loc	1 881 25                        ; attention.py:881:25
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v161.l, v26.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v19, v104, v152 :: v_dual_mul_f32 v104, v102, v153
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v153, 16, v20
	.loc	1 838 37                        ; attention.py:838:37
	v_and_b32_e32 v20, 0xffff0000, v20
	v_lshlrev_b32_e32 v28, 16, v28
	v_mov_b16_e64 v160.l, v26.l
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v108, 16, v108
	v_lshlrev_b32_e32 v32, 16, v32
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v20, 0x3fb8aa3b, v20
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v18, 0x3fb8aa3b, v18
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v169, 0x800, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v22.h, v26.l
	v_mov_b16_e32 v26.h, v26.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v20, v148, v145
	v_dual_fmac_f32 v158, v159, v154 :: v_dual_mul_f32 v159, v102, v147
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v147, 0x3fb8aa3b, v166
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v166, 0x3fb8aa3b, v146
	v_mul_f32_e32 v156, 0x3fb8aa3b, v153
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v18, v138, v136
	.loc	1 892 27 is_stmt 1              ; attention.py:892:27
	v_cmp_lt_i32_e64 s11, s59, v169
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v147, v159, v144
	.loc	1 879 36                        ; attention.py:879:36
	v_lshlrev_b32_e32 v159, 16, v14
	v_lshlrev_b32_e32 v135, 16, v16
	v_and_b32_e32 v16, 0xffff0000, v16
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, 0x3fb8aa3b, v163
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v14, 0xffff0000, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v168, 0x3fb8aa3b, v159
	v_dual_mul_f32 v16, 0x3fb8aa3b, v16 :: v_dual_mul_f32 v129, v102, v129
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v14, 0x3fb8aa3b, v14
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v163, v137, v134
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v137, 0x3fb8aa3b, v135
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v168, v124, v119
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v124, 16, v10
	v_and_b32_e32 v10, 0xffff0000, v10
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v14, v120, v110 :: v_dual_lshlrev_b32 v121, 16, v121
	v_fmac_f32_e32 v137, v133, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v10, 0x3fb8aa3b, v10 :: v_dual_lshlrev_b32 v29, 16, v29
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v9, 0xffff0000, v9
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v167, v129, v122 :: v_dual_lshlrev_b32 v120, 16, v12
	v_dual_fmac_f32 v13, v128, v121 :: v_dual_and_b32 v12, 0xffff0000, v12
	v_fmac_f32_e32 v10, v114, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v172, 0x3fb8aa3b, v9
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v12, 0x3fb8aa3b, v12 :: v_dual_lshlrev_b32 v107, 16, v107
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v156, v104, v151
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v172, v112, v29
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v180, 0x3fb8aa3b, v11 :: v_dual_lshlrev_b32 v109, 16, v109
	v_mul_f32_e32 v9, 0x3fb8aa3b, v124
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_b32 v124, v150
	ds_load_b32 v125, v81
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v171, 0x3fb8aa3b, v161
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v12, v118, v109
	v_dual_fmac_f32 v180, v116, v107 :: v_dual_fmac_f32 v9, v113, v30
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v113, v86
	ds_load_b32 v179, v87
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v171, v111, v28
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v111, v82
	ds_load_b32 v150, v83
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v11, 0x3fb8aa3b, v120
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v29, 0x3fb8aa3b, v160
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v112, v84
	ds_load_b32 v176, v85
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v166, v140, v139
	v_dual_fmac_f32 v16, v130, v127 :: v_dual_fmac_f32 v11, v117, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v122, 1, v23
	v_add_lshl_u32 v128, v23, s78, 1
	v_add_lshl_u32 v129, v23, s79, 1
	v_add_lshl_u32 v23, v23, s80, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s11, s0, s11
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(7)
	v_and_b32_e32 v28, 0x10000, v124
	s_waitcnt lgkmcnt(6)
	v_and_b32_e32 v30, 0x10000, v125
	v_and_b32_e32 v117, 1, v125
	v_and_b32_e32 v118, 0x1000000, v125
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v109, 0x10000, v113
	v_and_b32_e32 v114, 0x10000, v179
	v_cmp_ne_u32_e64 s31, 0, v28
	v_and_b32_e32 v28, 0x1000000, v179
	v_and_b32_e32 v120, 1, v111
	v_cmp_ne_u32_e64 s13, 0, v109
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v29, v115, v32 :: v_dual_and_b32 v32, 0x10000, v150
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v115, 1, v124
	v_cmp_ne_u32_e64 s12, 0, v114
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v173, 0xff800000, v9, s13
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v9, 1, v179
	v_cmp_ne_u32_e64 s14, 0, v28
	v_cmp_eq_u32_e64 s33, 1, v115
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v177, 0xff800000, v11, s12
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s19, 0, v30
	v_cmp_eq_u32_e64 s29, 1, v9
	v_lshrrev_b16 v9.l, 8, v124.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v12, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v31, 0x10000, v111
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v28, 0xff800000, v149, s33
	v_cndmask_b32_e64 v175, 0xff800000, v29, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u32_e64 s35, 1, v117
	v_cmp_ne_u32_e64 s18, 0, v31
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, 0xff800000, v157, s19
	v_cndmask_b32_e64 v30, 0xff800000, v164, s31
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s37, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v125.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v156, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s17, 0, v32
	v_cmp_ne_u32_e64 s36, 0, v118
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v29, 0xff800000, v142, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v9.l, 1, v9.l
	v_and_b32_e32 v116, 0x1000000, v124
	v_cmp_eq_u32_e64 s20, 1, v120
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v155, s36
	v_cndmask_b32_e64 v161, 0xff800000, v166, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s2, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v111.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v158, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v9.h, 8, v150.l
	v_and_b32_e32 v32, 0x1000000, v111
	v_and_b32_e32 v107, 0x10000, v112
	v_and_b16 v9.l, 1, v9.l
	v_lshrrev_b16 v11.l, 8, v113.l
	v_and_b16 v9.h, 1, v9.h
	v_cmp_ne_u32_e64 s22, 0, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v162, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s43, 1, v9.l
	v_and_b32_e32 v114, 1, v176
	v_cmp_eq_u16_e64 s42, 1, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v20, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v20, 0x1000000, v176
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v19, s43
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v28, v29
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s34, 0, v116
	v_lshrrev_b16 v11.h, 8, v179.l
	v_and_b16 v11.l, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v21, s2
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v109, 1, v112
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v31, 0xff800000, v24, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v24, 0x1000000, v112
	v_cmp_eq_u32_e64 s25, 1, v114
	v_cmp_ne_u32_e64 s28, 0, v20
	v_cmp_eq_u32_e64 s23, 1, v109
	v_and_b16 v11.h, 1, v11.h
	v_cmp_ne_u32_e64 s26, 0, v24
	v_cmp_eq_u16_e64 s39, 1, v11.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v167, s25
	v_cndmask_b32_e64 v163, 0xff800000, v163, s23
	v_cndmask_b32_e64 v170, 0xff800000, v14, s28
	v_cndmask_b32_e64 v166, 0xff800000, v16, s26
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v16, 0x1000000, v113
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v17, s42
	v_cndmask_b32_e64 v172, 0xff800000, v172, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v11.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v14, v156, v157, v158
.Ltmp6:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s30, 0, v16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v24, 0x80000000, v128, s11
	v_cndmask_b32_e64 v128, 0x80000000, v23, s11
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v23, v31, v115, v116
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, 0xff800000, v10, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v108, 0x10000, v176
	v_lshrrev_b16 v10.l, 8, v112.l
	v_lshrrev_b16 v10.h, 8, v176.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v176, 0xff800000, v180, s38
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v9, v174, v175
.Ltmp10:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s15, 0, v108
	v_and_b32_e32 v108, 0x1000000, v150
	v_and_b16 v10.l, 1, v10.l
	v_and_b16 v10.h, 1, v10.h
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v117, v118, v155
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v168, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s24, 0, v108
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v108, v123, v123
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s16, 0, v107
	v_and_b32_e32 v107, 1, v150
	v_cmp_eq_u16_e64 s41, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v18, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v18, 1, v113
	v_cmp_eq_u16_e64 s40, 1, v10.h
	v_cmp_eq_u32_e64 s21, 1, v107
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v137, s16
	v_cndmask_b32_e64 v164, 0xff800000, v15, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s27, 1, v18
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v168, 0xff800000, v13, s40
	v_cndmask_b32_e64 v159, 0xff800000, v147, s21
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v13, v165, v166, v167
	v_max_f32_e32 v10, v177, v178
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v171, s27
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v16, v162, v163, v164
	v_max3_f32 v15, v159, v160, v161
	v_max3_f32 v20, v168, v169, v170
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v141, v[28:31]
	ds_store_b128 v141, v[163:166] offset:512
	ds_store_b128 v96, v[115:118]
	ds_store_b128 v96, v[167:170] offset:512
	ds_store_b128 v97, v[155:158]
	ds_store_b128 v97, v[171:174] offset:512
	ds_store_b128 v98, v[159:162]
	ds_store_b128 v98, v[175:178] offset:512
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v21, v171, v172, v173
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v107, v9, v176, v10
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[9:12], v88 offset:256
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v120, v14, v15, v16
	v_max3_f32 v20, v13, v20, v21
.Ltmp22:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[13:16], v88
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v19, v19, v30, v23
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v26.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v18, 0x80000000, v122, s11
	v_cndmask_b32_e64 v32, 0x80000000, v129, s11
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v25
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v19, v17, v120
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v26.l
	v_mov_b16_e32 v110.h, v26.l
	v_mov_b16_e32 v114.h, v26.l
	v_mov_b16_e32 v112.h, v26.l
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v17, v20, v107
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v27.h, v26.l
	v_mov_b16_e64 v152.h, v26.l
	v_mov_b16_e64 v151.h, v26.l
	v_mov_b16_e64 v153.h, v26.l
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v19, v17, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v20, v12, v12
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v104.h, v26.l
	v_mov_b16_e64 v145.h, v26.l
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v21, v16, v16
.Ltmp33:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v107, v25, v17, v19
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v17, v13, v9, v14
	v_max3_f32 v19, v10, v15, v11
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.h, v26.l
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v21, v20
.Ltmp37:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v29, v107
	v_sub_f32_e32 v29, v30, v107
	v_sub_f32_e32 v30, v31, v107
	v_sub_f32_e32 v31, v115, v107
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v21, v17, v19, v20
.Ltmp39:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v115, v25, v107
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v29
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_sub_f32 v122, v116, v107 :: v_dual_mov_b32 v25, v21
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v115, v115
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.h, v26.l
	v_mov_b16_e64 v143.h, v26.l
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.h, v26.l
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.h, v26.l
	v_mov_b16_e64 v146.h, v26.l
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v25, v25, v25
.Ltmp43:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v115, 0, v115, s11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v118, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.l, v29.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v147, v158, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v23, 0, v23, s37
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v115
	v_mul_f32_e32 v2, v2, v115
	v_mul_f32_e32 v3, v3, v115
	v_mul_f32_e32 v4, v4, v115
	v_mul_f32_e32 v5, v5, v115
	v_mul_f32_e32 v6, v6, v115
	v_mul_f32_e32 v7, v7, v115
	v_dual_mul_f32 v8, v8, v115 :: v_dual_max_f32 v115, v21, v25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v25, v28
	v_exp_f32_e32 v28, v30
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v30, 1, v154
	v_mov_b16_e64 v136.h, v26.l
	v_mov_b16_e64 v138.h, v26.l
	v_mov_b16_e64 v134.h, v26.l
	v_mov_b16_e64 v132.h, v26.l
	v_add3_u32 v118, v29, v30, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v30, v31
	v_exp_f32_e32 v31, v124
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v25, 0, v25, s33
	v_cndmask_b32_e64 v28, 0, v28, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v29, v29
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v29, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.h, v26.l
	v_mov_b16_e64 v133.h, v26.l
	v_mov_b16_e64 v135.h, v26.l
	v_mov_b16_e32 v127.h, v26.l
	v_mov_b16_e32 v121.h, v26.l
	v_mov_b16_e32 v119.h, v26.l
	v_mov_b16_e32 v109.h, v26.l
	v_mov_b16_e32 v111.h, v26.l
	v_mov_b16_e32 v113.h, v26.l
	v_mov_b16_e32 v26.l, v25.h
	v_mov_b16_e32 v27.l, v28.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v29, s2
	v_cndmask_b32_e64 v30, 0, v30, s35
	v_cndmask_b32_e64 v31, 0, v31, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v22.l, v23.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v141, v156, v107 :: v_dual_and_b32 v26, 1, v26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v27, 1, v27
	v_mov_b16_e64 v152.l, v29.h
	v_mov_b16_e64 v151.l, v30.h
	v_mov_b16_e64 v153.l, v31.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v142, v157, v107 :: v_dual_and_b32 v21, 1, v22
	v_sub_f32_e32 v129, v117, v107
	v_sub_f32_e32 v149, v159, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v150, v160, v107 :: v_dual_and_b32 v125, 1, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v25, v25
	v_cmp_o_f32_e64 s33, v28, v28
	v_add3_u32 v117, v25, v26, 0x7fff
	v_add3_u32 v120, v28, v27, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[25:28], v32, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v32, 1, v152
	v_and_b32_e32 v122, 1, v151
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v18, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v23, v23
	v_add3_u32 v116, v23, v21, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[21:24], v24, s[72:75], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s35, v29, v29
	v_cmp_o_f32_e64 s36, v30, v30
	v_cmp_o_f32_e64 s37, v31, v31
	v_add3_u32 v124, v29, v32, 0x7fff
	v_add3_u32 v122, v30, v122, 0x7fff
	v_add3_u32 v125, v31, v125, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[29:32], v128, s[72:75], 0 offen
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v129
	v_exp_f32_e32 v129, v141
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v137, v155, v107
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v147
	v_exp_f32_e32 v147, v150
	v_exp_f32_e32 v149, v149
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v160, v166, v107
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v142, v142
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v166, v172, v107
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v128, s19
	v_cndmask_b32_e64 v129, 0, v129, s43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v160
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v141, 0, v141, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v172, v178, v107
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v145.l, v129.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v156, v162, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v104.l, v128.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v161, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v148.l, v137.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v163, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.l, v141.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v165, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v149.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v167, v107
	v_dual_sub_f32 v167, v173, v107 :: v_dual_and_b32 v104, 1, v104
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v151, v155
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v148, 1, v148
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v144, 1, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v150.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v163, v169, v107 :: v_dual_and_b32 v140, 1, v140
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v157, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v146, 1, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v159, v163
	v_exp_f32_e32 v163, v167
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v136.l, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v171, v107
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s26
	v_cndmask_b32_e64 v142, 0, v142, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v134.l, v153.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v169, v175, v107 :: v_dual_and_b32 v136, 1, v136
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v161, v165
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v163, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v134, 1, v134
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v165, v169
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.l, v154.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v177, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v109.l, v163.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v168, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v142.h
	v_and_b32_e32 v132, 1, v132
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v167, v171
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v109, 1, v109
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v156, v162
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v165, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v143, 1, v143
	v_add3_u32 v104, v128, v104, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s16
	v_cndmask_b32_e64 v161, 0, v161, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v113.l, v165.h
	v_cmp_o_f32_e64 s16, v142, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v128, v128
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s40
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v128, v115 :: v_dual_and_b32 v113, 1, v113
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v142, v142, v143, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v133.l, v156.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v164, v107
	v_sub_f32_e32 v164, v170, v107
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v128, v128 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v168, v174, v107 :: v_dual_and_b32 v133, 1, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v152, v158
	v_exp_f32_e32 v158, v164
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v122.l, 0x7fff, v142.h, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v176, v107
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v166, v172
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s15
	v_cndmask_b32_e64 v160, 0, v160, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v119.l, v161.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v170
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v129, v129
	v_mov_b16_e64 v130.l, v159.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v121.l, v160.h
	v_mov_b16_e64 v112.l, v167.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v166, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v137, v137
	v_mov_b16_e64 v127.l, v158.h
	v_cmp_o_f32_e64 s27, v158, v158
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v114.l, v166.h
	v_and_b32_e32 v130, 1, v130
	v_and_b32_e32 v127, 1, v127
	v_and_b32_e32 v119, 1, v119
	v_add3_u32 v129, v129, v145, 0x7fff
	v_add3_u32 v137, v137, v148, 0x7fff
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v127, v158, v127, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v159, v159
	v_mov_b16_e64 v111.l, v164.h
	v_cmp_o_f32_e64 s41, v165, v165
	v_cndmask_b16 v142.h, 0x7fff, v127.h, s27
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v127, v128, v128
.Ltmp49:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v114, 1, v114
	v_and_b32_e32 v112, 1, v112
	v_add3_u32 v130, v159, v130, 0x7fff
	v_add3_u32 v119, v161, v119, 0x7fff
	v_add3_u32 v113, v165, v113, 0x7fff
	v_cndmask_b16 v116.h, 0x7fff, v116.h, s11
	v_cndmask_b16 v116.l, 0x7fff, v117.h, s31
	v_cndmask_b16 v117.h, 0x7fff, v120.h, s33
	v_cndmask_b16 v117.l, 0x7fff, v118.h, s34
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v161, v161
	v_cndmask_b16 v118.h, 0x7fff, v124.h, s35
	v_cndmask_b16 v118.l, 0x7fff, v122.h, s36
	v_cndmask_b16 v120.l, 0x7fff, v104.h, s12
	v_mov_b16_e64 v110.l, v162.h
	v_cndmask_b16 v104.h, 0x7fff, v129.h, s13
	v_cndmask_b16 v104.l, 0x7fff, v137.h, s14
	v_add3_u32 v121, v160, v121, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v147, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v110, 1, v110
	v_cmp_o_f32_e64 s39, v163, v163
	v_cmp_o_f32_e64 s42, v166, v166
	v_cmp_o_f32_e64 s2, v167, v167
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v110, v162, v110, 0x7fff
	v_add3_u32 v109, v163, v109, 0x7fff
	v_add3_u32 v114, v166, v114, 0x7fff
	v_add3_u32 v112, v167, v112, 0x7fff
	v_cndmask_b16 v142.l, 0x7fff, v130.h, s29
	v_cndmask_b16 v121.l, 0x7fff, v119.h, s30
	v_cndmask_b16 v110.l, 0x7fff, v113.h, s41
	v_permlanex16_b32 v113, v116, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v119, v117, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v128, v118, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v130, v104, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v115, v127
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v141, v141
	v_add3_u32 v141, v141, v144, 0x7fff
	v_add3_u32 v144, v164, v111, 0x7fff
	v_cndmask_b16 v111.l, 0x7fff, v109.h, s39
	v_cndmask_b16 v109.h, 0x7fff, v114.h, s42
	v_cndmask_b16 v109.l, 0x7fff, v112.h, s2
	v_perm_b32 v112, v113, v116, v99
	v_perm_b32 v113, v113, v116, v101
	v_perm_b32 v114, v119, v117, v99
	v_perm_b32 v115, v119, v117, v101
	v_perm_b32 v116, v128, v118, v99
	v_perm_b32 v117, v128, v118, v101
	v_perm_b32 v127, v130, v104, v99
	v_perm_b32 v128, v130, v104, v101
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v104, v145
.Ltmp53:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v147.h
	v_mov_b16_e64 v138.l, v152.h
	v_mov_b16_e64 v131.l, v155.h
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v104, v104 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.l, v157.h
	v_cndmask_b16 v120.h, 0x7fff, v125.h, s37
	v_and_b32_e32 v138, 1, v138
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v104, v104, v104
.Ltmp57:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v129, v120, s81, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s20, v151, v151
	v_cmp_o_f32_e64 s21, v152, v152
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v104, v145, v104 :: v_dual_and_b32 v139, 1, v139
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v131, 1, v131
	v_cmp_o_f32_e64 s22, v153, v153
	v_cmp_o_f32_e64 s23, v154, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v106, v106, v104 :: v_dual_and_b32 v135, 1, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s24, v155, v155
	v_cmp_o_f32_e64 s25, v156, v156
	v_cmp_o_f32_e64 s26, v157, v157
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v13, v106
	v_sub_f32_e32 v14, v14, v106
	v_sub_f32_e32 v15, v15, v106
	v_sub_f32_e32 v16, v16, v106
	v_sub_f32_e32 v9, v9, v106
	v_sub_f32_e32 v10, v10, v106
	v_sub_f32_e32 v11, v11, v106
	v_sub_f32_e32 v12, v12, v106
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v9, v9
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v10, v10
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v11, v11
	v_exp_f32_e32 v16, v16
	v_exp_f32_e32 v12, v12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v160, v160
	v_cmp_o_f32_e64 s38, v162, v162
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s7
	v_cndmask_b32_e64 v9, 0, v9, s8
	v_cndmask_b32_e64 v14, 0, v14, s5
	v_cndmask_b32_e64 v10, 0, v10, s6
	v_cndmask_b32_e64 v15, 0, v15, s4
	v_cndmask_b32_e64 v11, 0, v11, s10
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v12, 0, v12, s9
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v13, v9 :: v_dual_add_f32 v10, v14, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v11, v15, v11
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v164, v164
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v16, v12
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v136, v151, v136, 0x7fff
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v138, v152, v138, 0x7fff
	v_add3_u32 v134, v153, v134, 0x7fff
.Ltmp66:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v11, v12
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v154, v132, 0x7fff
	v_add3_u32 v133, v156, v133, 0x7fff
	v_add3_u32 v135, v157, v135, 0x7fff
	v_perm_b32 v118, v129, v120, v99
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v119, v129, v120, v101
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v104, v108, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v131, v155, v131, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	ds_store_b128 v105, v[17:20]
	s_waitcnt vmcnt(1)
	ds_store_b128 v105, v[21:24] offset:2048
	ds_store_b128 v105, v[25:28] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v105, v[29:32] offset:6144
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp71:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v147, v147
	v_cmp_o_f32_e64 s18, v149, v149
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v150, v150
	v_add3_u32 v139, v147, v139, 0x7fff
	v_add3_u32 v140, v149, v140, 0x7fff
	v_add3_u32 v143, v150, v146, 0x7fff
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v122.h, 0x7fff, v141.h, s15
	v_cndmask_b16 v124.h, 0x7fff, v139.h, s17
	v_cndmask_b16 v124.l, 0x7fff, v140.h, s18
	v_cndmask_b16 v125.h, 0x7fff, v143.h, s19
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, v9
.Ltmp77:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v125.l, 0x7fff, v136.h, s20
	v_cndmask_b16 v136.h, 0x7fff, v138.h, s21
	v_cndmask_b16 v136.l, 0x7fff, v134.h, s22
	v_cndmask_b16 v138.h, 0x7fff, v132.h, s23
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v138.l, 0x7fff, v131.h, s24
	v_cndmask_b16 v140.h, 0x7fff, v133.h, s25
	v_cndmask_b16 v140.l, 0x7fff, v135.h, s26
	v_permlanex16_b32 v131, v122, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v120, v9, v10
.Ltmp81:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v57
	ds_load_u16_d16 v10, v57 offset:256
	ds_load_u16_d16 v11, v57 offset:512
	ds_load_u16_d16 v12, v57 offset:768
	ds_load_u16_d16 v13, v57 offset:1024
	ds_load_u16_d16 v14, v57 offset:1280
	ds_load_u16_d16 v15, v57 offset:1536
	ds_load_u16_d16 v16, v57 offset:1792
	ds_load_u16_d16 v17, v57 offset:2048
	ds_load_u16_d16 v18, v57 offset:2304
	ds_load_u16_d16 v19, v57 offset:2560
	ds_load_u16_d16 v20, v57 offset:2816
	ds_load_u16_d16 v21, v57 offset:3072
	ds_load_u16_d16 v22, v57 offset:3328
	ds_load_u16_d16 v23, v57 offset:3584
	ds_load_u16_d16 v24, v57 offset:3840
	ds_load_u16_d16 v151, v57 offset:4096
	ds_load_u16_d16 v152, v57 offset:4352
	ds_load_u16_d16 v153, v57 offset:4608
	ds_load_u16_d16 v154, v57 offset:4864
	ds_load_u16_d16 v155, v57 offset:5120
	ds_load_u16_d16 v156, v57 offset:5376
	ds_load_u16_d16 v157, v57 offset:5632
	ds_load_u16_d16 v158, v57 offset:5888
	ds_load_u16_d16 v159, v57 offset:6144
	ds_load_u16_d16 v160, v57 offset:6400
	ds_load_u16_d16 v161, v57 offset:6656
	ds_load_u16_d16 v162, v57 offset:6912
	ds_load_u16_d16 v163, v57 offset:7168
	ds_load_u16_d16 v164, v57 offset:7424
	ds_load_u16_d16 v165, v57 offset:7680
	ds_load_u16_d16 v166, v57 offset:7936
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v132, v124, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v134, v125, s81, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v9, v57 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v10, v57 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v11, v57 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v57 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v57 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v57 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v57 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v57 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v57 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v57 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v57 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v57 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v57 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v57 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v57 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v57 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v151, v57 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v152, v57 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v153, v57 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v154, v57 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v155, v57 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v156, v57 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v157, v57 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v158, v57 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v159, v57 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v160, v57 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v161, v57 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v162, v57 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v163, v57 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v164, v57 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v165, v57 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v166, v57 offset:8064
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v120
.Ltmp83:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v121.h, 0x7fff, v121.h, s28
	v_cndmask_b16 v111.h, 0x7fff, v110.h, s38
	v_cndmask_b16 v110.h, 0x7fff, v144.h, s40
	v_permlanex16_b32 v137, v136, s81, 0xfedcba98 op_sel:[1,0]
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v108, v123, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v139, v138, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v141, v140, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v143, v142, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v129, v131, v122, v99
	v_perm_b32 v130, v131, v122, v101
	v_perm_b32 v131, v132, v124, v99
	v_perm_b32 v132, v132, v124, v101
	v_perm_b32 v133, v134, v125, v99
	v_perm_b32 v134, v134, v125, v101
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[112:119], v[1:8]
.Ltmp86:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v27, v120, v26
.Ltmp87:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v25, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v144, v121, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v146, v111, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v148, v110, s81, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v150, v109, s81, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v137, v136, v99
	v_perm_b32 v136, v137, v136, v101
	v_perm_b32 v137, v139, v138, v99
	v_perm_b32 v138, v139, v138, v101
	v_perm_b32 v139, v141, v140, v99
	v_perm_b32 v140, v141, v140, v101
	v_perm_b32 v141, v143, v142, v99
	v_perm_b32 v142, v143, v142, v101
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[127:134], v[1:8]
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v143, v144, v121, v99
	v_perm_b32 v144, v144, v121, v101
	v_perm_b32 v145, v146, v111, v99
	v_perm_b32 v146, v146, v111, v101
	v_perm_b32 v147, v148, v110, v99
	v_perm_b32 v148, v148, v110, v101
	v_perm_b32 v149, v150, v109, v99
	v_perm_b32 v150, v150, v109, v101
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v9, 0, v25, s1
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[151:158], v[135:142], v[1:8]
	v_mov_b32_e32 v25, v107
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s59, s59, 64
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v27, v126, v9
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[159:166], v[143:150], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s59, s76
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v10, v48
	s_branch .LBB0_8
.LBB0_7:
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v104, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v27, v8
.LBB0_8:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	s_mov_b32 s1, 0x76543210
.Ltmp88:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp89:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s47, s47, s3
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v104 :: v_dual_cndmask_b32 v12, 0, v27
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v47
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s45, 2
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_nc_u32 v10, 0, v10
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp93:
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s46, s47
.Ltmp94:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp95:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v2, 0, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v11
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v2 :: v_dual_and_b32 v11, 12, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v11, 0, v11
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v13, v12
.Ltmp101:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp102:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_add_f32 v2, v2, v16
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v14, v14, v14 :: v_dual_mov_b32 v15, v1
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v14
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v15
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp111:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v4 :: v_dual_mov_b32 v4, v2
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_mov_b32 v14, v1
	v_dual_cndmask_b32 v12, 0, v5 :: v_dual_cndmask_b32 v13, 0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v8, vcc_lo
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v14 :: v_dual_cndmask_b32 v14, 0, v7
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v18, v13 :: v_dual_add_f32 v3, v3, v17
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v3, v5
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v4 :: v_dual_add_f32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v7, v9 :: v_dual_add_f32 v4, v4, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v3, v10
	v_dual_mov_b32 v6, v4 :: v_dual_max_f32 v9, v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v8, v8, v9 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v7, v10, v3 :: v_dual_mov_b32 v20, v15
.Ltmp127:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v16, v11
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v2, v5
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v20
	v_add_f32_e32 v13, v13, v18
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v9, v7
.Ltmp134:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v15 :: v_dual_mov_b32 v19, v14
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v2, v1
.Ltmp137:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v5, v3
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v16, v15, v20 :: v_dual_mov_b32 v17, v12
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v15, v11
	v_add_f32_e32 v13, v13, v18
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v19, v14
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v12
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp153:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v14, v19
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v11
	v_mov_b32_e32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_10
; %bb.9:
.Ltmp156:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp157:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp159:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp160:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp161:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_10:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp162:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp163:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v3, 0xc0, v43
.Ltmp164:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v44
.Ltmp165:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v44
	v_lshlrev_b32_e32 v2, 5, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v3
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp166:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp167:
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
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
.Ltmp168:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 192
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 192
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11072
; TotalNumSgprs: 84
; NumVgprs: 192
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 192
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
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
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
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
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     192
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
