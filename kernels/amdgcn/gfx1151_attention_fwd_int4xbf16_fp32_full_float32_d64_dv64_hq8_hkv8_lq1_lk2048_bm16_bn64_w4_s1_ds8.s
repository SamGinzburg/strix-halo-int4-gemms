	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v9, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v47, 0x60, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v45, 31, v0
	v_and_b32_e32 v41, 0x70, v0
	v_and_b32_e32 v46, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v43, 1, v0
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v44, 1, v0
	s_mov_b32 s44, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v42, 2, v0
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
	v_lshlrev_b32_e32 v1, 2, v9
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v1
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s4, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s4, s5
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
	s_lshl_b32 s16, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s55
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s16, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s16, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s54, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 1, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, v3, s42, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s55, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s55
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s4, s4
	s_ashr_i32 s8, s8, 31
	s_mul_hi_u32 s6, s4, s6
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v2, 2, v47
	buffer_load_b32 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v2, v42, v2, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s8
	s_sub_i32 s2, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s54, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s72, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s72, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s73, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s72, s73
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s16, v46
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v2, s12, v46, 1
	v_bfe_i32 v18, v0, 6, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	v_dual_mov_b32 v22, 0x5410 :: v_dual_lshlrev_b32 v11, 2, v46
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, 1, v1
	v_dual_mov_b32 v136, 0xff800000 :: v_dual_lshlrev_b32 v5, 4, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v4, 24, v43
	v_dual_mov_b32 v159, 0xff800000 :: v_dual_and_b32 v6, 24, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v2, 0x78, v0
	v_lshl_or_b32 v19, v0, 5, v0
	v_lshlrev_b32_e32 v24, 4, v9
	v_bfe_i32 v25, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v28, v46, 5, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v13, 4, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_dual_mov_b32 v23, 0x7632 :: v_dual_lshlrev_b32 v30, 4, v44
	buffer_load_u16 v10, v1, s[56:59], 0 offen
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v21, 16, v0
	v_lshlrev_b32_e32 v16, 2, v45
	v_lshlrev_b32_e32 v20, 6, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v31, 0x84, v18
	v_cmp_eq_u32_e64 s2, 0, v21
	v_dual_mov_b32 v17, 0xff800000 :: v_dual_lshlrev_b32 v12, 3, v9
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v27, 1, v2
	v_lshrrev_b32_e32 v14, 4, v0
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_lshlrev_b32_e32 v8, 3, v45
	v_xor_b32_e32 v51, v5, v6
	v_and_or_b32 v55, 0x39e, v19, v20
	v_cndmask_b32_e64 v19, 0x1054, v22, s2
	v_xor_b32_e32 v20, v24, v2
	v_lshl_or_b32 v21, v47, 6, v24
	v_and_or_b32 v22, 0x410, v25, v47
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v16, v31, v16
	s_lshr_b32 s0, s0, 29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v26, s16, v13
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s74, s3, 11
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v12
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[31:32], null, s43, v27, v[12:13]
	v_cndmask_b32_e64 v12, 0x3276, v23, s2
	v_sub_nc_u32_e32 v50, 0x800, v3
	v_or_b32_e32 v52, s74, v3
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v54, v46, 8, v8
	v_lshl_or_b32 v60, v9, 10, v20
	v_xor_b32_e32 v20, v22, v21
	v_and_or_b32 v89, v14, 2, v16
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v25, 8, v28
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v24, 8, v26
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 1, v26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v26, 16, v28
	v_add_nc_u32_e32 v56, 0, v28
	v_xor_b32_e32 v28, 24, v28
	v_xor_b32_e32 v33, 8, v51
	v_lshl_or_b32 v12, v12, 8, v12
	v_xor_b32_e32 v34, 24, v54
	v_xor_b32_e32 v35, 32, v54
	v_xor_b32_e32 v36, 40, v54
	v_xor_b32_e32 v37, 48, v54
	v_xor_b32_e32 v38, 56, v54
	v_xor_b32_e32 v39, 64, v54
	v_xor_b32_e32 v40, 0x48, v54
	v_lshl_or_b32 v90, v9, 7, v20
	v_xor_b32_e32 v9, 0x210, v89
	v_add_nc_u32_e32 v86, 0, v25
	v_dual_mov_b32 v2, v1 :: v_dual_lshlrev_b32 v7, 3, v46
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v87, 0, v26
	v_add_nc_u32_e32 v88, 0, v28
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v91, 0, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[32:33], null, s15, v13, v[11:12]
	v_add_nc_u32_e32 v94, 0, v34
	v_add_nc_u32_e32 v96, 0, v36
	v_add_nc_u32_e32 v97, 0, v37
	v_add_nc_u32_e32 v98, 0, v38
	v_add_nc_u32_e32 v99, 0, v39
	v_add_nc_u32_e32 v100, 0, v40
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s12, s12, 0x3fb8aa3b
	v_add_nc_u32_e32 v123, 0, v9
	v_lshrrev_b32_e32 v15, 1, v41
	v_lshl_or_b32 v29, v41, 4, v7
	v_lshl_or_b32 v19, v19, 8, v19
	v_or3_b32 v53, s74, v14, 62
	v_and_b32_e32 v12, 0x760076, v12
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v49, 0x800, v11
	v_xor_b32_e32 v59, v29, v15
	v_xor_b32_e32 v15, 8, v54
	v_xor_b32_e32 v29, 16, v54
	v_and_b32_e32 v14, 0x540054, v19
	v_sub_nc_u32_e32 v57, 0x800, v27
	v_xor_b32_e32 v101, 0x50, v54
	v_xor_b32_e32 v102, 0x58, v54
	v_xor_b32_e32 v103, 0x60, v54
	v_xor_b32_e32 v104, 0x68, v54
	v_xor_b32_e32 v105, 0x70, v54
	v_xor_b32_e32 v106, 0x78, v54
	v_xor_b32_e32 v107, 4, v55
	v_xor_b32_e32 v108, 8, v55
	v_xor_b32_e32 v109, 12, v55
	v_xor_b32_e32 v110, 16, v55
	v_xor_b32_e32 v111, 20, v55
	v_xor_b32_e32 v112, 24, v55
	v_xor_b32_e32 v113, 28, v55
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 1, v24
	v_xor_b32_e32 v21, 0x840, v59
	v_xor_b32_e32 v16, 0x90, v60
	v_xor_b32_e32 v19, 0x120, v60
	v_xor_b32_e32 v22, 0x1b0, v60
	v_xor_b32_e32 v23, 0x240, v60
	v_xor_b32_e32 v24, 0x2d0, v60
	v_xor_b32_e32 v25, 0x360, v60
	v_xor_b32_e32 v26, 0x3f0, v60
	v_add_nc_u32_e32 v92, 0, v15
	v_add_nc_u32_e32 v93, 0, v29
	v_xor_b32_e32 v11, 0x108, v89
	v_xor_b32_e32 v13, 0x318, v89
	v_lshl_or_b32 v14, v14, 4, v14
	v_xor_b32_e32 v15, 16, v90
	v_xor_b32_e32 v20, 32, v90
	v_xor_b32_e32 v27, 48, v90
	v_xor_b32_e32 v28, 64, v90
	v_xor_b32_e32 v29, 0x50, v90
	v_xor_b32_e32 v131, 0x60, v90
	v_xor_b32_e32 v132, 0x70, v90
	v_lshl_or_b32 v12, v12, 4, v12
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v48, 1, v0
	v_mov_b32_e32 v7, v1
	v_or_b32_e32 v58, 10, v52
	v_or_b32_e32 v61, 12, v52
	v_or_b32_e32 v62, 14, v52
	v_or_b32_e32 v63, 16, v52
	v_or_b32_e32 v64, 18, v52
	v_or_b32_e32 v65, 20, v52
	v_or_b32_e32 v66, 22, v52
	v_or_b32_e32 v67, 24, v52
	v_or_b32_e32 v68, 26, v52
	v_or_b32_e32 v69, 28, v52
	v_or_b32_e32 v70, 30, v52
	v_or_b32_e32 v71, 32, v52
	v_or_b32_e32 v72, 34, v52
	v_or_b32_e32 v73, 36, v52
	v_or_b32_e32 v74, 38, v52
	v_or_b32_e32 v75, 40, v52
	v_or_b32_e32 v76, 42, v52
	v_or_b32_e32 v77, 44, v52
	v_or_b32_e32 v78, 46, v52
	v_or_b32_e32 v79, 48, v52
	v_or_b32_e32 v80, 50, v52
	v_or_b32_e32 v81, 52, v52
	v_or_b32_e32 v82, 54, v52
	v_or_b32_e32 v83, 56, v52
	v_or_b32_e32 v84, 58, v52
	v_or_b32_e32 v85, 60, v52
	v_add_nc_u32_e32 v101, 0, v101
	v_add_nc_u32_e32 v102, 0, v102
	v_add_nc_u32_e32 v103, 0, v103
	v_add_nc_u32_e32 v104, 0, v104
	v_add_nc_u32_e32 v105, 0, v105
	v_add_nc_u32_e32 v106, 0, v106
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v108, 0, v108
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v110, 0, v110
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v112, 0, v112
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v114, 0, v21
	v_add_nc_u32_e32 v115, 0, v16
	v_add_nc_u32_e32 v116, 0, v19
	v_add_nc_u32_e32 v117, 0, v22
	v_add_nc_u32_e32 v118, 0, v23
	v_add_nc_u32_e32 v119, 0, v24
	v_add_nc_u32_e32 v120, 0, v25
	v_add_nc_u32_e32 v121, 0, v26
	v_and_b32_e32 v122, 0x5040504, v14
	v_add_nc_u32_e32 v124, 0, v11
	v_add_nc_u32_e32 v125, 0, v13
	v_add_nc_u32_e32 v126, 0, v15
	v_add_nc_u32_e32 v127, 0, v20
	v_add_nc_u32_e32 v128, 0, v27
	v_add_nc_u32_e32 v129, 0, v28
	v_add_nc_u32_e32 v130, 0, v29
	v_add_nc_u32_e32 v131, 0, v131
	v_add_nc_u32_e32 v132, 0, v132
	v_and_b32_e32 v133, 0x7060706, v12
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v135, s15, 3, v32
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s16, s16, s15
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s78, s8, s9
	s_lshl_b32 s75, s43, 1
	s_mul_i32 s76, s43, 3
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s77, 0x76543210
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
	s_add_i32 s78, s78, s16
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e32 vcc_lo, s42, v30
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v10
	v_add_nc_u32_e32 v95, 0, v35
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[33:34], v56
	ds_load_b64 v[35:36], v86
	ds_load_b64 v[37:38], v87
	ds_load_b64 v[39:40], v88
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v134, s12, v9
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s15, s72, s74
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v20, 0x800, v48
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v22, s15, v48
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s4, s72, v49
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s5, s78, s72
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v21, 0, v51
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s7, s72, v20
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[22:23], null, v22, s42, v[30:31]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v24, s5, v135, 2
	v_add_lshl_u32 v25, s5, v32, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s7, vcc_lo, s7
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s5, s2, s4
	s_and_b32 s4, s1, s4
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v193, 0x80000000, v24, s5
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v20, 0x80000000, v22, s7
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v28, 0x80000000, v25, s4
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v9, s44 :: v_dual_mov_b32 v12, s47
	v_mov_b32_e32 v10, s45
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[22:25], v20, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v11, s46 :: v_dual_mov_b32 v14, s49
	v_dual_mov_b32 v13, s48 :: v_dual_mov_b32 v16, s51
	v_mov_b32_e32 v15, s50
	v_or_b32_e32 v158, 2, v52
	v_or_b32_e32 v160, 4, v52
	v_or_b32_e32 v161, 6, v52
	v_or_b32_e32 v162, 8, v52
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v19, s72, v52, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s6, s72, v50
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v158, v158, s72, 1
	v_add_lshl_u32 v160, v160, s72, 1
	v_add_lshl_u32 v161, v161, s72, 1
	v_add_lshl_u32 v163, v58, s72, 1
	v_add_lshl_u32 v164, v61, s72, 1
	v_add_lshl_u32 v165, v62, s72, 1
	v_add_lshl_u32 v166, v63, s72, 1
	v_add_lshl_u32 v167, v64, s72, 1
	v_add_lshl_u32 v168, v65, s72, 1
	v_add_lshl_u32 v169, v66, s72, 1
	v_add_lshl_u32 v170, v67, s72, 1
	v_add_lshl_u32 v171, v68, s72, 1
	v_add_lshl_u32 v172, v69, s72, 1
	v_add_lshl_u32 v173, v70, s72, 1
	v_add_lshl_u32 v174, v71, s72, 1
	v_add_lshl_u32 v162, v162, s72, 1
	v_add_lshl_u32 v175, v72, s72, 1
	v_add_lshl_u32 v192, v73, s72, 1
	v_add_lshl_u32 v195, v74, s72, 1
	v_add_lshl_u32 v196, v75, s72, 1
	v_add_lshl_u32 v197, v76, s72, 1
	v_add_lshl_u32 v198, v77, s72, 1
	v_add_lshl_u32 v199, v78, s72, 1
	v_add_lshl_u32 v200, v79, s72, 1
	v_add_lshl_u32 v201, v80, s72, 1
	v_add_lshl_u32 v202, v81, s72, 1
	v_add_lshl_u32 v203, v82, s72, 1
	v_add_lshl_u32 v204, v83, s72, 1
	v_add_lshl_u32 v205, v84, s72, 1
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	v_cndmask_b32_e64 v158, 0x80000000, v158, s6
	v_cndmask_b32_e64 v160, 0x80000000, v160, s6
	v_cndmask_b32_e64 v161, 0x80000000, v161, s6
	v_cndmask_b32_e64 v163, 0x80000000, v163, s6
	v_cndmask_b32_e64 v164, 0x80000000, v164, s6
	v_cndmask_b32_e64 v165, 0x80000000, v165, s6
	v_cndmask_b32_e64 v166, 0x80000000, v166, s6
	v_cndmask_b32_e64 v167, 0x80000000, v167, s6
	v_cndmask_b32_e64 v168, 0x80000000, v168, s6
	v_cndmask_b32_e64 v169, 0x80000000, v169, s6
	v_cndmask_b32_e64 v170, 0x80000000, v170, s6
	v_cndmask_b32_e64 v171, 0x80000000, v171, s6
	v_cndmask_b32_e64 v172, 0x80000000, v172, s6
	v_cndmask_b32_e64 v173, 0x80000000, v173, s6
	v_cndmask_b32_e64 v174, 0x80000000, v174, s6
	v_cndmask_b32_e64 v162, 0x80000000, v162, s6
	v_cndmask_b32_e64 v207, 0x80000000, v175, s6
	v_cndmask_b32_e64 v208, 0x80000000, v192, s6
	v_cndmask_b32_e64 v195, 0x80000000, v195, s6
	v_cndmask_b32_e64 v196, 0x80000000, v196, s6
	v_cndmask_b32_e64 v197, 0x80000000, v197, s6
	v_cndmask_b32_e64 v198, 0x80000000, v198, s6
	v_cndmask_b32_e64 v199, 0x80000000, v199, s6
	v_cndmask_b32_e64 v200, 0x80000000, v200, s6
	v_cndmask_b32_e64 v201, 0x80000000, v201, s6
	v_cndmask_b32_e64 v202, 0x80000000, v202, s6
	v_cndmask_b32_e64 v203, 0x80000000, v203, s6
	v_cndmask_b32_e64 v204, 0x80000000, v204, s6
	v_cndmask_b32_e64 v205, 0x80000000, v205, s6
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s14, s72, v57
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s41, 0xff800000, v17
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v21, v[22:23]
	ds_store_b64 v91, v[24:25]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[145:148], v56 offset1:1
	ds_load_2addr_stride64_b64 v[149:152], v56 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[153:156], v86 offset1:1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s0, s14
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[145:146], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[147:148], v[33:34], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[149:150], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[151:152], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v86 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[13:16], v87 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[153:154], v[35:36], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[155:156], v[35:36], v[139:146] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[9:10], v[35:36], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[11:12], v[35:36], v[184:191] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v87 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[13:14], v[37:38], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[15:16], v[37:38], v[139:146] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[13:16], v88 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[9:10], v[37:38], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[11:12], v[37:38], v[184:191] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[9:12], v88 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[20:27], v[13:14], v[39:40], v[20:27] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[139:146], v[15:16], v[39:40], v[139:146] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[13:16], v28, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v206, v20
	v_cvt_f32_i32_e32 v137, v21
	v_cvt_f32_i32_e32 v150, v22
	v_cvt_f32_i32_e32 v157, v23
	v_cvt_f32_i32_e32 v154, v26
	v_cvt_f32_i32_e32 v155, v27
	v_cvt_f32_i32_e32 v156, v139
	v_cvt_f32_i32_e32 v151, v140
	v_cvt_f32_i32_e32 v149, v141
	v_cvt_f32_i32_e32 v148, v142
	v_cvt_f32_i32_e32 v152, v24
	v_cvt_f32_i32_e32 v153, v25
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v159, v159, v159
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v137, v134, v137
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[176:183], v[9:10], v[39:40], v[176:183] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[184:191], v[11:12], v[39:40], v[184:191] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[9:12], v193, s[60:63], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v147, v176
	v_cvt_f32_i32_e32 v142, v177
	v_cvt_f32_i32_e32 v141, v178
	v_cvt_f32_i32_e32 v140, v179
	v_cvt_f32_i32_e32 v27, v180
	v_cvt_f32_i32_e32 v28, v181
	v_cvt_f32_i32_e32 v29, v182
	v_cvt_f32_i32_e32 v138, v183
	v_cvt_f32_i32_e32 v139, v184
	v_cvt_f32_i32_e32 v20, v185
	v_cvt_f32_i32_e32 v21, v186
	v_cvt_f32_i32_e32 v22, v187
	v_cvt_f32_i32_e32 v23, v188
	v_cvt_f32_i32_e32 v26, v191
	v_cvt_f32_i32_e32 v24, v189
	v_cvt_f32_i32_e32 v25, v190
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v146, v146
	v_mul_f32_e32 v147, v134, v147
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v190, 0xff800000, v16, s4
	v_cndmask_b32_e64 v189, 0xff800000, v14, s4
	v_cndmask_b32_e64 v14, 0xff800000, v15, s4
	v_cndmask_b32_e64 v13, 0xff800000, v13, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v15, 0, v59
	v_add_nc_u32_e32 v16, 0, v54
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v190
	v_cmp_neq_f32_e64 s8, 0xff800000, v14
	v_cmp_neq_f32_e64 s7, 0xff800000, v13
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v194, 0xff800000, v12, s5
	v_cndmask_b32_e64 v193, 0xff800000, v10, s5
	v_cndmask_b32_e64 v10, 0xff800000, v11, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v11, v85, s72, 1
	v_add_lshl_u32 v12, s72, v53, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v9, 0xff800000, v9, s5
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v193
	v_cmp_neq_f32_e64 s12, 0xff800000, v10
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v11, 0x80000000, v11, s6
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	s_clause 0x1f
	buffer_load_u16 v19, v19, s[64:67], 0 offen
	buffer_load_u16 v192, v158, s[64:67], 0 offen
	buffer_load_u16 v191, v160, s[64:67], 0 offen
	buffer_load_u16 v188, v161, s[64:67], 0 offen
	buffer_load_u16 v183, v162, s[64:67], 0 offen
	buffer_load_u16 v184, v163, s[64:67], 0 offen
	buffer_load_u16 v185, v164, s[64:67], 0 offen
	buffer_load_u16 v186, v165, s[64:67], 0 offen
	buffer_load_u16 v187, v166, s[64:67], 0 offen
	buffer_load_u16 v182, v167, s[64:67], 0 offen
	buffer_load_u16 v181, v168, s[64:67], 0 offen
	buffer_load_u16 v180, v169, s[64:67], 0 offen
	buffer_load_u16 v175, v170, s[64:67], 0 offen
	buffer_load_u16 v176, v171, s[64:67], 0 offen
	buffer_load_u16 v177, v172, s[64:67], 0 offen
	buffer_load_u16 v178, v173, s[64:67], 0 offen
	buffer_load_u16 v179, v174, s[64:67], 0 offen
	buffer_load_u16 v174, v207, s[64:67], 0 offen
	buffer_load_u16 v173, v208, s[64:67], 0 offen
	buffer_load_u16 v172, v195, s[64:67], 0 offen
	buffer_load_u16 v167, v196, s[64:67], 0 offen
	buffer_load_u16 v168, v197, s[64:67], 0 offen
	buffer_load_u16 v169, v198, s[64:67], 0 offen
	buffer_load_u16 v170, v199, s[64:67], 0 offen
	buffer_load_u16 v171, v200, s[64:67], 0 offen
	buffer_load_u16 v160, v201, s[64:67], 0 offen
	buffer_load_u16 v161, v202, s[64:67], 0 offen
	buffer_load_u16 v162, v203, s[64:67], 0 offen
	buffer_load_u16 v163, v204, s[64:67], 0 offen
	buffer_load_u16 v164, v205, s[64:67], 0 offen
	buffer_load_u16 v165, v11, s[64:67], 0 offen
	buffer_load_u16 v166, v12, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v158, v134, v206
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v15, v[13:14], v[189:190] offset1:16
	ds_store_2addr_b64 v114, v[9:10], v[193:194] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v9
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[13:14], v92
	ds_load_b64 v[9:10], v93
	ds_load_b64 v[11:12], v94
	ds_load_b64 v[195:196], v16
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v150, v134, v150 :: v_dual_mov_b32 v193, v136
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v194
	v_cmp_neq_f32_e64 s6, 0xff800000, v189
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s11, s5, s11
	v_add_nc_u32_e32 v190, 0, v55
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s72, s72, 64
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(30) lgkmcnt(3)
	v_dual_mul_f32 v13, 0x3fb8aa3b, v13 :: v_dual_lshlrev_b32 v192, 16, v192
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v191, 16, v191
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v136, 16, v188
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v188, 0x3fb8aa3b, v14
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v14, v134, v152
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v152, 16, v183
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v13, v150, v191
	v_mov_b32_e32 v191, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v18, v134, v157
	v_mul_f32_e32 v157, v134, v155
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v183, 16, v186
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v150.h, 0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v188, v18, v136
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v18, v134, v153
	v_mul_f32_e32 v136, v134, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v154, 16, v184
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v184, 16, v187
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v187, 0x3fb8aa3b, v11 :: v_dual_mul_f32 v186, 0x3fb8aa3b, v10
	ds_load_b64 v[10:11], v97
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v186, v18, v154
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[154:155], v96
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v197, 16, v19
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v19, 0x3fb8aa3b, v195
	v_mad_u64_u32 v[194:195], null, s15, s43, v[31:32]
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v195, v134, v156 :: v_dual_lshlrev_b32 v156, 16, v185
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v185, 0x3fb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v19, v158, v197 :: v_dual_mul_f32 v158, 0x3fb8aa3b, v196
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v196, 0x3fb8aa3b, v12 :: v_dual_add_nc_u32 v189, 0, v89
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v185, v14, v152
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[152:153], v95
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v158, v137, v192
	v_dual_fmac_f32 v196, v157, v183 :: v_dual_add_nc_u32 v137, 0, v60
	v_fmac_f32_e32 v187, v136, v156
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[156:157], v98
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v12, v134, v151
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v18, 16, v182
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(17) lgkmcnt(2)
	v_dual_mul_f32 v182, 0x3fb8aa3b, v155 :: v_dual_lshlrev_b32 v155, 16, v177
	v_mul_f32_e32 v177, 0x3fb8aa3b, v10
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s4, s7
	s_and_b32 s7, s4, s8
	s_and_b32 s8, s4, s9
	s_and_b32 s4, s4, s6
	s_and_b32 s9, s5, s10
	s_and_b32 s10, s5, s12
	s_and_b32 s5, s5, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v9.h, v150.h
	v_mov_b16_e64 v14.h, v150.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v183, 0x3fb8aa3b, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.h, v150.h
	v_mov_b16_e64 v136.h, v150.h
	v_mov_b16_e64 v152.h, v150.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v183, v195, v184 :: v_dual_add_nc_u32 v192, 0, v90
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v184, 0x3fb8aa3b, v153
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v195, 0x3fb8aa3b, v157
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v153.h, v150.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s72, s73
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v184, v12, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v134, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v18, 16, v181
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v181, 0x3fb8aa3b, v154 :: v_dual_lshlrev_b32 v154, 16, v176
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v176, 16, v179
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v146, v134, v146 :: v_dual_mul_f32 v179, 0x3fb8aa3b, v11
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v181, v12, v18 :: v_dual_mul_f32 v12, v134, v148
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v18, 16, v180
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[10:11], v100
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.h, v150.h
	v_mov_b16_e64 v148.h, v150.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v182, v12, v18
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v12, v134, v143
	v_mul_f32_e32 v18, v134, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v144, 16, v175
	v_lshlrev_b32_e32 v175, 16, v178
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v143, v134, v145 :: v_dual_mul_f32 v178, 0x3fb8aa3b, v156
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[156:157], v102
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v195, v146, v175
	v_fmac_f32_e32 v179, v18, v154
	v_fmac_f32_e32 v177, v12, v144
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[144:145], v99
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v178, v143, v155
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[154:155], v101
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v12, v134, v142
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v18, 16, v174
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(12) lgkmcnt(3)
	v_dual_mul_f32 v198, 0x3fb8aa3b, v11 :: v_dual_lshlrev_b32 v11, 16, v172
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v172, 1, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.h, v150.h
	v_mov_b16_e64 v146.h, v150.h
	v_mov_b16_e64 v142.h, v150.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v200, 0x3fb8aa3b, v157
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v157, v194, s75, 1
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v197, 0x3fb8aa3b, v145
	v_mul_f32_e32 v175, 0x3fb8aa3b, v144
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v199, 0x3fb8aa3b, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.h, v150.h
	v_mov_b16_e64 v144.h, v150.h
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v197, v12, v18 :: v_dual_mul_f32 v12, v134, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v18, 16, v173
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v173, 0x3fb8aa3b, v10 :: v_dual_mul_f32 v10, v134, v140
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v175, v147, v176
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v141.h, v150.h
	v_mov_b16_e64 v147.h, v150.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v198, v10, v11
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v134, v27
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(11)
	v_lshlrev_b32_e32 v11, 16, v167
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v173, v12, v18
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v18, v134, v29 :: v_dual_lshlrev_b32 v27, 16, v168
	v_mul_f32_e32 v29, v134, v138
	s_waitcnt vmcnt(9)
	v_dual_mul_f32 v138, v134, v139 :: v_dual_lshlrev_b32 v139, 16, v169
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v169, 0x3fb8aa3b, v154 :: v_dual_lshlrev_b32 v168, 16, v171
	v_mul_f32_e32 v171, 0x3fb8aa3b, v156
	ds_load_b64 v[154:155], v106
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v167, 16, v170
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v169, v10, v11
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[10:11], v103
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v12, v134, v28
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v156, v194, s43, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v199, v12, v27
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[27:28], v104
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v171, v18, v139
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[139:140], v105
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v12, v134, v21
	v_mul_f32_e32 v18, v134, v22
	v_dual_mul_f32 v21, v134, v24 :: v_dual_fmac_f32 v200, v29, v167
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v167, v194, s76, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v134, v25
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v24, 16, v160
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(3) lgkmcnt(3)
	v_dual_mul_f32 v201, 0x3fb8aa3b, v154 :: v_dual_lshlrev_b32 v160, 16, v163
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v25, 16, v161
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v29, 0x3fb8aa3b, v10 :: v_dual_mul_f32 v10, v134, v20
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v20, v134, v23 :: v_dual_lshlrev_b32 v163, 16, v166
	v_dual_mul_f32 v23, v134, v26 :: v_dual_mul_f32 v194, 0x3fb8aa3b, v11
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v11, 0, 1, s7
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v164
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v154, 0, 1, s9
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v194, v10, v24
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v24, 0x3fb8aa3b, v27
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_mov_b16_e32 v9.l, v11.l
	v_cndmask_b32_e64 v10, 0, 1, s15
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v27, 0x3fb8aa3b, v28 :: v_dual_mul_f32 v28, 0x3fb8aa3b, v139
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v24, v12, v25
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v12, 0, 1, s8
	v_lshlrev_b16 v9.l, 8, v9.l
	v_cndmask_b32_e64 v25, 0, 1, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v139, 0x3fb8aa3b, v140
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v140, 0, 1, s10
	s_barrier
	v_or_b16 v9.l, v10.l, v9.l
	v_mov_b16_e32 v10.l, v12.l
	v_mov_b16_e32 v11.l, v25.l
	v_cndmask_b32_e64 v25, 0, 1, s5
	v_mov_b16_e64 v12.l, v154.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v139, v21, v161 :: v_dual_lshlrev_b32 v26, 16, v162
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v10.l, 8, v10.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v162, 16, v165
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v202, 0x3fb8aa3b, v155 :: v_dual_fmac_f32 v27, v18, v26
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v28, v20, v160
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v10.l, v11.l, v10.l
	v_mov_b16_e64 v11.l, v140.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v201, v22, v162 :: v_dual_fmac_f32 v202, v23, v163
	v_fmac_f32_e32 v29, v138, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.h, v150.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v10.h, 8, v11.l
	v_mov_b16_e32 v11.l, v25.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v25, 0x80000000, v157, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v10.h, v12.l, v10.h
	v_cndmask_b32_e64 v12, 0, 1, s11
	v_lshlrev_b16 v11.l, 8, v11.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v11.l, v12.l, v11.l
	ds_store_b16 v189, v9
	ds_store_b16 v123, v10
	ds_store_b16_d16_hi v124, v10
	ds_store_b16 v125, v11
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v9, v190
	ds_load_u16_d16 v10, v190 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v107
	ds_load_u16_d16 v11, v107 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v11, v108
	ds_load_u16_d16 v12, v108 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v109
	ds_load_u16_d16 v14, v109 offset:32
	ds_load_u16_d16 v18, v110
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v18, v110 offset:32
	ds_load_u16_d16 v20, v111
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v20, v111 offset:32
	ds_load_u16_d16 v21, v112
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v21, v112 offset:32
	ds_load_u16_d16 v22, v113
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v22, v113 offset:32
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v189, 0x80000000, v156, s14
	v_cndmask_b32_e64 v190, 0x80000000, v167, s14
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v23.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s24, 1, v23.l
	v_and_b16 v23.l, 1, v10.l
	v_lshrrev_b16 v10.l, 8, v10.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v19, s24
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s5, 1, v23.l
	v_and_b16 v23.l, 1, v10.h
	v_lshrrev_b16 v10.h, 8, v10.h
	v_and_b16 v10.l, 1, v10.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s13, 1, v23.l
	v_and_b16 v23.l, 1, v11.l
	v_lshrrev_b16 v11.l, 8, v11.l
	v_and_b16 v10.h, 1, v10.h
	v_cmp_eq_u16_e64 s39, 1, v10.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v13, s13
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s6, 1, v23.l
	v_and_b16 v23.l, 1, v11.h
	v_lshrrev_b16 v11.h, 8, v11.h
	v_and_b16 v11.l, 1, v11.l
	v_cmp_eq_u16_e64 s29, 1, v10.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v174, 0xff800000, v173, s6
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s17, 1, v23.l
	v_and_b16 v23.l, 1, v12.l
	v_lshrrev_b16 v12.l, 8, v12.l
	v_and_b16 v11.h, 1, v11.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v188, s29
	v_cndmask_b32_e64 v160, 0xff800000, v185, s17
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s9, 1, v23.l
	v_and_b16 v23.l, 1, v12.h
	v_lshrrev_b16 v12.h, 8, v12.h
	v_and_b16 v12.l, 1, v12.l
	v_cmp_eq_u16_e64 s30, 1, v11.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v176, 0xff800000, v169, s9
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v23.l
	v_and_b16 v23.l, 1, v14.l
	v_lshrrev_b16 v14.l, 8, v14.l
	v_and_b16 v12.h, 1, v12.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v186, s30
	v_cndmask_b32_e64 v173, 0xff800000, v197, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s10, 1, v23.l
	v_and_b16 v23.l, 1, v18.l
	v_lshrrev_b16 v18.l, 8, v18.l
	v_and_b16 v14.l, 1, v14.l
	v_cmp_eq_u16_e64 s31, 1, v12.h
	v_cmp_eq_u16_e64 s40, 1, v11.l
	v_cmp_eq_u16_e64 s20, 1, v23.l
	v_and_b16 v23.l, 1, v18.h
	v_lshrrev_b16 v18.h, 8, v18.h
	v_and_b16 v18.l, 1, v18.l
	v_cmp_eq_u16_e64 s37, 1, v12.l
	v_cmp_eq_u16_e64 s38, 1, v14.l
	v_cmp_eq_u16_e64 s11, 1, v23.l
	v_and_b16 v23.l, 1, v20.l
	v_lshrrev_b16 v20.l, 8, v20.l
	v_and_b16 v18.h, 1, v18.h
	v_cmp_eq_u16_e64 s33, 1, v18.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v187, s19
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v23.l
	v_and_b16 v23.l, 1, v20.h
	v_lshrrev_b16 v20.h, 8, v20.h
	v_and_b16 v20.l, 1, v20.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v165, 0xff800000, v184, s33
	v_cndmask_b32_e64 v166, 0xff800000, v181, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s12, 1, v23.l
	v_and_b16 v23.l, 1, v21.l
	v_lshrrev_b16 v21.l, 8, v21.l
	v_and_b16 v20.h, 1, v20.h
	v_cmp_eq_u16_e64 s34, 1, v20.l
	v_cmp_eq_u16_e64 s25, 1, v18.h
	v_cmp_eq_u16_e64 s22, 1, v23.l
	v_and_b16 v23.l, 1, v21.h
	v_lshrrev_b16 v21.h, 8, v21.h
	v_and_b16 v21.l, 1, v21.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v182, s34
	v_cndmask_b32_e64 v168, 0xff800000, v177, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s16, 1, v23.l
	v_and_b16 v23.l, 1, v22.l
	v_lshrrev_b16 v22.l, 8, v22.l
	v_and_b16 v21.h, 1, v21.h
	v_cmp_eq_u16_e64 s35, 1, v21.l
	v_cmp_eq_u16_e64 s26, 1, v20.h
	v_cmp_eq_u16_e64 s23, 1, v23.l
	v_and_b16 v23.l, 1, v22.h
	v_lshrrev_b16 v22.h, 8, v22.h
	v_and_b16 v22.l, 1, v22.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v179, s35
	v_cndmask_b32_e64 v170, 0xff800000, v178, s23
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s18, 1, v23.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v23, 0x80000000, v172, s14
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v22.h, 1, v22.h
	v_cmp_eq_u16_e64 s14, 1, v9.l
	v_cmp_eq_u16_e64 s36, 1, v22.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, 0xff800000, v175, s5
	v_cndmask_b32_e64 v178, 0xff800000, v171, s10
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v21.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v158, s14
	v_cndmask_b32_e64 v171, 0xff800000, v195, s36
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v22.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v196, s31
	v_cndmask_b32_e64 v164, 0xff800000, v183, s20
	v_cndmask_b32_e64 v180, 0xff800000, v29, s11
	v_cndmask_b32_e64 v182, 0xff800000, v24, s12
	v_cndmask_b32_e64 v184, 0xff800000, v28, s16
	v_cndmask_b32_e64 v186, 0xff800000, v201, s18
	v_cndmask_b32_e64 v175, 0xff800000, v198, s40
	v_cndmask_b32_e64 v177, 0xff800000, v199, s37
	v_cndmask_b32_e64 v179, 0xff800000, v200, s38
	v_cndmask_b32_e64 v181, 0xff800000, v194, s25
	v_cndmask_b32_e64 v183, 0xff800000, v27, s26
	v_cndmask_b32_e64 v185, 0xff800000, v139, s27
	v_cndmask_b32_e64 v187, 0xff800000, v202, s28
	ds_store_b64 v16, v[154:155]
	ds_store_b64 v92, v[156:157]
	ds_store_b64 v93, v[160:161]
	ds_store_b64 v94, v[162:163]
	ds_store_b64 v95, v[164:165]
	ds_store_b64 v96, v[166:167]
	ds_store_b64 v97, v[168:169]
	ds_store_b64 v98, v[170:171]
	ds_store_b64 v99, v[172:173]
	ds_store_b64 v100, v[174:175]
	ds_store_b64 v101, v[176:177]
	ds_store_b64 v102, v[178:179]
	ds_store_b64 v103, v[180:181]
	ds_store_b64 v104, v[182:183]
	ds_store_b64 v105, v[184:185]
	ds_store_b64 v106, v[186:187]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v165, v166, v167
	v_max3_f32 v11, v168, v169, v170
	v_max3_f32 v12, v171, v172, v173
	v_max_f32_e32 v16, v154, v155
	v_max3_f32 v22, v157, v160, v161
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[26:29], v15 offset1:16
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v13, v174, v175, v176
	v_max3_f32 v15, v177, v178, v179
	v_max3_f32 v139, v180, v181, v182
	v_max_f32_e32 v158, v183, v184
	v_max_f32_e32 v188, v186, v187
	v_max3_f32 v194, v162, v163, v164
	v_max3_f32 v10, v10, v11, v12
	v_max3_f32 v11, v16, v156, v22
	v_max3_f32 v15, v13, v15, v139
	v_max3_f32 v139, v158, v185, v188
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[18:21], v23, s[68:71], 0 offen
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v16, v11, v194, v10
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[10:13], v190, s[68:71], 0 offen
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v15, v16, v15, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v16, v15, s77, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v139, v17, v15, v16
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v158, v28, v28
	v_max_f32_e32 v188, v26, v26
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v140, v193, v193 :: v_dual_sub_f32 v167, v167, v139
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v164, v139
	v_sub_f32_e32 v168, v168, v139
	v_sub_f32_e32 v176, v176, v139
	v_sub_f32_e32 v169, v169, v139
	v_sub_f32_e32 v171, v171, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	v_exp_f32_e32 v168, v168
	v_exp_f32_e32 v176, v176
