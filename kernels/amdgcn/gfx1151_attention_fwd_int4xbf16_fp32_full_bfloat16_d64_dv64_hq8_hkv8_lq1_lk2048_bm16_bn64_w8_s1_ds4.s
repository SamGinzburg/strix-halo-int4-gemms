	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x3
	s_load_b32 s54, s[0:1], 0x64
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b64 s[56:57], s[0:1], 0x0
	s_load_b64 s[52:53], s[0:1], 0x40
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v27, 15, v0
	v_lshrrev_b32_e32 v2, 4, v0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v23, 0xc0, v0
	v_lshlrev_b32_e32 v24, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v26, 31, v0
	v_and_b32_e32 v29, 0xf0, v0
	.loc	1 889 86                        ; attention.py:889:86
	v_and_b32_e32 v28, 7, v0
	v_lshlrev_b32_e32 v25, 5, v0
	s_mov_b32 s44, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s54
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s54
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
	v_lshlrev_b32_e32 v1, 1, v27
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
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
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s42, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s13, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s54
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s12, s13, s3
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v12, s13, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v3, s12, v2
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s41, s2, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v12
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, v3, s42, v[1:2]
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s4, s4, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s54, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v3, 3, v23
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s8, s4, s54
	s_abs_i32 s4, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_u16 v1, v1, s[56:59], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_xad_u32 v3, v24, v3, 0
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
	s_mul_i32 s4, s41, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s55, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s55, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s72, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s55, s72
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_store_b16 v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_load_b256 s[4:11], s[0:1], 0x8
	.loc	1 759 21 is_stmt 1              ; attention.py:759:21
	v_or_b32_e32 v1, s13, v27
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v3, s12, v27, 1
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x68
	s_load_b64 s[60:61], s[0:1], 0x30
	.loc	1 760 21                        ; attention.py:760:21
	v_lshlrev_b32_e32 v20, 2, v27
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e64 s2, 1, v1
	v_dual_mov_b32 v99, 0xff800000 :: v_dual_lshlrev_b32 v8, 3, v26
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s73, s3, 11
	v_dual_mov_b32 v40, 0x7632 :: v_dual_lshlrev_b32 v11, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	v_dual_mov_b32 v97, 0xff800000 :: v_dual_lshlrev_b32 v10, 3, v28
	v_or3_b32 v31, s73, v2, 62
	v_and_b32_e32 v39, 24, v6
	v_dual_mov_b32 v22, 0x5410 :: v_dual_and_b32 v5, 24, v24
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt lgkmcnt(0)
	s_and_b32 s57, s9, 0xffff
	s_mov_b32 s56, s8
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_lshlrev_b32 v7, 3, v27
	buffer_load_u16 v19, v1, s[56:59], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v3, 0xf8, v0
	v_and_b32_e32 v21, 16, v0
	v_and_b32_e32 v15, 14, v2
	v_lshlrev_b32_e32 v14, 1, v23
	v_mov_b32_e32 v2, v1
	v_lshrrev_b32_e32 v42, 2, v3
	v_lshlrev_b32_e32 v18, 6, v0
	v_lshl_or_b32 v35, v27, 8, v8
	v_mov_b32_e32 v8, v1
	v_cmp_eq_u32_e64 s2, 0, v21
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 822 49                        ; attention.py:822:49
	v_and_b32_e32 v9, 24, v11
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s1, s3, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v10
	v_xor_b32_e32 v53, v11, v39
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[10:11], null, s43, v42, v[10:11]
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v4, v0, 4, 1
	v_and_b32_e32 v16, 0x380, v25
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v17, 30, v0
	v_dual_mov_b32 v100, v1 :: v_dual_lshlrev_b32 v41, 4, v28
	v_bfe_i32 v37, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v38, v27, 5, v5
	v_lshl_or_b32 v43, v29, 4, v7
	v_cndmask_b32_e64 v21, 0x1054, v22, s2
	v_lshrrev_b32_e32 v22, 1, v3
	v_mov_b32_e32 v3, v1
	v_lshl_or_b32 v14, v26, 2, v14
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v18, 64, v18
	v_cndmask_b32_e64 v11, 0x3276, v40, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s12, 0x3fb8aa3b
	v_lshrrev_b32_e32 v13, 1, v29
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v33, 0x800, v4
	v_or_b32_e32 v34, s73, v4
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v48, 8, v38
	v_xor_b32_e32 v49, 16, v38
	v_xor_b32_e32 v50, 24, v38
	v_or3_b32 v39, v16, v17, v18
	v_xor_b32_e32 v13, v43, v13
	v_lshl_or_b32 v11, v11, 8, v11
	v_add_nc_u32_e32 v48, 0, v48
	v_add_nc_u32_e32 v49, 0, v49
	v_xor_b32_e32 v18, 4, v39
	v_add_nc_u32_e32 v50, 0, v50
	v_add_nc_u32_e32 v54, 0, v13
	v_mul_lo_u32 v93, v12, s15
	v_and_b32_e32 v79, 0x760076, v11
	v_add_nc_u32_e32 v71, 0, v18
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s1, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s1, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s8, s3, s8
	v_xor_b32_e32 v55, 8, v35
	v_xor_b32_e32 v56, 16, v35
	v_xor_b32_e32 v57, 24, v35
	v_xor_b32_e32 v58, 32, v35
	v_xor_b32_e32 v59, 40, v35
	v_xor_b32_e32 v60, 48, v35
	v_xor_b32_e32 v61, 56, v35
	v_xor_b32_e32 v62, 64, v35
	v_xor_b32_e32 v63, 0x48, v35
	v_xor_b32_e32 v64, 0x50, v35
	v_xor_b32_e32 v65, 0x58, v35
	v_xor_b32_e32 v66, 0x60, v35
	v_xor_b32_e32 v67, 0x68, v35
	v_xor_b32_e32 v68, 0x70, v35
	v_xor_b32_e32 v69, 0x78, v35
	v_xor_b32_e32 v74, 16, v39
	v_xor_b32_e32 v75, 20, v39
	v_xor_b32_e32 v76, 24, v39
	v_xor_b32_e32 v77, 28, v39
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s8, s14, s8
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v30, 2, v0
	s_add_i32 s8, s8, s9
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v32, 0x800, v20
	.loc	1 825 31                        ; attention.py:825:31
	v_cmp_gt_i32_e64 s1, s42, v9
	v_or_b32_e32 v40, 44, v34
	v_or_b32_e32 v43, 50, v34
	v_or_b32_e32 v46, 56, v34
	v_or_b32_e32 v47, 58, v34
	v_add_nc_u32_e32 v53, 0, v53
	v_add_nc_u32_e32 v55, 0, v55
	v_add_nc_u32_e32 v56, 0, v56
	v_add_nc_u32_e32 v57, 0, v57
	v_add_nc_u32_e32 v58, 0, v58
	v_add_nc_u32_e32 v59, 0, v59
	v_add_nc_u32_e32 v60, 0, v60
	v_add_nc_u32_e32 v61, 0, v61
	v_add_nc_u32_e32 v62, 0, v62
	v_add_nc_u32_e32 v63, 0, v63
	v_add_nc_u32_e32 v64, 0, v64
	v_add_nc_u32_e32 v65, 0, v65
	v_add_nc_u32_e32 v66, 0, v66
	v_add_nc_u32_e32 v67, 0, v67
	v_add_nc_u32_e32 v68, 0, v68
	v_add_nc_u32_e32 v69, 0, v69
	v_add_nc_u32_e32 v74, 0, v74
	v_add_nc_u32_e32 v75, 0, v75
	v_add_nc_u32_e32 v76, 0, v76
	v_add_nc_u32_e32 v77, 0, v77
	v_add3_u32 v93, s8, v20, v93
	v_or_b32_e32 v96, 60, v34
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s74, 0x76543210
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
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v95, s2, v19 :: v_dual_and_b32 v36, 0x60, v0
	v_lshl_or_b32 v44, v36, 6, v41
	v_and_or_b32 v45, 0x410, v37, v36
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v36, 0, v38
	v_xor_b32_e32 v38, v14, v15
	v_lshl_or_b32 v14, v21, 8, v21
	v_xor_b32_e32 v15, v41, v22
	v_xor_b32_e32 v16, v45, v44
	v_xor_b32_e32 v21, 8, v39
	v_xor_b32_e32 v17, 0x210, v38
	v_and_b32_e32 v14, 0x540054, v14
	v_lshl_or_b32 v51, v28, 10, v15
	v_lshl_or_b32 v52, v28, 7, v16
	v_xor_b32_e32 v22, 12, v39
	v_add_nc_u32_e32 v70, 0, v17
	v_lshl_or_b32 v78, v14, 4, v14
	ds_load_b64 v[11:12], v36
	ds_load_b64 v[13:14], v48
	ds_load_b64 v[15:16], v49
	ds_load_b64 v[17:18], v50
	v_xor_b32_e32 v80, 0x90, v51
	v_xor_b32_e32 v81, 0x120, v51
	v_xor_b32_e32 v82, 0x1b0, v51
	v_xor_b32_e32 v83, 0x240, v51
	v_xor_b32_e32 v84, 0x2d0, v51
	v_xor_b32_e32 v85, 0x360, v51
	v_xor_b32_e32 v86, 0x3f0, v51
	v_xor_b32_e32 v87, 16, v52
	v_xor_b32_e32 v88, 32, v52
	v_xor_b32_e32 v89, 48, v52
	v_xor_b32_e32 v90, 64, v52
	v_xor_b32_e32 v91, 0x50, v52
	v_xor_b32_e32 v92, 0x60, v52
	v_xor_b32_e32 v94, 0x70, v52
	v_add_nc_u32_e32 v72, 0, v21
	v_lshl_or_b32 v21, v79, 4, v79
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v37, 0x800, v42
	v_or_b32_e32 v41, 46, v34
	v_or_b32_e32 v42, 48, v34
	v_or_b32_e32 v44, 52, v34
	v_or_b32_e32 v45, 54, v34
	v_add_nc_u32_e32 v73, 0, v22
	v_and_b32_e32 v78, 0x5040504, v78
	v_add_nc_u32_e32 v79, 0, v80
	v_add_nc_u32_e32 v80, 0, v81
	v_add_nc_u32_e32 v81, 0, v82
	v_add_nc_u32_e32 v82, 0, v83
	v_add_nc_u32_e32 v83, 0, v84
	v_add_nc_u32_e32 v84, 0, v85
	v_add_nc_u32_e32 v85, 0, v86
	v_add_nc_u32_e32 v86, 0, v87
	v_add_nc_u32_e32 v87, 0, v88
	v_add_nc_u32_e32 v88, 0, v89
	v_add_nc_u32_e32 v89, 0, v90
	v_add_nc_u32_e32 v90, 0, v91
	v_add_nc_u32_e32 v91, 0, v92
	v_add_nc_u32_e32 v92, 0, v94
	v_and_b32_e32 v94, 0x7060706, v21
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s8, s55, s73
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v101, 0x800, v30
	.loc	1 822 32                        ; attention.py:822:32
	v_or_b32_e32 v116, s8, v30
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v115, s51 :: v_dual_mov_b32 v114, s50
	v_dual_mov_b32 v113, s49 :: v_dual_mov_b32 v112, s48
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[116:117], null, v116, s42, v[9:10]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s5, s55, v101
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v111, s47 :: v_dual_mov_b32 v110, s46
	v_dual_mov_b32 v109, s45 :: v_dual_mov_b32 v108, s44
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s5, s1, s5
	v_or_b32_e32 v21, 2, v34
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v101, 0x80000000, v116, s5
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_lt_i32_e64 s2, s55, v32
	v_or_b32_e32 v22, 4, v34
	v_or_b32_e32 v102, 6, v34
	v_or_b32_e32 v103, 8, v34
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b64 v[116:117], v101, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_or_b32_e32 v104, 10, v34
	v_or_b32_e32 v105, 12, v34
	v_or_b32_e32 v106, 14, v34
	v_or_b32_e32 v107, 16, v34
	v_or_b32_e32 v142, 18, v34
	v_or_b32_e32 v143, 20, v34
	v_or_b32_e32 v144, 22, v34
	v_or_b32_e32 v145, 24, v34
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v19, v93, s55, 2
	v_or_b32_e32 v146, 26, v34
	v_or_b32_e32 v147, 28, v34
	v_or_b32_e32 v148, 30, v34
	v_or_b32_e32 v149, 32, v34
	v_or_b32_e32 v150, 34, v34
	v_or_b32_e32 v151, 36, v34
	v_or_b32_e32 v152, 38, v34
	v_or_b32_e32 v153, 40, v34
	v_or_b32_e32 v154, 42, v34
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v20, s55, v34, 1
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_lt_i32_e64 s4, s55, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v21, v21, s55, 1
	v_add_lshl_u32 v22, v22, s55, 1
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, vcc_lo, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v155, v40, s55, 1
	v_add_lshl_u32 v156, v41, s55, 1
	v_add_lshl_u32 v157, v42, s55, 1
	v_add_lshl_u32 v102, v102, s55, 1
	v_add_lshl_u32 v103, v103, s55, 1
	v_add_lshl_u32 v104, v104, s55, 1
	v_add_lshl_u32 v105, v105, s55, 1
	v_add_lshl_u32 v106, v106, s55, 1
	v_add_lshl_u32 v107, v107, s55, 1
	v_add_lshl_u32 v158, v43, s55, 1
	v_add_lshl_u32 v159, v44, s55, 1
	v_add_lshl_u32 v160, v45, s55, 1
	v_add_lshl_u32 v177, v46, s55, 1
	v_add_lshl_u32 v178, v47, s55, 1
	v_add_lshl_u32 v179, v96, s55, 1
	v_add_lshl_u32 v180, s55, v31, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v181, 0x80000000, v155, s4
	v_cndmask_b32_e64 v182, 0x80000000, v156, s4
	v_cndmask_b32_e64 v183, 0x80000000, v157, s4
	v_cndmask_b32_e64 v155, 0x80000000, v105, s4
	v_cndmask_b32_e64 v156, 0x80000000, v106, s4
	v_cndmask_b32_e64 v157, 0x80000000, v107, s4
	v_cndmask_b32_e64 v184, 0x80000000, v158, s4
	v_cndmask_b32_e64 v185, 0x80000000, v159, s4
	v_cndmask_b32_e64 v186, 0x80000000, v160, s4
	v_cndmask_b32_e64 v177, 0x80000000, v177, s4
	v_cndmask_b32_e64 v178, 0x80000000, v178, s4
	v_cndmask_b32_e64 v179, 0x80000000, v179, s4
	v_cndmask_b32_e64 v180, 0x80000000, v180, s4
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s9, s55, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s40, 0xff800000, v97
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v99, v99
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v53, v[116:117]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[130:133], v36 offset1:1
	ds_load_2addr_stride64_b64 v[134:137], v36 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[138:141], v48 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[130:131], v[11:12], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[132:133], v[11:12], v[108:115] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[134:135], v[11:12], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[136:137], v[11:12], v[108:115] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[108:111], v48 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[112:115], v49 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[138:139], v[13:14], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[140:141], v[13:14], v[124:131] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v132, v146, s55, 1
	v_add_lshl_u32 v133, v147, s55, 1
	v_add_lshl_u32 v134, v148, s55, 1
	v_add_lshl_u32 v135, v149, s55, 1
	v_add_lshl_u32 v136, v150, s55, 1
	v_add_lshl_u32 v137, v151, s55, 1
	v_add_lshl_u32 v138, v152, s55, 1
	v_add_lshl_u32 v139, v153, s55, 1
	v_add_lshl_u32 v140, v154, s55, 1
	v_cndmask_b32_e64 v141, 0x80000000, v20, s4
	v_cndmask_b32_e64 v146, 0x80000000, v102, s4
	v_cndmask_b32_e64 v147, 0x80000000, v103, s4
	v_cndmask_b32_e64 v154, 0x80000000, v104, s4
	v_cndmask_b32_e64 v187, 0x80000000, v132, s4
	v_cndmask_b32_e64 v188, 0x80000000, v133, s4
	v_cndmask_b32_e64 v189, 0x80000000, v134, s4
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[108:109], v[13:14], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[110:111], v[13:14], v[169:176] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[108:111], v49 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[112:113], v[15:16], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[114:115], v[15:16], v[124:131] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[112:115], v50 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v190, 0x80000000, v135, s4
	v_cndmask_b32_e64 v191, 0x80000000, v136, s4
	v_cndmask_b32_e64 v192, 0x80000000, v137, s4
	v_cndmask_b32_e64 v193, 0x80000000, v138, s4
	v_cndmask_b32_e64 v194, 0x80000000, v139, s4
	v_cndmask_b32_e64 v195, 0x80000000, v140, s4
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[108:109], v[15:16], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[110:111], v[15:16], v[169:176] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[108:111], v50 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[116:123], v[112:113], v[17:18], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[124:131], v[114:115], v[17:18], v[124:131] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v112, v142, s55, 1
	v_add_lshl_u32 v113, v143, s55, 1
	v_add_lshl_u32 v114, v144, s55, 1
	v_add_lshl_u32 v115, v145, s55, 1
	v_cndmask_b32_e64 v142, 0x80000000, v21, s4
	v_cndmask_b32_e64 v145, 0x80000000, v22, s4
	v_cndmask_b32_e64 v112, 0x80000000, v112, s4
	v_cndmask_b32_e64 v113, 0x80000000, v113, s4
	v_cndmask_b32_e64 v114, 0x80000000, v114, s4
	v_cndmask_b32_e64 v115, 0x80000000, v115, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v196, v116
	v_cvt_f32_i32_e32 v152, v122
	v_cvt_f32_i32_e32 v148, v123
	v_cvt_f32_i32_e32 v149, v124
	v_cvt_f32_i32_e32 v144, v125
	v_cvt_f32_i32_e32 v143, v126
	v_cvt_f32_i32_e32 v137, v127
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[161:168], v[108:109], v[17:18], v[161:168] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[169:176], v[110:111], v[17:18], v[169:176] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v134, v128
	v_cvt_f32_i32_e32 v135, v129
	v_cvt_f32_i32_e32 v136, v130
	v_cvt_f32_i32_e32 v132, v131
	v_cvt_f32_i32_e32 v133, v161
	v_cvt_f32_i32_e32 v129, v162
	v_cvt_f32_i32_e32 v128, v163
	v_cvt_f32_i32_e32 v116, v165
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[19:22], v19, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v165, v141, s[64:67], 0 offen
	buffer_load_u16 v163, v142, s[64:67], 0 offen
	buffer_load_u16 v162, v145, s[64:67], 0 offen
	buffer_load_u16 v161, v146, s[64:67], 0 offen
	buffer_load_u16 v153, v147, s[64:67], 0 offen
	buffer_load_u16 v154, v154, s[64:67], 0 offen
	buffer_load_u16 v155, v155, s[64:67], 0 offen
	buffer_load_u16 v156, v156, s[64:67], 0 offen
	buffer_load_u16 v157, v157, s[64:67], 0 offen
	buffer_load_u16 v147, v112, s[64:67], 0 offen
	buffer_load_u16 v146, v113, s[64:67], 0 offen
	buffer_load_u16 v145, v114, s[64:67], 0 offen
	buffer_load_u16 v138, v115, s[64:67], 0 offen
	buffer_load_u16 v139, v187, s[64:67], 0 offen
	buffer_load_u16 v140, v188, s[64:67], 0 offen
	buffer_load_u16 v141, v189, s[64:67], 0 offen
	buffer_load_u16 v142, v190, s[64:67], 0 offen
	buffer_load_u16 v131, v191, s[64:67], 0 offen
	buffer_load_u16 v130, v192, s[64:67], 0 offen
	buffer_load_u16 v127, v193, s[64:67], 0 offen
	buffer_load_u16 v122, v194, s[64:67], 0 offen
	buffer_load_u16 v123, v195, s[64:67], 0 offen
	buffer_load_u16 v124, v181, s[64:67], 0 offen
	buffer_load_u16 v125, v182, s[64:67], 0 offen
	buffer_load_u16 v126, v183, s[64:67], 0 offen
	buffer_load_u16 v109, v184, s[64:67], 0 offen
	buffer_load_u16 v110, v185, s[64:67], 0 offen
	buffer_load_u16 v111, v186, s[64:67], 0 offen
	buffer_load_u16 v112, v177, s[64:67], 0 offen
	buffer_load_u16 v113, v178, s[64:67], 0 offen
	buffer_load_u16 v114, v179, s[64:67], 0 offen
	buffer_load_u16 v115, v180, s[64:67], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v101, 0, v35
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v160, v117
	v_cvt_f32_i32_e32 v159, v118
	v_cvt_f32_i32_e32 v117, v166
	v_cvt_f32_i32_e32 v118, v167
	v_cvt_f32_i32_e32 v151, v121
	v_cvt_f32_i32_e32 v121, v164
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, v95, v196
	v_cvt_f32_i32_e32 v150, v120
	v_cvt_f32_i32_e32 v120, v169
	v_cvt_f32_i32_e32 v102, v170
	v_cvt_f32_i32_e32 v103, v171
	v_cvt_f32_i32_e32 v104, v172
	v_cvt_f32_i32_e32 v158, v119
	v_cvt_f32_i32_e32 v119, v168
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v168, 0, v38
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v105, v173
	v_mul_f32_e32 v134, v95, v134
	v_mul_f32_e32 v128, v95, v128
	v_cvt_f32_i32_e32 v106, v174
	v_cvt_f32_i32_e32 v107, v175
	v_cvt_f32_i32_e32 v108, v176
	v_mul_f32_e32 v102, v95, v102
	v_mul_f32_e32 v104, v95, v104
	v_mul_f32_e32 v106, v95, v106
	v_mul_f32_e32 v107, v95, v107
	v_mul_f32_e32 v108, v95, v108
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v143, v95, v143
	v_mul_f32_e32 v137, v95, v137
	v_mul_f32_e32 v129, v95, v129
	v_mul_f32_e32 v121, v95, v121
	v_mul_f32_e32 v105, v95, v105
	v_mul_f32_e32 v103, v95, v103
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v167, 0xff800000, v22, s2
	v_cndmask_b32_e64 v166, 0xff800000, v20, s2
	v_cndmask_b32_e64 v22, 0xff800000, v21, s2
	v_cndmask_b32_e64 v21, 0xff800000, v19, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v167
	v_cmp_neq_f32_e64 s5, 0xff800000, v166
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_neq_f32_e64 s6, 0xff800000, v22
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v54, v[21:22], v[166:167] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[19:20], v101
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v21
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[21:22], v55
	ds_load_b64 v[169:170], v56
	ds_load_b64 v[171:172], v57
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v165, 16, v165
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v173, 16, v156
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v157, 16, v157
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v145, 16, v145
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v131, 16, v131
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s6, s2, s6
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v127, 16, v127
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v167, 0, v39
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v109, 16, v109
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v110, 16, v110
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v111, 16, v111
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(2) lgkmcnt(3)
	v_dual_mul_f32 v166, 0x3fb8aa3b, v19 :: v_dual_lshlrev_b32 v113, 16, v113
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v19, v95, v160 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v166, v164, v165 :: v_dual_lshlrev_b32 v115, 16, v115
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v164, 0x3fb8aa3b, v20
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v165, 0x3fb8aa3b, v21 :: v_dual_lshlrev_b32 v20, 16, v163
	v_dual_mov_b32 v21, v100 :: v_dual_mul_f32 v100, v95, v148
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v148, 16, v153
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v164, v19, v20 :: v_dual_mov_b32 v163, v98
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v19, v95, v159 :: v_dual_lshlrev_b32 v20, 16, v162
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v160, 0, v51
	v_add_nc_u32_e32 v159, 0, v52
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v98, v95, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.h, 0
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v165, v19, v20
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v19, v95, v158 :: v_dual_lshlrev_b32 v20, 16, v161
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v158, 0x3fb8aa3b, v22
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v22, v95, v151
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v155
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v151, 0x3fb8aa3b, v171
	ds_load_b64 v[155:156], v59
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v158, v19, v20
	v_mad_u64_u32 v[19:20], null, s8, s43, v[10:11]
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v20, v95, v150
	v_mul_f32_e32 v152, v95, v149
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v149, 0x3fb8aa3b, v169 :: v_dual_lshlrev_b32 v150, 16, v154
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v151, v98, v161
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[153:154], v58
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v161, v95, v133
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v149, v20, v148 :: v_dual_mul_f32 v148, 0x3fb8aa3b, v170
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[169:170], v60
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v133, 16, v138
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s2, s5
	s_and_b32 s5, s2, s7
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v148, v22, v150
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v150, 0x3fb8aa3b, v172
	ds_load_b64 v[171:172], v61
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v132, v95, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v138, 16, v139
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v150, v100, v173 :: v_dual_lshlrev_b32 v139, 16, v140
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v100, v95, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v144, 16, v147
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v147, 0x3fb8aa3b, v156
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s2, s2, s4
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s4, s0, s9
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v153, 0x3fb8aa3b, v153
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v20.h, v162.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v147, v137, v145
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v95, v135
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v135, 0x3fb8aa3b, v170
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v153, v152, v157 :: v_dual_mul_f32 v152, 0x3fb8aa3b, v154
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v154, 0x3fb8aa3b, v155 :: v_dual_mul_f32 v157, v95, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v135, v145, v138 :: v_dual_lshlrev_b32 v140, 16, v141
	v_fmac_f32_e32 v152, v100, v144
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v144, 16, v146
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v138, 0x3fb8aa3b, v171
	ds_load_b64 v[155:156], v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v22.h, v162.h
	v_mov_b16_e64 v98.h, v162.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v154, v143, v144
	v_dual_fmac_f32 v138, v157, v139 :: v_dual_mul_f32 v139, 0x3fb8aa3b, v172
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v142, 16, v142
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[171:172], v65
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v157, v95, v118 :: v_dual_lshlrev_b32 v118, 16, v123
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v139, v132, v140 :: v_dual_mul_f32 v136, 0x3fb8aa3b, v169
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[169:170], v64
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v120, v95, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.h, v162.h
	v_mov_b16_e64 v144.h, v162.h
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v136, v134, v133
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[133:134], v62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v100.h, v162.h
	v_mov_b16_e64 v146.h, v162.h
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v145, 0x3fb8aa3b, v156 :: v_dual_lshlrev_b32 v130, 16, v130
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v156, v95, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.h, v162.h
	v_mov_b16_e64 v132.h, v162.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v145, v121, v127
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v127, 1, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v121.h, v162.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s72
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v127, 0x80000000, v127, s4
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v169, 0x3fb8aa3b, v169
	v_mul_f32_e32 v173, 0x3fb8aa3b, v170
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v140, 0x3fb8aa3b, v134 :: v_dual_mul_f32 v141, 0x3fb8aa3b, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v173, v156, v118 :: v_dual_mul_f32 v156, 0x3fb8aa3b, v171
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v171, 0x3fb8aa3b, v172 :: v_dual_fmac_f32 v140, v129, v131
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v141, v161, v142 :: v_dual_mul_f32 v142, 0x3fb8aa3b, v155
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v155, v19, s43, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v19, v95, v116 :: v_dual_lshlrev_b32 v116, 16, v122
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v122, 16, v124
	v_lshlrev_b32_e32 v124, 16, v125
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v142, v128, v130 :: v_dual_mul_f32 v161, v95, v119
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v169, v19, v116
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	ds_load_b64 v[116:117], v66
	ds_load_b64 v[118:119], v67
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v171, v161, v124 :: v_dual_lshlrev_b32 v126, 16, v126
	v_fmac_f32_e32 v156, v157, v122
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[122:123], v68
	ds_load_b64 v[124:125], v69
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v19, 0, 1, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v175, 0x80000000, v155, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.h, v162.h
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v19.l, 8, v19.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v128.h, v162.h
	v_mov_b16_e64 v133.h, v162.h
	v_mov_b16_e64 v129.h, v162.h
	v_mov_b16_e64 v134.h, v162.h
	v_mov_b16_e64 v130.h, v162.h
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v161, 0x3fb8aa3b, v116
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v116, 0, 1, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v172, 0x3fb8aa3b, v119 :: v_dual_fmac_f32 v161, v120, v126
	v_mul_f32_e32 v126, 0x3fb8aa3b, v117
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v117, 0, 1, s5
	v_mov_b16_e32 v20.l, v116.l
	v_cndmask_b32_e64 v116, 0, 1, s8
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v120, 0x3fb8aa3b, v118 :: v_dual_mul_f32 v125, 0x3fb8aa3b, v125
	v_mul_f32_e32 v170, 0x3fb8aa3b, v122
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v20.l, v20.l, v19.l
	v_mov_b16_e32 v19.l, v117.l
	v_mov_b16_e32 v22.l, v116.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v174, 0x3fb8aa3b, v123
	v_mul_f32_e32 v124, 0x3fb8aa3b, v124
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v125, v108, v115 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v19.l, 8, v19.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v126, v102, v109
	v_fmac_f32_e32 v120, v103, v110
	v_fmac_f32_e32 v172, v104, v111
	v_fmac_f32_e32 v174, v106, v113
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v22.l, v22.l, v19.l
	ds_store_b16 v168, v20
	ds_store_b16 v70, v22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v20, v167 offset:32
	ds_load_u16_d16 v22, v71 offset:32
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v19, v163, v163 :: v_dual_fmac_f32 v170, v105, v112
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v124, v107, v114
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_u16_d16 v98, v167
	ds_load_u16_d16 v100, v71
	ds_load_u16_d16 v102, v72
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v102, v72 offset:32
	ds_load_u16_d16 v103, v73
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v103, v73 offset:32
	ds_load_u16_d16 v104, v74
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v104, v74 offset:32
	ds_load_u16_d16 v105, v75
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v105, v75 offset:32
	ds_load_u16_d16 v106, v76
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v106, v76 offset:32
	ds_load_u16_d16 v107, v77
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v107, v77 offset:32
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v108.l, 1, v20.l
	v_and_b16 v108.h, 1, v22.l
	v_lshrrev_b16 v20.l, 8, v20.l
	v_lshrrev_b16 v22.l, 8, v22.l
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u16_e64 s4, 1, v108.l
	v_and_b16 v108.l, 1, v102.l
	v_cmp_eq_u16_e64 s7, 1, v108.h
	v_and_b16 v108.h, 1, v102.h
	v_lshrrev_b16 v102.l, 8, v102.l
	v_lshrrev_b16 v102.h, 8, v102.h
	v_cmp_eq_u16_e64 s15, 1, v108.l
	v_and_b16 v108.l, 1, v103.l
	v_cmp_eq_u16_e64 s9, 1, v108.h
	v_and_b16 v108.h, 1, v103.h
	v_lshrrev_b16 v103.l, 8, v103.l
	v_lshrrev_b16 v103.h, 8, v103.h
	v_cmp_eq_u16_e64 s16, 1, v108.l
	v_and_b16 v108.l, 1, v104.l
	v_cmp_eq_u16_e64 s10, 1, v108.h
	v_and_b16 v108.h, 1, v104.h
	v_lshrrev_b16 v104.l, 8, v104.l
	v_lshrrev_b16 v104.h, 8, v104.h
	v_cmp_eq_u16_e64 s17, 1, v108.l
	v_and_b16 v108.l, 1, v105.l
	v_cmp_eq_u16_e64 s11, 1, v108.h
	v_and_b16 v108.h, 1, v105.h
	v_lshrrev_b16 v105.h, 8, v105.h
	v_lshrrev_b16 v105.l, 8, v105.l
	v_cmp_eq_u16_e64 s18, 1, v108.l
	v_and_b16 v108.l, 1, v106.l
	v_cmp_eq_u16_e64 s12, 1, v108.h
	v_and_b16 v108.h, 1, v106.h
	v_lshrrev_b16 v106.l, 8, v106.l
	v_lshrrev_b16 v106.h, 8, v106.h
	v_cmp_eq_u16_e64 s19, 1, v108.l
	v_and_b16 v108.l, 1, v107.l
	v_cmp_eq_u16_e64 s13, 1, v108.h
	v_and_b16 v108.h, 1, v107.h
	v_lshrrev_b16 v107.l, 8, v107.l
	v_lshrrev_b16 v107.h, 8, v107.h
	v_cmp_eq_u16_e64 s20, 1, v108.l
	v_and_b16 v108.l, 1, v98.l
	v_lshrrev_b16 v98.l, 8, v98.l
	v_cmp_eq_u16_e64 s14, 1, v108.h
	v_and_b16 v108.h, 1, v100.l
	v_lshrrev_b16 v100.l, 8, v100.l
	v_and_b16 v105.h, 1, v105.h
	v_and_b16 v98.l, 1, v98.l
	v_and_b16 v102.l, 1, v102.l
	v_and_b16 v103.l, 1, v103.l
	v_and_b16 v100.l, 1, v100.l
	v_and_b16 v104.l, 1, v104.l
	v_and_b16 v20.l, 1, v20.l
	v_and_b16 v22.l, 1, v22.l
	v_and_b16 v102.h, 1, v102.h
	v_and_b16 v103.h, 1, v103.h
	v_and_b16 v104.h, 1, v104.h
	v_and_b16 v105.l, 1, v105.l
	v_and_b16 v106.l, 1, v106.l
	v_and_b16 v106.h, 1, v106.h
	v_and_b16 v107.l, 1, v107.l
	v_and_b16 v107.h, 1, v107.h
	v_cmp_eq_u16_e64 s21, 1, v108.l
	v_cmp_eq_u16_e64 s23, 1, v98.l
	v_cmp_eq_u16_e64 s37, 1, v105.h
	v_cmp_eq_u16_e64 s22, 1, v108.h
	v_cmp_eq_u16_e64 s24, 1, v100.l
	v_cmp_eq_u16_e64 s25, 1, v102.l
	v_cmp_eq_u16_e64 s26, 1, v103.l
	v_cmp_eq_u16_e64 s27, 1, v104.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v166, s21
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v105.l
	v_cmp_eq_u16_e64 s29, 1, v106.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, 0xff800000, v164, s23
	v_cndmask_b32_e64 v157, 0xff800000, v169, s9
	v_cndmask_b32_e64 v170, 0xff800000, v170, s13
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s30, 1, v107.l
	v_cmp_eq_u16_e64 s31, 1, v20.l
	v_cmp_eq_u16_e64 s33, 1, v22.l
	v_cmp_eq_u16_e64 s34, 1, v102.h
	v_cmp_eq_u16_e64 s35, 1, v103.h
	v_cmp_eq_u16_e64 s36, 1, v104.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v172, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s38, 1, v106.h
	v_cmp_eq_u16_e64 s39, 1, v107.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v165, s22
	v_cndmask_b32_e64 v112, 0xff800000, v158, s24
	v_cndmask_b32_e64 v113, 0xff800000, v149, s15
	v_cndmask_b32_e64 v114, 0xff800000, v148, s25
	v_cndmask_b32_e64 v115, 0xff800000, v151, s16
	v_cndmask_b32_e64 v116, 0xff800000, v150, s26
	v_cndmask_b32_e64 v117, 0xff800000, v153, s17
	v_cndmask_b32_e64 v118, 0xff800000, v152, s27
	v_cndmask_b32_e64 v119, 0xff800000, v154, s18
	v_cndmask_b32_e64 v122, 0xff800000, v136, s19
	v_cndmask_b32_e64 v151, 0xff800000, v138, s20
	v_cndmask_b32_e64 v153, 0xff800000, v141, s4
	v_cndmask_b32_e64 v155, 0xff800000, v142, s7
	v_cndmask_b32_e64 v164, 0xff800000, v156, s10
	v_cndmask_b32_e64 v166, 0xff800000, v161, s11
	v_cndmask_b32_e64 v168, 0xff800000, v120, s12
	v_cndmask_b32_e64 v120, 0xff800000, v147, s28
	v_cndmask_b32_e64 v123, 0xff800000, v135, s29
	v_cndmask_b32_e64 v135, 0xff800000, v124, s14
	v_cndmask_b32_e64 v152, 0xff800000, v139, s30
	v_cndmask_b32_e64 v154, 0xff800000, v140, s31
	v_cndmask_b32_e64 v156, 0xff800000, v145, s33
	v_cndmask_b32_e64 v158, 0xff800000, v173, s34
	v_cndmask_b32_e64 v165, 0xff800000, v171, s35
	v_cndmask_b32_e64 v171, 0xff800000, v174, s38
	v_cndmask_b32_e64 v136, 0xff800000, v125, s39
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v145, v169, v170
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v167, 0xff800000, v126, s36
	ds_store_b64 v101, v[109:110]
	ds_store_b64 v55, v[111:112]
	ds_store_b64 v56, v[113:114]
	ds_store_b64 v57, v[115:116]
	ds_store_b64 v58, v[117:118]
	ds_store_b64 v59, v[119:120]
	ds_store_b64 v60, v[122:123]
	ds_store_b64 v61, v[151:152]
	ds_store_b64 v62, v[153:154]
	ds_store_b64 v63, v[155:156]
	ds_store_b64 v64, v[157:158]
	ds_store_b64 v65, v[164:165]
	ds_store_b64 v66, v[166:167]
	ds_store_b64 v67, v[168:169]
	ds_store_b64 v68, v[170:171]
	ds_store_b64 v69, v[135:136]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[124:127], v127, s[68:71], 0 offen
	buffer_load_b128 v[147:150], v175, s[68:71], 0 offen
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v118, v119, v120
	v_max3_f32 v102, v122, v123, v151
	v_max3_f32 v103, v152, v153, v154
	v_max_f32_e32 v107, v109, v110
	v_max3_f32 v108, v112, v113, v114
	v_max3_f32 v104, v155, v156, v157
	v_max3_f32 v105, v158, v164, v165
	v_max3_f32 v106, v166, v167, v168
	v_max3_f32 v142, v115, v116, v117
	v_max_f32_e32 v161, v135, v136
	v_max3_f32 v101, v101, v102, v103
	v_max3_f32 v102, v107, v111, v108
	v_max3_f32 v103, v104, v105, v106
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[138:141], v54 offset1:16
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v104, v145, v171, v161
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v102, v142, v101
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v101, v103, v104
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v102, v101, s74, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v161, v97, v101, v102
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v103, v140, v140 :: v_dual_max_f32 v104, v138, v138
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v102, v110, v161
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v110, v97, v161
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v112, v161
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v104, v103
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v109, v161
	v_sub_f32_e32 v142, v157, v161
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v110, v110
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v157, v170, v161
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v101, v101, v139, v141
.Ltmp17:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v107, v114, v161
	v_sub_f32_e32 v108, v115, v161
	v_sub_f32_e32 v109, v116, v161
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v157, v157
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v120, v161
	v_sub_f32_e32 v116, v123, v161
	v_sub_f32_e32 v120, v154, v161
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v110, 0, v110, s40
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v111, v161
	v_sub_f32_e32 v106, v113, v161
	v_sub_f32_e32 v111, v117, v161
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v113, v119, v161 :: v_dual_mul_f32 v2, v2, v110
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v102
	v_exp_f32_e32 v102, v103
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v104
	v_exp_f32_e32 v104, v105
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v110
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v106
	v_exp_f32_e32 v106, v107
	v_exp_f32_e32 v107, v108
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v157, s13
	v_cndmask_b32_e64 v97, 0, v97, s23
	v_cndmask_b32_e64 v102, 0, v102, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v115, v122, v161 :: v_dual_mul_f32 v4, v4, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v117, v151, v161 :: v_dual_mul_f32 v6, v6, v110
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s15
	v_cndmask_b32_e64 v107, 0, v107, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v119, v153, v161 :: v_dual_mul_f32 v8, v8, v110
	v_sub_f32_e32 v122, v155, v161
	v_sub_f32_e32 v154, v167, v161
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v162.l, v97.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v156, v161
	v_sub_f32_e32 v156, v169, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v20.l, v102.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v145, v158, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v22.l, v103.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v151, v164, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v98.l, v105.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v166, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v100.l, v107.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v168, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v131.l, v157.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v118, v161
	v_sub_f32_e32 v118, v152, v161
	v_sub_f32_e32 v152, v165, v161
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v108, v109
	v_exp_f32_e32 v109, v111
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v110, 1, v162
	v_and_b32_e32 v20, 1, v20
	v_and_b32_e32 v22, 1, v22
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v131, 1, v131
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v112
	v_exp_f32_e32 v112, v113
	v_exp_f32_e32 v113, v114
	v_exp_f32_e32 v114, v115
	v_exp_f32_e32 v115, v116
	v_exp_f32_e32 v116, v117
	v_exp_f32_e32 v117, v118
	v_exp_f32_e32 v118, v119
	v_exp_f32_e32 v119, v120
	v_exp_f32_e32 v120, v122
	v_exp_f32_e32 v122, v123
	v_exp_f32_e32 v123, v142
	v_exp_f32_e32 v142, v145
	v_exp_f32_e32 v145, v151
	v_exp_f32_e32 v151, v152
	v_exp_f32_e32 v152, v153
	v_exp_f32_e32 v153, v154
	v_exp_f32_e32 v154, v155
	v_exp_f32_e32 v155, v156
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v156, v101
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v114, 0, v114, s19
	v_cndmask_b32_e64 v116, 0, v116, s20
	v_cndmask_b32_e64 v104, 0, v104, s24
	v_cndmask_b32_e64 v118, 0, v118, s4
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v146.l, v114.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v135, v135, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v116.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v152, s11
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v156, v156, v156
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v104.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s25
	v_cndmask_b32_e64 v109, 0, v109, s17
	v_cndmask_b32_e64 v120, 0, v120, s7
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v101, v101, v156
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.l, v118.h
	v_and_b32_e32 v146, 1, v146
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v156, v101 :: v_dual_and_b32 v137, 1, v137
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v102, v102
	v_mov_b16_e64 v128.l, v152.h
	v_add3_u32 v20, v102, v20, 0x7fff
	v_and_b32_e32 v102, 1, v162
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, 0, v145, s10
	v_cndmask_b32_e64 v154, 0, v154, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v97, v97
	v_cmp_o_f32_e64 s12, v103, v103
	v_cmp_o_f32_e64 s16, v107, v107
	v_mov_b16_e64 v143.l, v109.h
	v_mov_b16_e64 v133.l, v120.h
	v_and_b32_e32 v132, 1, v132
	v_add3_u32 v97, v97, v110, 0x7fff
	v_add3_u32 v22, v103, v22, 0x7fff
	v_mov_b16_e64 v162.l, v106.h
	v_add3_u32 v100, v107, v100, 0x7fff
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v156, v156 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v128, 1, v128
	v_add3_u32 v107, v114, v146, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v20.h, s11
	v_add3_u32 v20, v104, v102, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v108, s26
	v_cndmask_b32_e64 v112, 0, v112, s18
	v_cndmask_b32_e64 v135, 0, v135, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v104, v104
	v_cmp_o_f32_e64 s26, v118, v118
	v_mov_b16_e64 v129.l, v145.h
	v_and_b32_e32 v143, 1, v143
	v_and_b32_e32 v133, 1, v133
	v_add3_u32 v110, v118, v132, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s10
	v_cndmask_b16 v20.l, 0x7fff, v22.h, s12
	v_and_b32_e32 v22, 1, v162
	v_cndmask_b16 v107.l, 0x7fff, v100.h, s16
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v156, v156
.Ltmp31:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v123, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v118, v152, v128, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v111, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v105, v105
	v_cmp_o_f32_e64 s15, v106, v106
	v_cmp_o_f32_e64 s18, v109, v109
	v_mov_b16_e64 v144.l, v112.h
	v_mov_b16_e64 v121.l, v135.h
	v_and_b32_e32 v129, 1, v129
	v_add3_u32 v98, v105, v98, 0x7fff
	v_add3_u32 v103, v109, v143, 0x7fff
	v_mov_b16_e64 v162.l, v108.h
	v_cndmask_b16 v118.l, 0x7fff, v110.h, s26
	v_permlanex16_b32 v102, v97, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s13
	v_add3_u32 v22, v106, v22, 0x7fff
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v110, v101, v100
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v134.l, v123.h
	v_add3_u32 v109, v116, v137, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v144, 1, v144
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v106, v110 :: v_dual_and_b32 v121, 1, v121
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v98.l, 0x7fff, v98.h, s14
	v_cndmask_b16 v109.l, 0x7fff, v103.h, s18
	v_and_b32_e32 v103, 1, v162
	v_mov_b16_e64 v162.l, v111.h
	v_perm_b32 v100, v102, v97, v78
	v_perm_b32 v101, v102, v97, v94
	v_permlanex16_b32 v97, v20, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v98.h, 0x7fff, v22.h, s15
	v_and_b32_e32 v134, 1, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v115, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s17, v108, v108
	v_cmp_o_f32_e64 s20, v112, v112
	v_cmp_o_f32_e64 s22, v114, v114
	v_add3_u32 v105, v112, v144, 0x7fff
	v_add3_u32 v22, v108, v103, 0x7fff
	v_and_b32_e32 v104, 1, v162
	v_mov_b16_e64 v162.l, v113.h
	v_perm_b32 v102, v97, v20, v78
	v_perm_b32 v103, v97, v20, v94
	v_permlanex16_b32 v20, v98, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v106, v106 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.l, v154.h
	v_add3_u32 v112, v120, v133, 0x7fff
	v_add3_u32 v114, v123, v134, 0x7fff
	v_cmp_o_f32_e64 s19, v111, v111
	v_cmp_o_f32_e64 s24, v116, v116
	v_cndmask_b16 v112.l, 0x7fff, v105.h, s20
	v_cndmask_b16 v114.l, 0x7fff, v107.h, s22
	v_cndmask_b16 v107.h, 0x7fff, v22.h, s17
	v_add3_u32 v22, v111, v104, 0x7fff
	v_and_b32_e32 v97, 1, v162
	v_mov_b16_e64 v162.l, v115.h
	v_perm_b32 v104, v20, v98, v78
	v_perm_b32 v105, v20, v98, v94
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v106, v106
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v116, v145, v129, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s21, v113, v113
	v_cmp_o_f32_e64 s28, v120, v120
	v_cndmask_b16 v116.l, 0x7fff, v109.h, s24
	v_cndmask_b16 v109.h, 0x7fff, v22.h, s19
	v_add3_u32 v22, v113, v97, 0x7fff
	v_and_b32_e32 v97, 1, v162
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v110, v98
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v120, v154, v130, 0x7fff
	v_cmp_o_f32_e64 s23, v115, v115
	v_cndmask_b16 v120.l, 0x7fff, v112.h, s28
	v_mov_b16_e64 v162.l, v117.h
	v_cndmask_b16 v112.h, 0x7fff, v22.h, s21
	v_add3_u32 v22, v115, v97, 0x7fff
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v115, v98
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v123, v123
	v_and_b32_e32 v97, 1, v162
	v_add3_u32 v121, v135, v121, 0x7fff
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v115, v115 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v122, s33
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v117, v117
	v_cndmask_b16 v121.l, 0x7fff, v114.h, s30
	v_mov_b16_e64 v162.l, v119.h
	v_cndmask_b16 v114.h, 0x7fff, v22.h, s23
	v_add3_u32 v22, v117, v97, 0x7fff
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v117, v115, v115
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s33, v145, v145
	v_and_b32_e32 v97, 1, v162
	v_mov_b16_e64 v162.l, v122.h
	v_add3_u32 v123, v157, v131, 0x7fff
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v98, v117
.Ltmp49:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v151, 0, v151, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v119, v119
	v_cmp_o_f32_e64 s35, v152, v152
	v_cndmask_b16 v123.l, 0x7fff, v116.h, s33
	v_cndmask_b16 v116.h, 0x7fff, v22.h, s25
	v_add3_u32 v22, v119, v97, 0x7fff
	v_and_b32_e32 v97, 1, v162
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v99, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v122, v122
	v_cndmask_b16 v133.l, 0x7fff, v118.h, s35
	v_cndmask_b16 v118.h, 0x7fff, v22.h, s27
	v_add3_u32 v22, v122, v97, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v138, v99
	v_sub_f32_e32 v128, v140, v99
	v_sub_f32_e32 v129, v139, v99
	v_sub_f32_e32 v130, v141, v99
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v20, v107, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v131, v122
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v130, v130
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v142, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v106, v20, v107, v78
	v_perm_b32 v107, v20, v107, v94
	v_permlanex16_b32 v20, v109, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s2
	v_cndmask_b32_e64 v128, 0, v128, s8
	v_cndmask_b32_e64 v129, 0, v129, s6
	v_cndmask_b32_e64 v130, 0, v130, s5
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v108, v20, v109, v78
	v_perm_b32 v109, v20, v109, v94
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v131, v128
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v20, v112, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v129, v130
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v142.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v154, v154
	v_perm_b32 v110, v20, v112, v78
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v111, v20, v112, v94
	v_permlanex16_b32 v20, v114, s74, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v97, 1, v162
	v_mov_b16_e64 v162.l, v151.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v158, v171, v161 :: v_dual_mov_b32 v129, v128
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s36
	v_cndmask_b32_e64 v136, 0, v136, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v135, v135
	v_cndmask_b16 v135.l, 0x7fff, v120.h, s37
	v_perm_b32 v112, v20, v114, v78
	v_perm_b32 v113, v20, v114, v94
	v_permlanex16_b32 v20, v116, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v120.h, 0x7fff, v22.h, s29
	v_add3_u32 v22, v142, v97, 0x7fff
	v_and_b32_e32 v97, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v129, v129 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v142, v142
	v_perm_b32 v114, v20, v116, v78
	v_perm_b32 v115, v20, v116, v94
	v_permlanex16_b32 v20, v118, s74, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v162.l, v153.h
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v128, v129
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v151, v151
	v_cndmask_b16 v165.l, 0x7fff, v121.h, s39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v157, v157
	v_perm_b32 v116, v20, v118, v78
	v_perm_b32 v117, v20, v118, v94
	v_permlanex16_b32 v20, v120, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v121.h, 0x7fff, v22.h, s31
	v_add3_u32 v22, v151, v97, 0x7fff
	v_and_b32_e32 v97, 1, v162
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v129, v128
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v153, v153
	v_cndmask_b16 v164.l, 0x7fff, v123.h, s38
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v98, v19, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v118, v20, v120, v78
	v_perm_b32 v119, v20, v120, v94
	v_permlanex16_b32 v19, v121, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v123.h, 0x7fff, v22.h, s34
	v_add3_u32 v20, v153, v97, 0x7fff
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v129, v129 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp63:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v162.l, v155.h
	v_perm_b32 v120, v19, v121, v78
	v_perm_b32 v121, v19, v121, v94
	v_permlanex16_b32 v19, v123, s74, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v133.h, 0x7fff, v20.h, s36
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v128, v129
.Ltmp65:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v128.l, v124.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v128.h, v147.l
	v_mov_b16_e64 v147.l, v124.h
	v_mov_b16_e32 v124.l, v125.l
	v_mov_b16_e64 v124.h, v148.l
	v_mov_b16_e64 v148.l, v125.h
	v_mov_b16_e32 v125.l, v126.l
	v_mov_b16_e64 v125.h, v149.l
	v_mov_b16_e64 v149.l, v126.h
	v_mov_b16_e32 v126.l, v127.l
	v_mov_b16_e64 v126.h, v150.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v22, 1, v162
	v_mov_b16_e64 v162.l, v158.h
	v_perm_b32 v122, v19, v123, v78
	v_perm_b32 v123, v19, v123, v94
	v_permlanex16_b32 v19, v133, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v150.l, v127.h
	ds_store_b32 v160, v128
	ds_store_b32 v79, v147
	ds_store_b32 v80, v124
	ds_store_b32 v81, v148
	ds_store_b32 v82, v125
	ds_store_b32 v83, v149
	ds_store_b32 v84, v126
	ds_store_b32 v85, v150
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[124:127], v159
	ds_load_b128 v[128:131], v86
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v155, v155
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v97, v163, v98
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v20, v155, v22, 0x7fff
	v_and_b32_e32 v22, 1, v162
	v_mov_b16_e64 v162.l, v136.h
	v_perm_b32 v132, v19, v133, v78
	v_perm_b32 v133, v19, v133, v94
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v19, v134
.Ltmp67:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[137:140], v87
	ds_load_b128 v[141:144], v88
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v158, v158
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v97, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v135.h, 0x7fff, v20.h, s9
	v_add3_u32 v20, v158, v22, 0x7fff
	v_and_b32_e32 v22, 1, v162
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp69:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[145:148], v89
	ds_load_b128 v[149:152], v90
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v136, v136
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s10, 0xff800000, v163
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v164.h, 0x7fff, v20.h, s7
	v_add3_u32 v20, v136, v22, 0x7fff
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v19, v134, v19
.Ltmp71:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[153:156], v91
	ds_load_b128 v[157:160], v92
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v22, 0, v97, s10
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[124:131], v[100:107], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_cndmask_b16 v165.h, 0x7fff, v20.h, s4
.Ltmp72:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v97, v19
.Ltmp73:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v162, v135, s74, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v164, s74, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[137:144], v[108:115], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v100, v165, s74, 0xfedcba98 op_sel:[1,0]
.Ltmp74:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v97, v97 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v134, v162, v135, v78
	v_perm_b32 v135, v162, v135, v94
	v_perm_b32 v136, v20, v164, v78
	v_perm_b32 v137, v20, v164, v94
	v_perm_b32 v138, v100, v165, v78
	v_perm_b32 v139, v100, v165, v94
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v19, v97
.Ltmp77:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[145:152], v[116:123], v[1:8]
	v_mov_b32_e32 v97, v161
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v100, v21, v22
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[132:139], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v98, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v100, v8
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v29
	s_mov_b32 s1, 0x76543210
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshrrev_b32_e32 v10, 3, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp79:
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v98 :: v_dual_cndmask_b32 v12, 0, v100
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v27
	.loc	1 1038 13                       ; attention.py:1038:13
	v_lshrrev_b32_e32 v21, 5, v0
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s54, s54, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_permlanex16_b32 v11, v9, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_and_b32 v10, 28, v10
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_permlanex16_b32 v13, v12, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v2, 0, v2
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_add_nc_u32 v10, 0, v10
.Ltmp85:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v21, v26
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v12, v12, v13 :: v_dual_max_f32 v9, v9, v11
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_lshl_add_u32 v11, v28, 2, 0
.Ltmp88:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s43, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s41, s54
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v13, 0, v5, vcc_lo
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v10, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v9, v11
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v10, v12
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v10, v11
.Ltmp91:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v12, 0, v4, vcc_lo
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v5, v2
.Ltmp93:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v14, 0, v6 :: v_dual_mov_b32 v11, v3
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v15, 0, v7, vcc_lo
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v8, 0, v8, vcc_lo
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v5
.Ltmp98:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v9
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v8
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v15
.Ltmp100:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v4
	v_dual_add_f32 v3, v3, v11 :: v_dual_max_f32 v4, v9, v9
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, v10
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v8, v20
.Ltmp108:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v6 :: v_dual_mov_b32 v7, v1
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v15, v19 :: v_dual_mov_b32 v18, v14
.Ltmp111:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_dual_add_f32 v5, v10, v5 :: v_dual_mov_b32 v20, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp119:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v9, v2 :: v_dual_mov_b32 v10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v11, v3
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v9
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v10
	v_add_f32_e32 v3, v3, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v11, v2 :: v_dual_add_f32 v4, v3, v16
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v7, v5 :: v_dual_mov_b32 v16, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v3, v1 :: v_dual_mov_b32 v6, v4
.Ltmp127:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v5, v2 :: v_dual_add_f32 v12, v12, v16
	v_dual_mov_b32 v17, v13 :: v_dual_mov_b32 v10, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v16, v12
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp135:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v17
.Ltmp138:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_add_f32 v12, v12, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v14, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v16, v12 :: v_dual_add_f32 v13, v13, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v15, v19 :: v_dual_add_f32 v18, v8, v20
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v15, v13
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v22, v18
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v12, v16
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v15
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v12, v8
	v_add_f32_e32 v16, v17, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_add_f32 v17, v18, v22
	v_mov_b32_e32 v18, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp150:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v11, v11, v11
	v_dual_max_f32 v9, v9, v9 :: v_dual_add_f32 v10, v7, v10
