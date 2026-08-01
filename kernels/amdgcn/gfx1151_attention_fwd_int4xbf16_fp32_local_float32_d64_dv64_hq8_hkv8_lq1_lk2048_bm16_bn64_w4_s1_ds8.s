	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s55, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x7c
	s_load_b32 s19, s[0:1], 0x84
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v45, 0x60, v0
	v_lshlrev_b32_e32 v40, 2, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v43, 31, v0
	v_and_b32_e32 v39, 0x70, v0
	v_and_b32_e32 v44, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v41, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v42, 1, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s55
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s55
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	v_readfirstlane_b32 s4, v1
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 7, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v3, 2, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s55
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s18, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s18, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v4, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v6
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[4:5], null, v4, s42, v[3:4]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s55
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v4, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v4, 2, v45
	buffer_load_b32 v3, v3, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v4, v40, v4, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s17, s19
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s2, s2, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, s18
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s4, s19, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s5, 16
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s2, s8
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s5, 0x800
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s4, s4, s18
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s6, s54, s2
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s4, s4, 0
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s6, s6, 6
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s5, s5, s7
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s6, s2
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s72, s6, s4
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s73, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s72, s73
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v4, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v3, s18, v44
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v4, s12, v44, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v10, 4, v39
	v_and_b32_e32 v17, 16, v0
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v3
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v135, 0xff800000 :: v_dual_lshlrev_b32 v8, 3, v43
	v_dual_mov_b32 v18, 0x5410 :: v_dual_lshlrev_b32 v29, 4, v42
	.loc	1 779 31                        ; attention.py:779:31
	v_dual_cndmask_b32 v3, 0x80000000, v4 :: v_dual_and_b32 v4, 24, v41
	v_and_b32_e32 v6, 24, v0
	v_lshl_or_b32 v15, v0, 5, v0
	v_dual_mov_b32 v137, 0xff800000 :: v_dual_lshlrev_b32 v16, 6, v42
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v20, s18, v10
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v21, v44, 5, v4
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_cmp_eq_u32_e64 s2, 0, v17
	buffer_load_u16 v9, v3, s[56:59], 0 offen
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_lshlrev_b32 v3, 3, v1
	v_mov_b32_e32 v1, 0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v5, 0, v45
	v_bfe_i32 v14, v0, 6, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_lshl_or_b32 v54, v44, 8, v8
	s_add_i32 s1, s3, s0
	v_and_or_b32 v55, 0x39e, v15, v16
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[30:31], null, s43, v2, v[3:4]
	v_cndmask_b32_e64 v15, 0x1054, v18, s2
	v_mov_b32_e32 v2, v1
	v_lshl_add_u32 v56, v44, 1, v5
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v18, s19, v20
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v16, 8, v20
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 1, v20
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v20, 8, v21
	v_dual_mov_b32 v19, 0x7632 :: v_dual_lshlrev_b32 v46, 2, v44
	v_dual_mov_b32 v4, v1 :: v_dual_lshlrev_b32 v47, 4, v0
	v_lshlrev_b32_e32 v7, 3, v44
	v_dual_mov_b32 v8, v1 :: v_dual_lshlrev_b32 v13, 2, v43
	v_and_b32_e32 v14, 0x84, v14
	v_xor_b32_e32 v23, 16, v21
	v_add_nc_u32_e32 v57, 0, v21
	v_xor_b32_e32 v21, 24, v21
	v_xor_b32_e32 v31, 56, v54
	v_xor_b32_e32 v32, 64, v54
	v_xor_b32_e32 v33, 0x48, v54
	v_xor_b32_e32 v34, 0x50, v54
	v_xor_b32_e32 v35, 0x58, v54
	v_xor_b32_e32 v36, 0x60, v54
	v_xor_b32_e32 v37, 0x68, v54
	v_xor_b32_e32 v38, 0x70, v54
	v_add_nc_u32_e32 v89, 0, v20
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v11, 4, v0
	v_lshrrev_b32_e32 v12, 1, v39
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v3
	v_xor_b32_e32 v51, v47, v6
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v6, v1
	v_lshl_or_b32 v22, v39, 4, v7
	v_dual_mov_b32 v7, v1 :: v_dual_add_nc_u32 v90, 0, v23
	v_xor_b32_e32 v13, v14, v13
	v_cndmask_b32_e64 v19, 0x3276, v19, s2
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v91, 0, v21
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s74, s3, 11
	v_add_nc_u32_e32 v102, 0, v31
	v_add_nc_u32_e32 v103, 0, v32
	v_add_nc_u32_e32 v104, 0, v33
	v_add_nc_u32_e32 v105, 0, v34
	v_add_nc_u32_e32 v106, 0, v35
	v_add_nc_u32_e32 v107, 0, v36
	v_add_nc_u32_e32 v108, 0, v37
	v_add_nc_u32_e32 v109, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[31:32], v57
	ds_load_b64 v[33:34], v89
	ds_load_b64 v[35:36], v90
	ds_load_b64 v[37:38], v91
	v_and_or_b32 v52, v11, 1, s74
	v_or3_b32 v53, s74, v11, 62
	v_xor_b32_e32 v70, v22, v12
	v_xor_b32_e32 v12, 8, v54
	v_and_or_b32 v94, v11, 2, v13
	v_and_b32_e32 v11, 0x540054, v15
	v_lshl_or_b32 v13, v19, 8, v19
	v_mul_lo_u32 v10, s15, v10
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v96, 0, v12
	v_xor_b32_e32 v14, 4, v55
	v_xor_b32_e32 v12, 0x210, v94
	v_lshl_or_b32 v11, v11, 4, v11
	v_and_b32_e32 v13, 0x760076, v13
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v48, 1, v46
	v_or_b32_e32 v49, 2, v46
	v_or_b32_e32 v50, 3, v46
	v_xor_b32_e32 v24, 8, v51
	v_xor_b32_e32 v22, 16, v54
	v_xor_b32_e32 v25, 24, v54
	v_xor_b32_e32 v26, 32, v54
	v_xor_b32_e32 v27, 40, v54
	v_xor_b32_e32 v28, 48, v54
	v_xor_b32_e32 v110, 0x78, v54
	v_xor_b32_e32 v112, 8, v55
	v_xor_b32_e32 v113, 12, v55
	v_xor_b32_e32 v114, 16, v55
	v_xor_b32_e32 v115, 20, v55
	v_xor_b32_e32 v116, 24, v55
	v_xor_b32_e32 v117, 28, v55
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v119, s19, v16
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v16
	v_xor_b32_e32 v16, 0x840, v70
	v_add_nc_u32_e32 v111, 0, v14
	v_xor_b32_e32 v14, 0x108, v94
	v_xor_b32_e32 v15, 0x318, v94
	v_and_b32_e32 v121, 0x5040504, v11
	v_lshl_or_b32 v11, v13, 4, v13
	v_add_nc_u32_e32 v122, 0, v12
	v_lshl_add_u32 v12, s15, 3, v10
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v125, v10, v46
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s12, s12, 0x3fb8aa3b
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	v_or_b32_e32 v58, 2, v52
	v_or_b32_e32 v59, 4, v52
	v_or_b32_e32 v60, 6, v52
	v_or_b32_e32 v61, 8, v52
	v_or_b32_e32 v62, 10, v52
	v_or_b32_e32 v63, 12, v52
	v_or_b32_e32 v64, 14, v52
	v_or_b32_e32 v65, 16, v52
	v_or_b32_e32 v66, 18, v52
	v_or_b32_e32 v67, 20, v52
	v_or_b32_e32 v68, 22, v52
	v_or_b32_e32 v69, 24, v52
	v_or_b32_e32 v71, 26, v52
	v_or_b32_e32 v72, 28, v52
	v_or_b32_e32 v73, 30, v52
	v_or_b32_e32 v74, 32, v52
	v_or_b32_e32 v75, 34, v52
	v_or_b32_e32 v76, 36, v52
	v_or_b32_e32 v77, 38, v52
	v_or_b32_e32 v78, 40, v52
	v_or_b32_e32 v79, 42, v52
	v_or_b32_e32 v80, 44, v52
	v_or_b32_e32 v81, 46, v52
	v_or_b32_e32 v82, 48, v52
	v_or_b32_e32 v83, 50, v52
	v_or_b32_e32 v84, 52, v52
	v_or_b32_e32 v85, 54, v52
	v_or_b32_e32 v86, 56, v52
	v_or_b32_e32 v87, 58, v52
	v_or_b32_e32 v88, 60, v52
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v92, s16, v18
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v93, s17, v18
	v_add_nc_u32_e32 v95, 0, v24
	v_add_nc_u32_e32 v97, 0, v22
	v_add_nc_u32_e32 v98, 0, v25
	v_add_nc_u32_e32 v99, 0, v26
	v_add_nc_u32_e32 v101, 0, v28
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v114, 0, v114
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v116, 0, v116
	v_add_nc_u32_e32 v117, 0, v117
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v118, s16, v119
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v119, s17, v119
	v_add_nc_u32_e32 v120, 0, v16
	v_add_nc_u32_e32 v123, 0, v14
	v_add_nc_u32_e32 v124, 0, v15
	v_and_b32_e32 v126, 0x7060706, v11
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v127, v12, v46
	v_add_nc_u32_e32 v128, v12, v48
	v_add_nc_u32_e32 v129, v12, v49
	v_add_nc_u32_e32 v130, v12, v50
	v_add_nc_u32_e32 v131, 1, v125
	v_add_nc_u32_e32 v132, 2, v125
	v_add_nc_u32_e32 v134, 3, v125
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s18, s18, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s79, s8, s9
	s_lshl_b32 s75, s43, 4
	s_lshl_b32 s76, s43, 5
	s_mul_i32 s77, s43, 48
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s78, 0x76543210
	s_mov_b32 s66, s58
	s_mov_b32 s67, s59
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s70, s58
	s_mov_b32 s71, s59
	s_and_b32 s61, s61, 0xffff
	s_and_b32 s69, s7, 0xffff
	s_mov_b32 s64, s10
	s_mov_b32 s68, s6
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s65, s11
	s_add_i32 s79, s79, s18
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v29
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v133, s12, v9 :: v_dual_add_nc_u32 v100, 0, v27
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v19, 1, v0
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s20, s72, s74
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_add_nc_u32 v18, 0, v51
	v_dual_mov_b32 v10, s45 :: v_dual_mov_b32 v11, s46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v19, s20, v19
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v12, s47 :: v_dual_mov_b32 v13, s48
	v_dual_mov_b32 v14, s49 :: v_dual_mov_b32 v15, s50
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[19:20], null, v19, s42, v[29:30]
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v16, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v173, s72, v46
	v_or_b32_e32 v175, s72, v49
	v_or_b32_e32 v174, s72, v48
	v_or_b32_e32 v178, s72, v50
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s16, s79, s72
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s4, v173, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v173, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v175, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v175, v93
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[19:22], v19, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v173, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v173, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s8, v174, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v174, v93
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v173, s16, v130, 2
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v178, v93
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v174, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s11, v174, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v175, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s15, v175, v119
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v178, v118
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s19, v178, v119
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s4, s4, s6
	s_and_b32 s6, s12, s14
	s_and_b32 s8, s8, s10
	s_and_b32 s12, s5, s7
	s_and_b32 s5, s1, s4
	s_and_b32 s6, s1, s6
	s_and_b32 s11, s9, s11
	s_and_b32 s9, s13, s15
	s_and_b32 s13, s17, s19
	s_and_b32 s4, s1, s8
	s_and_b32 s8, s2, s12
	s_and_b32 s9, s2, s9
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v142, s72, v52, 1
	v_add_lshl_u32 v143, v58, s72, 1
	v_add_lshl_u32 v144, v59, s72, 1
	v_add_lshl_u32 v145, v60, s72, 1
	v_add_lshl_u32 v146, v61, s72, 1
	v_add_lshl_u32 v147, v62, s72, 1
	v_add_lshl_u32 v148, v63, s72, 1
	v_add_lshl_u32 v149, v64, s72, 1
	v_add_lshl_u32 v150, v65, s72, 1
	v_add_lshl_u32 v151, v66, s72, 1
	v_add_lshl_u32 v152, v67, s72, 1
	v_add_lshl_u32 v153, v68, s72, 1
	v_add_lshl_u32 v154, v69, s72, 1
	v_add_lshl_u32 v155, v71, s72, 1
	v_add_lshl_u32 v156, v72, s72, 1
	v_add_lshl_u32 v176, v73, s72, 1
	v_add_lshl_u32 v177, v74, s72, 1
	v_add_lshl_u32 v180, v75, s72, 1
	v_add_lshl_u32 v183, v76, s72, 1
	v_add_lshl_u32 v191, v77, s72, 1
	v_add_lshl_u32 v192, v78, s72, 1
	v_add_lshl_u32 v193, v79, s72, 1
	v_add_lshl_u32 v194, v80, s72, 1
	v_add_lshl_u32 v195, v81, s72, 1
	v_add_lshl_u32 v220, v82, s72, 1
	v_add_lshl_u32 v221, v83, s72, 1
	v_add_lshl_u32 v222, v84, s72, 1
	v_add_lshl_u32 v223, v85, s72, 1
	v_add_lshl_u32 v224, v86, s72, 1
	v_add_lshl_u32 v225, v87, s72, 1
	v_add_lshl_u32 v226, v88, s72, 1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v136, v136, v136
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v135
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v18, v[19:20]
	ds_store_b64 v95, v[21:22]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[138:141], v57 offset1:1
	ds_load_2addr_stride64_b64 v[157:160], v57 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[161:164], v89 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[138:139], v[31:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[140:141], v[31:32], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[157:158], v[31:32], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[159:160], v[31:32], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v89 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v90 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[161:162], v[33:34], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[163:164], v[33:34], v[196:203] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[9:10], v[33:34], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[11:12], v[33:34], v[212:219] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v90 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[35:36], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[15:16], v[35:36], v[196:203] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v91 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[9:10], v[35:36], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[11:12], v[35:36], v[212:219] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v91 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[18:25], v[13:14], v[37:38], v[18:25] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[196:203], v[15:16], v[37:38], v[196:203] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v13, s16, v127, 2
	v_add_lshl_u32 v14, s16, v128, 2
	v_add_lshl_u32 v16, s16, v129, 2
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v15, 0, v70
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v169, v196
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v13, 0x80000000, v13, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v164, v197
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v16, 0x80000000, v16, s9
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v163, v198
	v_cvt_f32_i32_e32 v162, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v198, s72, v53, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v227, v18
	v_cvt_f32_i32_e32 v170, v19
	v_cvt_f32_i32_e32 v172, v20
	v_cvt_f32_i32_e32 v171, v21
	v_cvt_f32_i32_e32 v165, v22
	v_cvt_f32_i32_e32 v166, v23
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[204:211], v[9:10], v[37:38], v[204:211] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[212:219], v[11:12], v[37:38], v[212:219] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v9, s16, v125, 2
	v_add_lshl_u32 v10, s16, v131, 2
	v_add_lshl_u32 v11, s16, v132, 2
	v_add_lshl_u32 v12, s16, v134, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v178, v92
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0x80000000, v9, s5
	v_cndmask_b32_e64 v10, 0x80000000, v10, s4
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v167, v24
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s16, s18
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v168, v25
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s1, s10
	s_and_b32 s10, s2, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s7
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s2, s13
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v14, 0x80000000, v14, s10
	v_cndmask_b32_e64 v173, 0x80000000, v173, s11
	s_clause 0x7
	buffer_load_b32 v9, v9, s[60:63], 0 offen
	buffer_load_b32 v11, v11, s[60:63], 0 offen
	buffer_load_b32 v12, v12, s[60:63], 0 offen
	buffer_load_b32 v13, v13, s[60:63], 0 offen
	buffer_load_b32 v173, v173, s[60:63], 0 offen
	buffer_load_b32 v174, v14, s[60:63], 0 offen
	buffer_load_b32 v14, v10, s[60:63], 0 offen
	buffer_load_b32 v16, v16, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v157, v200
	v_cvt_f32_i32_e32 v158, v201
	v_cvt_f32_i32_e32 v161, v204
	v_cvt_f32_i32_e32 v159, v202
	v_cvt_f32_i32_e32 v160, v203
	v_cvt_f32_i32_e32 v141, v205
	v_cvt_f32_i32_e32 v140, v206
	v_cvt_f32_i32_e32 v139, v207
	v_cvt_f32_i32_e32 v25, v208
	v_cvt_f32_i32_e32 v27, v210
	v_cvt_f32_i32_e32 v28, v211
	v_cvt_f32_i32_e32 v138, v212
	v_cvt_f32_i32_e32 v26, v209
	v_cvt_f32_i32_e32 v18, v213
	v_cvt_f32_i32_e32 v19, v214
	v_cvt_f32_i32_e32 v20, v215
	v_cvt_f32_i32_e32 v21, v216
	v_cvt_f32_i32_e32 v23, v218
	v_cvt_f32_i32_e32 v22, v217
	v_cvt_f32_i32_e32 v24, v219
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s72, s72, 64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v133, v163
	v_mul_f32_e32 v141, v133, v141
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v9, 0xff800000, v9, s5
	s_waitcnt vmcnt(6)
	v_cndmask_b32_e64 v10, 0xff800000, v11, s6
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v12, 0xff800000, v12, s7
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v13, 0xff800000, v13, s8
	s_waitcnt vmcnt(3)
	v_cndmask_b32_e64 v197, 0xff800000, v173, s11
	s_waitcnt vmcnt(2)
	v_cndmask_b32_e64 v196, 0xff800000, v174, s10
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v199, v142, s[64:67], 0 offen
	buffer_load_u16 v178, v143, s[64:67], 0 offen
	buffer_load_u16 v190, v144, s[64:67], 0 offen
	buffer_load_u16 v189, v145, s[64:67], 0 offen
	buffer_load_u16 v184, v146, s[64:67], 0 offen
	buffer_load_u16 v185, v147, s[64:67], 0 offen
	buffer_load_u16 v186, v148, s[64:67], 0 offen
	buffer_load_u16 v187, v149, s[64:67], 0 offen
	buffer_load_u16 v188, v150, s[64:67], 0 offen
	buffer_load_u16 v182, v151, s[64:67], 0 offen
	buffer_load_u16 v181, v152, s[64:67], 0 offen
	buffer_load_u16 v179, v153, s[64:67], 0 offen
	buffer_load_u16 v173, v154, s[64:67], 0 offen
	buffer_load_u16 v174, v155, s[64:67], 0 offen
	buffer_load_u16 v175, v156, s[64:67], 0 offen
	buffer_load_u16 v176, v176, s[64:67], 0 offen
	buffer_load_u16 v177, v177, s[64:67], 0 offen
	buffer_load_u16 v156, v180, s[64:67], 0 offen
	buffer_load_u16 v155, v183, s[64:67], 0 offen
	buffer_load_u16 v154, v191, s[64:67], 0 offen
	buffer_load_u16 v149, v192, s[64:67], 0 offen
	buffer_load_u16 v150, v193, s[64:67], 0 offen
	buffer_load_u16 v151, v194, s[64:67], 0 offen
	buffer_load_u16 v152, v195, s[64:67], 0 offen
	buffer_load_u16 v153, v220, s[64:67], 0 offen
	buffer_load_u16 v142, v221, s[64:67], 0 offen
	buffer_load_u16 v143, v222, s[64:67], 0 offen
	buffer_load_u16 v144, v223, s[64:67], 0 offen
	buffer_load_u16 v145, v224, s[64:67], 0 offen
	buffer_load_u16 v146, v225, s[64:67], 0 offen
	buffer_load_u16 v147, v226, s[64:67], 0 offen
	buffer_load_u16 v148, v198, s[64:67], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(33)
	v_cndmask_b32_e64 v11, 0xff800000, v14, s4
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v14, 0xff800000, v16, s9
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v16, 0, v54
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v15, v[9:10], v[11:12] offset1:16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v9
	v_cmp_neq_f32_e64 s14, 0xff800000, v10
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v120, v[13:14], v[196:197] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[9:10], v16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v11
	v_cmp_neq_f32_e64 s15, 0xff800000, v12
	v_cmp_neq_f32_e64 s16, 0xff800000, v13
	v_cmp_neq_f32_e64 s18, 0xff800000, v14
	v_cmp_neq_f32_e64 s17, 0xff800000, v196
	v_cmp_neq_f32_e64 s19, 0xff800000, v197
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[11:12], v96
	ds_load_b64 v[13:14], v97
	ds_load_b64 v[196:197], v98
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v180, v133, v227 :: v_dual_add_nc_u32 v195, 0, v94
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v194, 0, v55
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, v133, v164
	v_mul_f32_e32 v162, v133, v162
	v_mul_f32_e32 v157, v133, v157
	v_mul_f32_e32 v140, v133, v140
	v_mul_f32_e32 v27, v133, v27
	v_mul_f32_e32 v26, v133, v26
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s13, s5, s13
	s_and_b32 s5, s6, s14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v18, v133, v18
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v192, 0x3fb8aa3b, v9 :: v_dual_mul_f32 v191, 0x3fb8aa3b, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v9, v133, v170
	v_mov_b32_e32 v170, v17
	v_mul_f32_e32 v17, v133, v167
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v193, 0x3fb8aa3b, v11
	v_mul_f32_e32 v11, 0x3fb8aa3b, v12
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v13, 0x3fb8aa3b, v13
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v19, v133, v19
	v_mul_f32_e32 v23, v133, v23
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s7, s15
	s_and_b32 s7, s8, s16
	s_and_b32 s8, s9, s18
	s_and_b32 s4, s4, s12
	s_and_b32 s9, s10, s17
	s_and_b32 s10, s11, s19
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s72, s73
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v183, 16, v199
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v10, 16, v178
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v178, 0, v47
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v12, 16, v189
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v192, v180, v183 :: v_dual_fmac_f32 v191, v9, v10
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v9, v133, v172 :: v_dual_lshlrev_b32 v10, 16, v190
	s_waitcnt vmcnt(25)
	v_dual_mov_b32 v183, v137 :: v_dual_lshlrev_b32 v172, 16, v186
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.h, 0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v193, v9, v10
	v_mad_u64_u32 v[9:10], null, s20, s43, v[30:31]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v133, v171
	v_mul_f32_e32 v171, v133, v169
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v175, 16, v175
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v176, 16, v176
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v177, 16, v177
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v11, v10, v12 :: v_dual_mul_f32 v10, v133, v165
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v133, v166
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v166, 16, v184
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v165, v133, v168 :: v_dual_lshlrev_b32 v186, 16, v187
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v168, 16, v185
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[184:185], v101
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v13, v10, v166
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[166:167], v99
	v_mul_f32_e32 v10, 0x3fb8aa3b, v14
	s_waitcnt vmcnt(13) lgkmcnt(2)
	v_dual_mul_f32 v14, 0x3fb8aa3b, v196 :: v_dual_lshlrev_b32 v155, 16, v155
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v139, v133, v139 :: v_dual_lshlrev_b32 v154, 16, v154
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v10, v12, v168
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[168:169], v100
	v_mul_f32_e32 v12, 0x3fb8aa3b, v197
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v14, v17, v172 :: v_dual_lshlrev_b32 v197, 16, v153
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v137.h, v180.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v12, v165, v186
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[186:187], v102
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v196, v133, v161
	v_mul_f32_e32 v190, v133, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.h, v180.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v161, 0x3fb8aa3b, v184 :: v_dual_mul_f32 v160, 0x3fb8aa3b, v185
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v172, 0x3fb8aa3b, v166 :: v_dual_mul_f32 v17, 0x3fb8aa3b, v167
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v188, 16, v188
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[184:185], v104
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.h, v180.h
	v_mov_b16_e64 v167.h, v180.h
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v172, v171, v188 :: v_dual_lshlrev_b32 v171, 16, v182
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v182, v133, v159
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[188:189], v105
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v17, v164, v171
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v171, 16, v181
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v181, 0x3fb8aa3b, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.h, v180.h
	v_mov_b16_e64 v168.h, v180.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v181, v163, v171
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v171, 0x3fb8aa3b, v169
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v169.h, v180.h
	v_mov_b16_e64 v163.h, v180.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v171, v162, v179
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v179, v133, v158 :: v_dual_lshlrev_b32 v158, 16, v173
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v173, 16, v174
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v174, 0x3fb8aa3b, v186
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.h, v180.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v161, v157, v158
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[158:159], v103
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v160, v179, v173 :: v_dual_mul_f32 v173, 0x3fb8aa3b, v187
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[186:187], v106
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(3)
	v_dual_fmac_f32 v174, v182, v175 :: v_dual_mul_f32 v179, 0x3fb8aa3b, v184
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v156, 16, v156
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v173, v190, v176 :: v_dual_lshlrev_b32 v182, 1, v9
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v25, v133, v25 :: v_dual_lshlrev_b32 v184, 16, v151
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v179, v140, v155 :: v_dual_mul_f32 v190, v133, v28
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v133, v138
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v28, 16, v149
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v149, 0x3fb8aa3b, v188
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v188, v9, s77, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v157.h, v180.h
	v_mov_b16_e64 v140.h, v180.h
	v_mov_b16_e64 v155.h, v180.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v175, 0x3fb8aa3b, v158 :: v_dual_mul_f32 v176, 0x3fb8aa3b, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v180.h
	v_mov_b16_e64 v159.h, v180.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v175, v196, v177 :: v_dual_fmac_f32 v176, v141, v156
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v177, 0x3fb8aa3b, v185 :: v_dual_lshlrev_b32 v196, 16, v152
	ds_load_b64 v[151:152], v107
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v141.h, v180.h
	v_mov_b16_e64 v156.h, v180.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v177, v139, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v139, 16, v150
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v149, v25, v28 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v189
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[153:154], v108
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v25, v9, s75, 1
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v28, v26, v139
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v139, 0x3fb8aa3b, v187 :: v_dual_mul_f32 v150, 0x3fb8aa3b, v186
	ds_load_b64 v[186:187], v110
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v26, v9, s76, 1
	v_cndmask_b32_e64 v9, 0x80000000, v182, s0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v139, v190, v196
	v_fmac_f32_e32 v150, v27, v184
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[184:185], v109
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v151, 0x3fb8aa3b, v151
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v27, 0x80000000, v25, s0
	v_cndmask_b32_e64 v25, 0x80000000, v188, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v182, v133, v20
	v_mul_f32_e32 v188, v133, v21
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v151, v138, v197 :: v_dual_max_f32 v138, v183, v183
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v20, 16, v142
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v21, 16, v143
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v142, 16, v144
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v143, 16, v145
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v144, 16, v146
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v145, 16, v147
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v147, 0, 1, s5
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v22, v133, v22 :: v_dual_mul_f32 v189, 0x3fb8aa3b, v153
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_dual_mul_f32 v199, 0x3fb8aa3b, v186 :: v_dual_lshlrev_b32 v146, 16, v148
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v24, v133, v24
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v197, 0x3fb8aa3b, v184
	v_dual_mul_f32 v196, 0x3fb8aa3b, v152 :: v_dual_fmac_f32 v189, v19, v21
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v21, 0, 1, s6
	v_cndmask_b32_e64 v148, 0, 1, s4
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v197, v188, v143 :: v_dual_fmac_f32 v196, v18, v20
	v_fmac_f32_e32 v199, v23, v145
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v20, 0, 1, s13
	v_mov_b16_e64 v18.l, v147.l
	v_cndmask_b32_e64 v152, 0, 1, s8
	v_cndmask_b32_e64 v147, 0, 1, s7
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v19.l, v20.l
	v_lshlrev_b16 v18.l, 8, v18.l
	v_mov_b16_e64 v20.l, v148.l
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v198, 0x3fb8aa3b, v185
	v_mul_f32_e32 v200, 0x3fb8aa3b, v187
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v18.l, v19.l, v18.l
	v_mov_b16_e32 v19.l, v21.l
	v_cndmask_b32_e64 v21, 0, 1, s10
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v198, v22, v144
	v_fmac_f32_e32 v200, v24, v146
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v26, 0x80000000, v26, s0
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v18.h, 8, v19.l
	v_mov_b16_e64 v19.l, v152.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v18.h, v20.l, v18.h
	v_mov_b16_e64 v20.l, v147.l
	v_lshlrev_b16 v19.l, 8, v19.l
	v_cndmask_b32_e64 v147, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v19.l, v20.l, v19.l
	v_mov_b16_e32 v20.l, v21.l
	v_mov_b16_e64 v21.l, v147.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v19.h, 8, v20.l
	v_or_b16 v19.h, v21.l, v19.h
	ds_store_b16 v195, v18
	ds_store_b16_d16_hi v122, v18
	ds_store_b16 v123, v19
	ds_store_b16_d16_hi v124, v19
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v18, v194 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v18, v194
	ds_load_u16_d16 v19, v111
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v19, v111 offset:32
	ds_load_u16_d16 v20, v112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v112 offset:32
	ds_load_u16_d16 v21, v113
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v21, v113 offset:32
	ds_load_u16_d16 v22, v114
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v22, v114 offset:32
	ds_load_u16_d16 v23, v115
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v23, v115 offset:32
	ds_load_u16_d16 v24, v116
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v24, v116 offset:32
	ds_load_u16_d16 v137, v117
	ds_load_u16_d16 v140, v117 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v141.l, 1, v18.l
	v_lshrrev_b16 v18.l, 8, v18.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s7, 1, v141.l
	v_and_b16 v141.l, 1, v19.l
	v_lshrrev_b16 v19.l, 8, v19.l
	v_and_b16 v18.l, 1, v18.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s17, 1, v141.l
	v_and_b16 v141.l, 1, v19.h
	v_lshrrev_b16 v19.h, 8, v19.h
	v_and_b16 v19.l, 1, v19.l
	v_cmp_eq_u16_e64 s33, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v144, 0xff800000, v193, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s8, 1, v141.l
	v_and_b16 v141.l, 1, v20.l
	v_lshrrev_b16 v20.l, 8, v20.l
	v_and_b16 v19.h, 1, v19.h
	v_cmp_eq_u16_e64 s24, 1, v19.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v179, s8
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v141.l
	v_and_b16 v141.l, 1, v20.h
	v_lshrrev_b16 v20.h, 8, v20.h
	v_and_b16 v20.l, 1, v20.l
	v_cmp_eq_u16_e64 s34, 1, v19.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v13, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s9, 1, v141.l
	v_and_b16 v141.l, 1, v21.l
	v_lshrrev_b16 v21.l, 8, v21.l
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s25, 1, v20.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v145, 0xff800000, v11, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v141.l
	v_and_b16 v141.l, 1, v21.h
	v_lshrrev_b16 v21.h, 8, v21.h
	v_and_b16 v21.l, 1, v21.l
	v_cmp_eq_u16_e64 s35, 1, v20.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v10, s25
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v141.l
	v_and_b16 v141.l, 1, v22.l
	v_lshrrev_b16 v22.l, 8, v22.l
	v_and_b16 v21.h, 1, v21.h
	v_cmp_eq_u16_e64 s26, 1, v21.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v149, s9
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v141.l
	v_and_b16 v141.l, 1, v22.h
	v_lshrrev_b16 v22.h, 8, v22.h
	v_and_b16 v22.l, 1, v22.l
	v_cmp_eq_u16_e64 s36, 1, v21.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v172, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s11, 1, v141.l
	v_and_b16 v141.l, 1, v23.l
	v_lshrrev_b16 v23.l, 8, v23.l
	v_and_b16 v22.h, 1, v22.h
	v_cmp_eq_u16_e64 s27, 1, v22.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v150, 0xff800000, v150, s10
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v141.l
	v_and_b16 v141.l, 1, v23.h
	v_lshrrev_b16 v23.h, 8, v23.h
	v_and_b16 v23.l, 1, v23.l
	v_cmp_eq_u16_e64 s37, 1, v22.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v181, 0xff800000, v181, s16
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v141.l
	v_and_b16 v141.l, 1, v24.l
	v_lshrrev_b16 v24.l, 8, v24.l
	v_and_b16 v23.h, 1, v23.h
	v_cmp_eq_u16_e64 s28, 1, v23.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v17, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v141.l
	v_and_b16 v141.l, 1, v24.h
	v_and_b16 v24.l, 1, v24.l
	v_lshrrev_b16 v24.h, 8, v24.h
	v_cmp_eq_u16_e64 s38, 1, v23.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, 0xff800000, v161, s18
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s14, 1, v141.l
	v_and_b16 v141.l, 1, v137.l
	v_lshrrev_b16 v137.l, 8, v137.l
	v_cmp_eq_u16_e64 s29, 1, v24.l
	v_and_b16 v24.h, 1, v24.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v190, 0xff800000, v151, s11
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s20, 1, v141.l
	v_and_b16 v141.l, 1, v140.l
	v_lshrrev_b16 v140.l, 8, v140.l
	v_and_b16 v137.l, 1, v137.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v185, 0xff800000, v160, s29
	v_cndmask_b32_e64 v172, 0xff800000, v174, s20
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s15, 1, v141.l
	v_and_b16 v141.l, 1, v18.h
	v_lshrrev_b16 v18.h, 8, v18.h
	v_and_b16 v140.l, 1, v140.l
	v_cmp_eq_u16_e64 s30, 1, v137.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, 0xff800000, v175, s7
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v141.l
	v_and_b16 v18.h, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v176, s33
	v_cndmask_b32_e64 v173, 0xff800000, v173, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s40, 1, v140.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v177, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s31, 1, v18.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, 0xff800000, v139, s36
	v_cndmask_b32_e64 v148, 0xff800000, v14, s21
	v_cndmask_b32_e64 v149, 0xff800000, v12, s26
	v_cndmask_b32_e64 v194, 0xff800000, v197, s14
	v_cndmask_b32_e64 v143, 0xff800000, v191, s31
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v154, 0x3fb8aa3b, v154
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v196, s37
	v_cndmask_b32_e64 v160, 0xff800000, v199, s15
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s39, 1, v24.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v200, s40
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v154, v182, v142
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, 0xff800000, v192, s23
	v_cndmask_b32_e64 v182, 0xff800000, v171, s28
	v_cndmask_b32_e64 v192, 0xff800000, v189, s12
	v_cndmask_b32_e64 v189, 0xff800000, v28, s35
	v_cndmask_b32_e64 v193, 0xff800000, v154, s38
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v18, v184, v185, v172
	v_max3_f32 v17, v153, v181, v182
	v_max3_f32 v19, v173, v174, v175
	v_max_f32_e32 v23, v142, v143
	v_max3_f32 v24, v145, v146, v147
	v_max3_f32 v21, v186, v187, v188
	v_max3_f32 v22, v189, v150, v151
	v_max3_f32 v28, v190, v191, v192
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v195, 0xff800000, v198, s39
	ds_store_b64 v16, v[142:143]
	ds_store_b64 v96, v[144:145]
	ds_store_b64 v97, v[146:147]
	ds_store_b64 v98, v[148:149]
	ds_store_b64 v99, v[152:153]
	ds_store_b64 v100, v[181:182]
	ds_store_b64 v101, v[184:185]
	ds_store_b64 v102, v[172:173]
	ds_store_b64 v103, v[174:175]
	ds_store_b64 v104, v[186:187]
	ds_store_b64 v105, v[188:189]
	ds_store_b64 v106, v[150:151]
	ds_store_b64 v107, v[190:191]
	ds_store_b64 v108, v[192:193]
	ds_store_b64 v109, v[194:195]
	ds_store_b64 v110, v[160:161]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v139, v193, v194 :: v_dual_max_f32 v154, v160, v161
	v_max3_f32 v171, v148, v149, v152
	v_max3_f32 v176, v17, v18, v19
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[17:20], v27, s[68:71], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v27, v23, v144, v24
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[9:12], v9, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v177, v21, v22, v28
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[21:24], v26, s[68:71], 0 offen
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v139, v195, v154
	v_max3_f32 v154, v27, v171, v176
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[25:28], v25, s[68:71], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[13:16], v15 offset1:16
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v154, v177, v139
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	ds_store_b128 v178, v[9:12]
	ds_store_b128 v178, v[17:20] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v178, v[21:24] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v178, v[25:28] offset:6144
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v154, v139, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v171, v15, v15
.Ltmp15:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v135, v139, v154
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v154, v13, v13 :: v_dual_sub_f32 v177, v184, v139
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v184, v188, v139
	v_sub_f32_e32 v188, v192, v139
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v192, v135, v139
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v143, v143, v139
	v_sub_f32_e32 v151, v151, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v188, v188
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v192, v192
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v143
	v_exp_f32_e32 v151, v151
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v145, v145, v139
	v_sub_f32_e32 v147, v147, v139
	v_sub_f32_e32 v160, v160, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v177, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v192, 0, v192, s41
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v154, v154, v171
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v144, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s31
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v171, v181, v139 :: v_dual_mul_f32 v2, v2, v192
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v192
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v154, v154, v14, v16
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v192
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v143, v144
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v135.h
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v144, v154
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v186, v139
	v_dual_sub_f32 v179, v185, v139 :: v_dual_mul_f32 v4, v4, v192
	v_sub_f32_e32 v186, v190, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v144, v144 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v139
	v_dual_sub_f32 v142, v142, v139 :: v_dual_mul_f32 v5, v5, v192
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v186, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v144, v144, v144 :: v_dual_sub_f32 v185, v189, v139
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v189, v193, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v193, 0, v151, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v168.l, v177.h
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v144, v154, v144
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v154, 1, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v176, v182, v139
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v186, s11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v182, v187, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v142, v142
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v194, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v143, s17
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v141.l, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v174, v174, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v147, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v181, s8
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v190, v190
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v141, 1, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s23
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v157.l, v181.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v172, v172, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v165.l, v143.h
	v_mov_b16_e64 v137.l, v142.h
	v_and_b32_e32 v157, 1, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v172, v172
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v146, v146, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v174, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v148, v148, v139 :: v_dual_and_b32 v137, 1, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v146, v146
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v162.l, v174.h
	v_mov_b16_e64 v180.l, v145.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v172, 0, v172, s20
	v_cndmask_b32_e64 v147, 0, v147, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v162, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v189, v189
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v142, v137, 0x7fff
	v_mov_b16_e64 v169.l, v172.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v187, v191, v139
	v_sub_f32_e32 v191, v195, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s19
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v149, 0, v149, s26
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v187
	v_exp_f32_e32 v191, v191
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v166.l, v146.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v152, v152, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v135, v135
	v_add3_u32 v135, v135, v154, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s15
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v146, v146
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v171, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s18, v145, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v186, 0, v187, s37
	v_cndmask_b32_e64 v187, 0, v188, s12
	v_cndmask_b32_e64 v188, 0, v189, s38
	v_cndmask_b32_e64 v189, 0, v190, s14
	v_cndmask_b32_e64 v190, 0, v191, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v142, v142
	v_mov_b16_e64 v140.l, v187.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v161, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v143, v143
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.l, 0x7fff, v137.h, s12
	v_and_b32_e32 v140, 1, v140
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v163.l, v171.h
	v_mov_b16_e64 v155.l, v189.h
	v_cmp_o_f32_e64 s38, v187, v187
	v_add3_u32 v140, v187, v140, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v173, v173, v139 :: v_dual_mul_f32 v6, v6, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v155, 1, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s27
	v_cndmask_b32_e64 v191, 0, v161, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v161, 1, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v165, 1, v166
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v152, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v151, v151
	v_add3_u32 v142, v143, v161, 0x7fff
	v_and_b32_e32 v161, 1, v180
	v_mov_b16_e64 v180.l, v147.h
	v_add3_u32 v143, v146, v165, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v141, v151, v141, 0x7fff
	v_add3_u32 v137, v145, v161, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v137.l, 0x7fff, v142.h, s14
	v_and_b32_e32 v142, 1, v180
	v_mov_b16_e64 v180.l, v149.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v150, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s22
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v167.l, v148.h
	v_cndmask_b16 v145.l, 0x7fff, v143.h, s15
	v_and_b32_e32 v143, 1, v180
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v164.l, v152.h
	v_and_b32_e32 v166, 1, v167
	v_and_b32_e32 v167, 1, v168
	v_and_b32_e32 v168, 1, v169
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v169, v144
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v164, 1, v164
	v_cmp_o_f32_e64 s16, v148, v148
	v_cmp_o_f32_e64 s17, v152, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s10
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v169, v169 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v163, 1, v163
	v_cmp_o_f32_e64 s22, v171, v171
	v_add3_u32 v146, v148, v166, 0x7fff
	v_mov_b16_e64 v159.l, v150.h
	v_add3_u32 v148, v152, v164, 0x7fff
	v_cndmask_b16 v135.h, 0x7fff, v135.h, s11
	v_cndmask_b16 v165.l, 0x7fff, v140.h, s38
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v140, v169, v169
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v152, v171, v163, 0x7fff
	v_add3_u32 v151, v189, v155, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v175, v175, v139 :: v_dual_mul_f32 v8, v8, v192
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v185, v185
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v176, 0, v176, s28
	v_cndmask_b32_e64 v184, 0, v184, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v159, 1, v159
	v_cndmask_b16 v151.l, 0x7fff, v152.h, s22
	v_cndmask_b16 v164.l, 0x7fff, v141.h, s37
	v_permlanex16_b32 v141, v135, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s18
	v_mov_b16_e64 v180.l, v153.h
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v152, v144, v140
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v179, 0, v179, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s19, v147, v147
	v_mov_b16_e64 v158.l, v184.h
	v_cndmask_b16 v148.l, 0x7fff, v146.h, s16
	v_add3_u32 v142, v147, v142, 0x7fff
	v_perm_b32 v140, v141, v135, v121
	v_perm_b32 v141, v141, v135, v126
	v_permlanex16_b32 v135, v137, s78, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v146, 1, v180
	v_mov_b16_e64 v180.l, v176.h
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v147, v152
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s30
	v_cndmask_b32_e64 v185, 0, v185, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v153, v153
	v_cmp_o_f32_e64 s35, v150, v150
	v_mov_b16_e64 v156.l, v160.h
	v_and_b32_e32 v158, 1, v158
	v_add3_u32 v150, v150, v159, 0x7fff
	v_cndmask_b16 v145.h, 0x7fff, v142.h, s19
	v_add3_u32 v144, v149, v143, 0x7fff
	v_perm_b32 v142, v135, v137, v121
	v_perm_b32 v143, v135, v137, v126
	v_add3_u32 v137, v153, v146, 0x7fff
	v_and_b32_e32 v146, 1, v180
	v_mov_b16_e64 v180.l, v179.h
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v147, v147 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v163, v172, v168, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v175, 0, v175, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v149, v149
	v_cmp_o_f32_e64 s23, v176, v176
	v_cmp_o_f32_e64 s33, v184, v184
	v_cmp_o_f32_e64 s39, v189, v189
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v153, v147, v147 :: v_dual_and_b32 v156, 1, v156
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v184, v158, 0x7fff
	v_cndmask_b16 v163.l, 0x7fff, v150.h, s35
	v_cndmask_b16 v150.h, 0x7fff, v137.h, s21
	v_add3_u32 v137, v176, v146, 0x7fff
	v_and_b32_e32 v149, 1, v180
	v_mov_b16_e64 v180.l, v173.h
	v_cmp_o_f32_e64 s24, v177, v177
	v_cmp_o_f32_e64 s25, v179, v179
	v_add3_u32 v154, v177, v167, 0x7fff
	v_add3_u32 v155, v160, v156, 0x7fff
	v_cndmask_b16 v161.l, 0x7fff, v158.h, s33
	v_cndmask_b16 v166.l, 0x7fff, v151.h, s39
	v_cndmask_b16 v151.h, 0x7fff, v137.h, s23
	v_add3_u32 v137, v179, v149, 0x7fff
	v_and_b32_e32 v156, 1, v180
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v158, v152, v153
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v154.l, 0x7fff, v154.h, s24
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v182, v182
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v154.h, 0x7fff, v137.h, s25
	v_add3_u32 v137, v173, v156, 0x7fff
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v156, v158
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v150.l, 0x7fff, v148.h, s17
	v_permlanex16_b32 v135, v145, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v148.h, 0x7fff, v144.h, s20
	v_mov_b16_e64 v180.l, v175.h
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v172, v172
	v_perm_b32 v144, v135, v145, v121
	v_perm_b32 v145, v135, v145, v126
	v_permlanex16_b32 v135, v148, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v156, v156, v156
.Ltmp51:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v182, 0, v182, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v173, v173
	v_cmp_o_f32_e64 s40, v160, v160
	v_perm_b32 v146, v135, v148, v121
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v158, v158, v156
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v147, v135, v148, v126
	v_permlanex16_b32 v135, v150, s78, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v152, 1, v180
	v_mov_b16_e64 v180.l, v182.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v136, v136, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s28, v174, v174
	v_perm_b32 v148, v135, v150, v121
	v_perm_b32 v149, v135, v150, v126
	v_permlanex16_b32 v135, v151, s78, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v13, v136
	v_sub_f32_e32 v15, v15, v136
	v_sub_f32_e32 v14, v14, v136
	v_sub_f32_e32 v16, v16, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v175, v175
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	v_exp_f32_e32 v15, v15
	v_exp_f32_e32 v14, v14
	v_exp_f32_e32 v16, v16
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v181, v181
	v_add3_u32 v162, v174, v162, 0x7fff
	v_add3_u32 v157, v181, v157, 0x7fff
	v_cndmask_b16 v155.l, 0x7fff, v163.h, s26
	v_cndmask_b16 v167.l, 0x7fff, v155.h, s40
	v_perm_b32 v150, v135, v151, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s13
	v_cndmask_b32_e64 v15, 0, v15, s4
	v_cndmask_b32_e64 v14, 0, v14, s5
	v_cndmask_b32_e64 v16, 0, v16, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v151, v135, v151, v126
	v_permlanex16_b32 v135, v154, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v13, v13, v15
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v155.h, 0x7fff, v137.h, s27
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v14, v14, v16
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v137, v175, v152, 0x7fff
	v_and_b32_e32 v160, 1, v180
	v_mov_b16_e64 v180.l, v185.h
	v_cmp_o_f32_e64 s31, v182, v182
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v13, v13, v14
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v157.l, 0x7fff, v162.h, s28
	v_cndmask_b16 v159.l, 0x7fff, v157.h, s30
	v_perm_b32 v152, v135, v154, v121
	v_perm_b32 v153, v135, v154, v126
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v14, v13
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v135, v155, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v157.h, 0x7fff, v137.h, s29
	v_add3_u32 v137, v182, v160, 0x7fff
	v_and_b32_e32 v160, 1, v180
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v180.l, v193.h
	v_cmp_o_f32_e64 s34, v185, v185
	v_perm_b32 v154, v135, v155, v121
	v_perm_b32 v155, v135, v155, v126
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v13, v13, v14
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v135, v157, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v159.h, 0x7fff, v137.h, s31
	v_add3_u32 v137, v185, v160, 0x7fff
	v_and_b32_e32 v160, 1, v180
	v_mov_b16_e64 v180.l, v186.h
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v14, v13
.Ltmp67:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v193, v193
	v_perm_b32 v156, v135, v157, v121
	v_perm_b32 v157, v135, v157, v126
	v_permlanex16_b32 v135, v159, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v161.h, 0x7fff, v137.h, s34
	v_add3_u32 v160, v193, v160, 0x7fff
	v_and_b32_e32 v162, 1, v180
	v_mov_b16_e64 v180.l, v188.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v137, v138, v158
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v186, v186
	v_perm_b32 v158, v135, v159, v121
	v_perm_b32 v159, v135, v159, v126
	v_permlanex16_b32 v135, v161, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v163.h, 0x7fff, v160.h, s36
	v_add3_u32 v138, v186, v162, 0x7fff
	v_and_b32_e32 v162, 1, v180
	v_mov_b16_e64 v180.l, v190.h
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v160, v183, v137 :: v_dual_add_f32 v13, v13, v14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v188, v188
	v_cndmask_b16 v164.h, 0x7fff, v138.h, s10
	v_add3_u32 v138, v188, v162, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v168, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v160, v135, v161, v121
	v_perm_b32 v161, v135, v161, v126
	v_permlanex16_b32 v135, v163, s78, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v169, 1, v180
	v_mov_b16_e64 v180.l, v191.h
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v14, v13
.Ltmp71:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v190, v190
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v162, v135, v163, v121
	v_perm_b32 v163, v135, v163, v126
	v_cndmask_b16 v165.h, 0x7fff, v138.h, s9
	v_add3_u32 v135, v190, v169, 0x7fff
	v_and_b32_e32 v138, 1, v180
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp73:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v192
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v191, v191
	v_cndmask_b16 v166.h, 0x7fff, v135.h, s8
	v_add3_u32 v135, v191, v138, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v138, 0, v168, s11
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v168, v13, v14
.Ltmp75:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v9, v56
	ds_load_u16_d16 v10, v56 offset:256
	ds_load_u16_d16 v11, v56 offset:512
	ds_load_u16_d16 v12, v56 offset:768
	ds_load_u16_d16 v13, v56 offset:1024
	ds_load_u16_d16 v14, v56 offset:1280
	ds_load_u16_d16 v15, v56 offset:1536
	ds_load_u16_d16 v16, v56 offset:1792
	ds_load_u16_d16 v17, v56 offset:2048
	ds_load_u16_d16 v18, v56 offset:2304
	ds_load_u16_d16 v19, v56 offset:2560
	ds_load_u16_d16 v20, v56 offset:2816
	ds_load_u16_d16 v21, v56 offset:3072
	ds_load_u16_d16 v22, v56 offset:3328
	ds_load_u16_d16 v23, v56 offset:3584
	ds_load_u16_d16 v24, v56 offset:3840
	ds_load_u16_d16 v179, v56 offset:4096
	ds_load_u16_d16 v180, v56 offset:4352
	ds_load_u16_d16 v181, v56 offset:4608
	ds_load_u16_d16 v182, v56 offset:4864
	ds_load_u16_d16 v183, v56 offset:5120
	ds_load_u16_d16 v184, v56 offset:5376
	ds_load_u16_d16 v185, v56 offset:5632
	ds_load_u16_d16 v186, v56 offset:5888
	ds_load_u16_d16 v187, v56 offset:6144
	ds_load_u16_d16 v188, v56 offset:6400
	ds_load_u16_d16 v189, v56 offset:6656
	ds_load_u16_d16 v190, v56 offset:6912
	ds_load_u16_d16 v191, v56 offset:7168
	ds_load_u16_d16 v192, v56 offset:7424
	ds_load_u16_d16 v193, v56 offset:7680
	ds_load_u16_d16 v194, v56 offset:7936
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v9, v56 offset:128
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v10, v56 offset:384
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v11, v56 offset:640
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v12, v56 offset:896
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v13, v56 offset:1152
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v14, v56 offset:1408
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v15, v56 offset:1664
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v16, v56 offset:1920
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v17, v56 offset:2176
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v18, v56 offset:2432
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v19, v56 offset:2688
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v20, v56 offset:2944
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v21, v56 offset:3200
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v22, v56 offset:3456
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v23, v56 offset:3712
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v24, v56 offset:3968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v179, v56 offset:4224
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v180, v56 offset:4480
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v181, v56 offset:4736
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v182, v56 offset:4992
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v183, v56 offset:5248
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v184, v56 offset:5504
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v185, v56 offset:5760
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v186, v56 offset:6016
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v187, v56 offset:6272
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v188, v56 offset:6528
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v189, v56 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v190, v56 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v191, v56 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v192, v56 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v193, v56 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v194, v56 offset:8064
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v172, v164, s78, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v167.h, 0x7fff, v135.h, s7
.Ltmp76:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v168
.Ltmp77:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[140:147], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v25, v166, s78, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v171, v172, v164, v121
	v_perm_b32 v172, v172, v164, v126
	v_permlanex16_b32 v164, v165, s78, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v167, s78, 0xfedcba98 op_sel:[1,0]
.Ltmp78:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[148:155], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v175, v25, v166, v121
	v_perm_b32 v173, v164, v165, v121
	v_perm_b32 v174, v164, v165, v126
	v_perm_b32 v176, v25, v166, v126
	v_perm_b32 v177, v9, v167, v121
	v_perm_b32 v178, v9, v167, v126
.Ltmp80:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v168, v26
.Ltmp81:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[179:186], v[156:163], v[1:8]
	v_mov_b32_e32 v135, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v17, v170, v138
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[187:194], v[171:178], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v137, v137
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v10, 0xff800000, v9
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v9, 0, v17
	s_branch .LBB0_5
.Ltmp84:
.LBB0_4:
	.loc	2 0 12 is_stmt 0                ; standard.py:0:12
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v10, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v9, v8
.LBB0_5:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	s_mov_b32 s0, 0x76543210
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v12, 3, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp86:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v10, 0xff800000, v10 :: v_dual_cndmask_b32 v9, 0, v9
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v44
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s55, s55, s3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v14, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp90:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v12
.Ltmp91:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v43
.Ltmp92:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v13, 12, v40
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v9, v9, v14
.Ltmp95:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s54, s55
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_add_nc_u32 v11, 0, v13
.Ltmp97:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v12, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v9
.Ltmp100:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp102:
	.loc	1 1036 13 is_stmt 1             ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp104:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v16, 0, v4
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_cndmask_b32 v17, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v12 :: v_dual_mov_b32 v11, v1
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp108:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v10
.Ltmp109:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_mov_b32 v13, v3
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp115:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v20, v8
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v13
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v9
.Ltmp118:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v11
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
.Ltmp121:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_add_f32 v1, v1, v12
.Ltmp123:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v13, v1 :: v_dual_mov_b32 v14, v16
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp129:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v14, v16, v14
.Ltmp133:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v15
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v17
	v_dual_mov_b32 v3, v1 :: v_dual_add_f32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp138:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v6, v5
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v7
	v_dual_mov_b32 v16, v14 :: v_dual_add_f32 v15, v17, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v19, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v15, v13
	v_dual_add_f32 v18, v7, v19 :: v_dual_add_f32 v19, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v14, v16 :: v_dual_mov_b32 v16, v13
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v22, v18 :: v_dual_mov_b32 v23, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v18, v22 :: v_dual_add_f32 v14, v17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v17, v19, v23
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_7
; %bb.6:
.Ltmp147:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp148:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp150:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp151:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp152:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_7:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp153:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v8 :: v_dual_add_f32 v6, v5, v6
.Ltmp154:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xc0, v40
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v5, v2, v4 :: v_dual_add_f32 v4, v1, v3
.Ltmp156:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v41
	v_lshlrev_b32_e32 v2, 5, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v39, 1, 0
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v17, v20 :: v_dual_add_f32 v11, v15, v19
	v_dual_add_f32 v10, v14, v18 :: v_dual_add_f32 v9, v13, v16
.Ltmp158:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v3, v2, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v13, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v13
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v13
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp159:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 228
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 228
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11056
; TotalNumSgprs: 82
; NumVgprs: 228
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 82
; NumVGPRsForWavesPerEU: 228
; Occupancy: 6
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
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
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
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     228
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