.Ltmp12:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v15, v188, v158
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v195, v161, v139
	v_sub_f32_e32 v158, v183, v139
	v_sub_f32_e32 v180, v180, v139
	v_sub_f32_e32 v166, v166, v139
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v15, v15, v27, v29
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v173, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s20
	v_cndmask_b32_e64 v168, 0, v168, s22
	v_cndmask_b32_e64 v176, 0, v176, s9
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v166, v166
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v149.l, v164.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v16, v155, v139
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v155, v17, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.l, v168.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v154, v154, v139 :: v_dual_and_b32 v149, 1, v149
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v155, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v145.l, v176.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v188, v156, v139
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v156, v15
.Ltmp17:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v180, 0, v180, s11
	v_cndmask_b32_e64 v166, 0, v166, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v172, v172, v139
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v16, 0, v16, s14
.Ltmp18:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v17, 0, v155, s41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v154, s24
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v175, v175, v139
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v150.l, v16.h
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v154, v156, v156 :: v_dual_sub_f32 v177, v177, v139
.Ltmp21:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v14.l, v155.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v187, v139
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v154, v15, v154
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v15, 1, v150
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v179, v179, v139 :: v_dual_mul_f32 v4, v4, v17
	v_dual_sub_f32 v183, v186, v139 :: v_dual_and_b32 v14, 1, v14
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v17
	v_mul_f32_e32 v1, v1, v17
	v_mul_f32_e32 v3, v3, v17
	v_mul_f32_e32 v5, v5, v17
	v_mul_f32_e32 v6, v6, v17
	v_mul_f32_e32 v7, v7, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v16, v16
	v_cmp_o_f32_e64 s24, v155, v155
	v_add3_u32 v156, v16, v15, 0x7fff
	v_add3_u32 v155, v155, v14, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[14:17], v189, s[68:71], 0 offen
	buffer_load_b128 v[22:25], v25, s[68:71], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v141.l, v180.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v194, v160, v139
	v_sub_f32_e32 v160, v185, v139
	v_sub_f32_e32 v190, v157, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v152.l, v166.h
	v_and_b32_e32 v141, 1, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v185, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v145, 1, v145
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v172, v172
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v170, v170, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v183, v183
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v165, v165, v139
	v_sub_f32_e32 v163, v163, v139
	v_sub_f32_e32 v174, v174, v139
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v160, v160
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s17
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v165, v165
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v172, 0, v172, s5
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s18
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v136.l, v185.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v181, v139
	v_dual_sub_f32 v181, v182, v139 :: v_dual_and_b32 v152, 1, v152
	v_sub_f32_e32 v182, v184, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v136, 1, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v184, v188
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v172.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v170, 0, v170, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v138.l, v183.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v165, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v143, 1, v143
	v_mov_b16_e64 v148.l, v170.h
	v_cmp_o_f32_e64 s33, v172, v172
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v188, 0, v157, s25
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v157, v154
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v186, v190
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v172, v143, 0x7fff
	v_and_b32_e32 v138, 1, v138
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v195
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v162, v139
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v161, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v190, 0, v160, s27
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v138, v183, v138, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s13
	v_cndmask_b32_e64 v186, 0, v186, s29
	v_cndmask_b32_e64 v163, 0, v163, s31
	v_cndmask_b32_e64 v174, 0, v174, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v170, v170
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v169, v169
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s19
	v_cndmask_b32_e64 v187, 0, v187, s30
	v_cndmask_b32_e64 v181, 0, v181, s12
	v_cndmask_b32_e64 v182, 0, v182, s16
	v_cndmask_b32_e64 v194, 0, v161, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v151.l, v162.h
	v_cmp_o_f32_e64 s27, v162, v162
	v_mov_b16_e64 v9.l, v184.h
	v_mov_b16_e64 v144.l, v174.h
	v_mov_b16_e64 v150.l, v186.h
	v_and_b32_e32 v151, 1, v151
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v179, v179
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v189, 0, v158, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v168, v168
	v_add3_u32 v151, v162, v151, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v143.h, s33
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v143, v157, v157 :: v_dual_and_b32 v148, 1, v148
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v181.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v138.l, 0x7fff, v151.h, s27
	v_mov_b16_e64 v147.l, v182.h
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v151, v154, v143
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v148, v170, v148, 0x7fff
	v_and_b32_e32 v9, 1, v9
	v_and_b32_e32 v144, 1, v144
	v_and_b32_e32 v158, 1, v150
	v_mov_b16_e64 v150.l, v187.h
	v_cndmask_b16 v161.l, 0x7fff, v148.h, s31
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v148, v151
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v153, v168, v153, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v167, s34
	v_cndmask_b32_e64 v169, 0, v169, s35