.Ltmp151:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
	v_mov_b32_e32 v7, 0
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp152:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v11
.Ltmp153:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v7, v[9:10], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp154:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v13, v14 :: v_dual_lshlrev_b32 v9, 2, v0
	v_add_f32_e32 v15, v15, v18
	v_dual_add_f32 v6, v4, v6 :: v_dual_add_f32 v5, v2, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_add_f32 v7, v8, v12 :: v_dual_and_b32 v2, 0xc0, v9
	v_add_f32_e32 v4, v1, v3
.Ltmp155:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v8, 0xe0, v24
	v_and_b32_e32 v1, 28, v24
	v_and_b32_e32 v3, 32, v25
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v17, v17, v20 :: v_dual_add_nc_u32 v2, 0, v2
	v_add_f32_e32 v16, v16, v19
.Ltmp157:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v0, 63, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1038 13                       ; attention.py:1038:13
	v_add3_u32 v1, v2, v3, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[4:7]
	ds_store_b128 v8, v[14:17] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v0
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e64 s0, 0, v23
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
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
.Ltmp158:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
		.amdhsa_next_free_vgpr 197
		.amdhsa_next_free_sgpr 75
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_vgpr, 197
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.numbered_sgpr, 75
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10296
; TotalNumSgprs: 77
; NumVgprs: 197
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 77
; NumVGPRsForWavesPerEU: 197
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
.Ldebug_ranges3:
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
.Ldebug_ranges4:
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
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
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     77
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w8_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     197
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