.Ltmp34:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v148, v148 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v184, v184
	v_cmp_o_f32_e64 s26, v186, v186
	v_cmp_o_f32_e64 s34, v174, v174
	v_cmp_o_f32_e64 s35, v176, v176
	v_add3_u32 v9, v184, v9, 0x7fff
	v_and_b32_e32 v146, 1, v146
	v_add3_u32 v144, v174, v144, 0x7fff
	v_add3_u32 v145, v176, v145, 0x7fff
	v_cndmask_b16 v156.l, 0x7fff, v155.h, s24
	v_add3_u32 v155, v186, v158, 0x7fff
	v_and_b32_e32 v158, 1, v150
	v_mov_b16_e64 v150.l, v163.h
	v_cndmask_b16 v160.l, 0x7fff, v153.h, s30
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v153, v148, v148
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v147, 1, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s39
	v_cndmask_b32_e64 v179, 0, v179, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v185, v185
	v_cmp_o_f32_e64 s22, v187, v187
	v_cmp_o_f32_e64 s28, v164, v164
	v_cmp_o_f32_e64 s29, v166, v166
	v_cmp_o_f32_e64 s38, v181, v181
	v_cmp_o_f32_e64 s39, v182, v182
	v_add3_u32 v136, v185, v136, 0x7fff
	v_add3_u32 v149, v164, v149, 0x7fff
	v_add3_u32 v152, v166, v152, 0x7fff
	v_add3_u32 v146, v181, v146, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s23
	v_cndmask_b16 v164.l, 0x7fff, v144.h, s34
	v_cndmask_b16 v166.l, 0x7fff, v145.h, s35
	v_cndmask_b16 v9.h, 0x7fff, v155.h, s26
	v_add3_u32 v144, v187, v158, 0x7fff
	v_and_b32_e32 v145, 1, v150
	v_mov_b16_e64 v150.l, v165.h
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v158, v151, v153
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v182, v147, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v175, 0, v175, s40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v163, v163
	v_cmp_o_f32_e64 s40, v183, v183
	v_cndmask_b16 v136.l, 0x7fff, v136.h, s25
	v_cndmask_b16 v172.l, 0x7fff, v146.h, s38
	v_cndmask_b16 v174.l, 0x7fff, v147.h, s39
	v_permlanex16_b32 v146, v9, s77, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v136.h, 0x7fff, v144.h, s22
	v_add3_u32 v145, v163, v145, 0x7fff
	v_and_b32_e32 v147, 1, v150
	v_cmp_o_f32_e64 s20, v165, v165
	v_cndmask_b16 v184.l, 0x7fff, v138.h, s40
	v_mov_b16_e64 v150.l, v167.h
	v_perm_b32 v143, v146, v9, v122
	v_perm_b32 v144, v146, v9, v133
	v_permlanex16_b32 v9, v136, s77, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v138.h, 0x7fff, v145.h, s21
	v_add3_u32 v147, v165, v147, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v171, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v149.l, 0x7fff, v149.h, s28
	v_cndmask_b16 v155.l, 0x7fff, v152.h, s29
	v_and_b32_e32 v152, 1, v150
	v_mov_b16_e64 v150.l, v169.h
	v_perm_b32 v145, v9, v136, v122
	v_perm_b32 v146, v9, v136, v133
	v_permlanex16_b32 v9, v138, s77, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v149.h, 0x7fff, v147.h, s20
	v_cmp_o_f32_e64 s19, v167, v167
	v_add3_u32 v136, v167, v152, 0x7fff
	v_and_b32_e32 v152, 1, v150
	v_mov_b16_e64 v150.l, v171.h
	v_perm_b32 v147, v9, v138, v122
	v_perm_b32 v148, v9, v138, v133
	v_permlanex16_b32 v9, v149, s77, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s18, v169, v169
	v_cndmask_b16 v155.h, 0x7fff, v136.h, s19
	v_add3_u32 v136, v169, v152, 0x7fff
	v_and_b32_e32 v138, 1, v150
	v_mov_b16_e64 v150.l, v173.h
	v_perm_b32 v151, v9, v149, v122
	v_perm_b32 v152, v9, v149, v133
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v149, v158
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v171, v171
	v_cndmask_b16 v160.h, 0x7fff, v136.h, s18
	v_add3_u32 v136, v171, v138, 0x7fff
	v_and_b32_e32 v138, 1, v150
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v149, v149 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v173, v173
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v177, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v161.h, 0x7fff, v136.h, s17
	v_add3_u32 v136, v173, v138, 0x7fff
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v149, v149, v149
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v156.h, 0x7fff, v156.h, s14
	v_add3_u32 v141, v180, v141, 0x7fff
	v_permlanex16_b32 v9, v155, s77, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v162.h, 0x7fff, v136.h, s16
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v136, v158, v149
.Ltmp47:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v178, v178, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v177, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v180, v180
	v_mov_b16_e64 v150.l, v175.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v159, v159, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v178, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v153, v9, v155, v122
	v_cndmask_b16 v170.l, 0x7fff, v141.h, s37
	v_perm_b32 v154, v9, v155, v133
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v29, v29, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v9, v160, s77, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s12, v177, v177
	v_cmp_o_f32_e64 s13, v175, v175
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v136, v140, v136
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v26, v26, v159
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v178, 0, v178, s10
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v155, v9, v160, v122
	v_cmp_o_f32_e64 s10, v179, v179
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v28, v28, v159
	v_sub_f32_e32 v27, v27, v159
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v178.h
	v_cmp_o_f32_e64 s36, v178, v178
	v_permlanex16_b32 v163, v161, s77, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v26, v26
	v_exp_f32_e32 v28, v28
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v142, 1, v142
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v27, v27
	v_exp_f32_e32 v29, v29
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v157, v163, v161, v122
	v_perm_b32 v158, v163, v161, v133
	v_add3_u32 v142, v178, v142, 0x7fff
	v_cmp_o_f32_e64 s11, v188, v188
	v_cmp_o_f32_e64 s9, v189, v189
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v168.l, 0x7fff, v142.h, s36
	v_permlanex16_b32 v142, v156, s77, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v27, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v190, v190
	v_cmp_o_f32_e64 s5, v194, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v141, v142, v156, v122
	v_perm_b32 v142, v142, v156, v133
	v_and_b32_e32 v156, 1, v150
	v_mov_b16_e64 v150.l, v177.h
	v_add3_u32 v138, v175, v156, 0x7fff
	v_perm_b32 v156, v9, v160, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v9, 1, v150
	v_mov_b16_e64 v150.l, v179.h
	v_cndmask_b16 v164.h, 0x7fff, v138.h, s13
	v_permlanex16_b32 v138, v162, s77, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v9, v177, v9, 0x7fff
	v_and_b32_e32 v149, 1, v150
	v_mov_b16_e64 v150.l, v188.h
	v_permlanex16_b32 v163, v164, s77, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v160, v138, v162, v122
	v_cndmask_b16 v166.h, 0x7fff, v9.h, s12
	v_add3_u32 v9, v179, v149, 0x7fff
	v_perm_b32 v161, v138, v162, v133
	v_perm_b32 v162, v163, v164, v122
	v_perm_b32 v163, v163, v164, v133
	v_permlanex16_b32 v140, v166, s77, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v168.h, 0x7fff, v9.h, s10
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v9, v193, v136 :: v_dual_and_b32 v138, 1, v150
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v189.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v164, v140, v166, v122
	v_perm_b32 v165, v140, v166, v133
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v171, v9
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v9, v168, s77, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v138, v188, v138, 0x7fff
	v_and_b32_e32 v149, 1, v150
	v_mov_b16_e64 v150.l, v190.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v193
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v166, v9, v168, v122
	v_perm_b32 v167, v9, v168, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v26, s15
	v_cndmask_b32_e64 v26, 0, v28, s4
	v_cndmask_b32_e64 v28, 0, v29, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v170.h, 0x7fff, v138.h, s11
	v_add3_u32 v138, v189, v149, 0x7fff
	v_and_b32_e32 v140, 1, v150
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v9, v9, v26 :: v_dual_add_f32 v26, v27, v28
.Ltmp49:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v27.h, v10.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v150.l, v194.h
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v29.h, v11.l
	v_mov_b16_e32 v28.l, v19.l
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v26
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v172.h, 0x7fff, v138.h, s9
	v_add3_u32 v138, v190, v140, 0x7fff
	v_and_b32_e32 v140, 1, v150
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v150.h, v13.l
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v9
.Ltmp53:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v149.l, v21.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v174.h, 0x7fff, v138.h, s6
	v_permlanex16_b32 v169, v170, s77, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v168, v169, v170, v122
	v_perm_b32 v169, v169, v170, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v26
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v26, v26 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v173, v9, v26
.Ltmp59:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v26.l, v18.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v26.h, v14.l
	v_mov_b16_e32 v14.l, v18.h
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v27.l, v22.l
	v_mov_b16_e32 v10.l, v22.h
	v_mov_b16_e32 v28.h, v15.l
	v_mov_b16_e32 v15.l, v19.h
	v_mov_b32_e32 v9, v14
	v_mov_b16_e32 v29.l, v23.l
	v_mov_b16_e32 v22.h, v16.l
	v_mov_b16_e32 v16.l, v20.h
	v_mov_b16_e32 v11.l, v23.h
	ds_store_b64 v137, v[26:27]
	ds_store_b64 v115, v[9:10]
	v_mov_b32_e32 v10, v15
	v_mov_b16_e32 v13.l, v25.h
	v_mov_b16_e32 v23.l, v24.l
	v_mov_b16_e32 v23.h, v12.l
	v_mov_b16_e32 v22.l, v20.l
	v_mov_b16_e32 v12.l, v24.h
	ds_store_b64 v116, v[28:29]
	ds_store_b64 v117, v[10:11]
	v_mov_b32_e32 v11, v16
	v_mov_b16_e64 v150.l, v25.l
	v_mov_b16_e64 v149.h, v17.l
	v_mov_b16_e32 v17.l, v21.h
	v_mov_b32_e32 v18, v13
	ds_store_b64 v118, v[22:23]
	ds_store_b64 v119, v[11:12]
	ds_store_b64 v120, v[149:150]
	ds_store_b64 v121, v[17:18]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v192
	ds_load_b128 v[13:16], v126
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v26, v173
.Ltmp61:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[17:20], v127
	ds_load_b128 v[21:24], v128
	ds_load_b128 v[176:179], v129
	ds_load_b128 v[180:183], v130
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v25, v194, v140, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v131
	ds_load_b128 v[196:199], v132
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v26, v26 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v27, v172, s77, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v29, v174, s77, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v184.h, 0x7fff, v25.h, s5
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v28, 0, v171, s10
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v26, v173, v26
.Ltmp65:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v170, v27, v172, v122
	v_perm_b32 v171, v27, v172, v133
	v_perm_b32 v172, v29, v174, v122
	v_perm_b32 v173, v29, v174, v133
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v25, v26
.Ltmp67:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[9:16], v[141:148], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v9, v184, s77, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp68:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[151:158], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v174, v9, v184, v122
	v_perm_b32 v175, v9, v184, v133
.Ltmp70:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v18, v26, v25 :: v_dual_mov_b32 v17, v139
.Ltmp71:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[176:183], v[160:167], v[1:8]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v18, v191, v28
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[192:199], v[168:175], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ; %._crit_edge.loopexit
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v136, v136
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v10, 0xff800000, v9 :: v_dual_add_f32 v9, 0, v18
	s_branch .LBB0_5
.Ltmp73:
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
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	s_mov_b32 s0, 0x76543210
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v12, 3, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp75:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v10, 0xff800000, v10 :: v_dual_cndmask_b32 v9, 0, v9
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v46
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s55, s55, s3
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v10
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v14, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v12
.Ltmp80:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v45
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_and_b32_e32 v13, 12, v42
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v9, v9, v14
.Ltmp84:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s54, s55
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v11 :: v_dual_add_nc_u32 v11, 0, v13
.Ltmp86:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v2, 0, v2 :: v_dual_cndmask_b32 v1, 0, v1
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v12, v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v9
.Ltmp89:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v2
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp91:
	.loc	1 1036 13 is_stmt 1             ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v16, 0, v4
	v_dual_cndmask_b32 v8, 0, v8 :: v_dual_cndmask_b32 v17, 0, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v12 :: v_dual_mov_b32 v11, v1
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v11
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v11, v10
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_mov_b32 v13, v3
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_mov_b32 v20, v8
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v13
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v13, v9
.Ltmp107:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp108:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v11
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v3
.Ltmp110:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v14 :: v_dual_add_f32 v1, v1, v12
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v12, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v9, v9, v13 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v13, v1 :: v_dual_mov_b32 v14, v16
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v11, v9
.Ltmp118:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp120:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp121:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v1, v1, v13 :: v_dual_add_f32 v14, v16, v14
.Ltmp122:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v13, 0, v6, vcc_lo
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v3 :: v_dual_mov_b32 v16, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v3, v15
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v17
	v_dual_mov_b32 v3, v1 :: v_dual_add_f32 v14, v14, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp127:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v7, 0, v7, vcc_lo
.Ltmp128:
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
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
	v_add_f32_e32 v17, v13, v18
	v_add_f32_e32 v7, v7, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v15
	v_mov_b32_e32 v19, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v15, v13
	v_dual_add_f32 v18, v7, v19 :: v_dual_add_f32 v19, v8, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v7, v14, v16 :: v_dual_mov_b32 v16, v13
.Ltmp132:
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
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v18, v22 :: v_dual_add_f32 v14, v17, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v17, v19, v23
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_7
; %bb.6:
.Ltmp136:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v21, v10, v10
.Ltmp137:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v10, v9, v11 :: v_dual_mov_b32 v11, 0
.Ltmp139:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp140:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v21, v12
.Ltmp141:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v11, v[9:10], s[4:5]
.LBB0_7:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp142:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v7, v8 :: v_dual_add_f32 v6, v5, v6
	v_dual_add_f32 v5, v2, v4 :: v_dual_and_b32 v8, 0xc0, v42
	v_add_f32_e32 v4, v1, v3
.Ltmp143:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v43
	v_lshlrev_b32_e32 v2, 5, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v3, 0, v8
	v_lshl_add_u32 v8, v41, 1, 0
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v17, v20 :: v_dual_add_f32 v11, v15, v19
	v_dual_add_f32 v10, v14, v18 :: v_dual_add_f32 v9, v13, v16
.Ltmp145:
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
.Ltmp146:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 209
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 209
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10796
; TotalNumSgprs: 81
; NumVgprs: 209
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 81
; NumVGPRsForWavesPerEU: 209
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     209
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
