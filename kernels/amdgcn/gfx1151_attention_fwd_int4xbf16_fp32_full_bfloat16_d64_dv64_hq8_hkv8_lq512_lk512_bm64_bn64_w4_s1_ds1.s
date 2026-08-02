	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[84:87], s[0:1], 0x60
	s_load_b64 s[4:5], s[0:1], 0x70
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v38, 1, v0
	s_load_b256 s[68:75], s[0:1], 0x0
	v_dual_mov_b32 v44, 0x7632 :: v_dual_and_b32 v3, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s7, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v80, 0xff800000 :: v_dual_lshlrev_b32 v37, 4, v3
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s7
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v76, 0xff800000
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v45, 7, v0
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v81, 16, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s84, v38
	s_mul_i32 s9, s84, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v37
	v_bfe_i32 v57, v0, 2, 1
	v_bfe_i32 v61, v0, 3, 1
	v_bfe_i32 v62, v0, 5, 1
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_and_b32 v75, 15, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v37, s9
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v79, 0x78, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v48, v0, 0, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v2, 0x80000000, v1, s2
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v58, 8, v0
	v_mov_b32_e32 v18, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v39
	v_dual_mov_b32 v29, v17 :: v_dual_lshlrev_b32 v82, 4, v45
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v57, 0x2040, v57
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v71, 6, v81
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v62, 0x2040, v62
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v72, 0x410, v61
	v_mul_u32_u24_e32 v73, 0x90, v45
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	v_dual_mov_b32 v43, 0x5410 :: v_dual_lshlrev_b32 v50, 4, v0
	buffer_load_b128 v[33:36], v2, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, v1, v75
	v_dual_mov_b32 v77, 0xff800000 :: v_dual_lshlrev_b32 v68, 2, v0
	v_lshrrev_b32_e32 v65, 3, v0
	v_bfe_u32 v47, v0, 4, 1
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v49, 1, v0
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v51, 24, v0
	v_and_or_b32 v48, 0x1020, v48, v57
	v_lshl_or_b32 v57, v58, 4, v71
	v_and_or_b32 v58, 0x1020, v61, v62
	v_xor_b32_e32 v61, v82, v79
	v_xor_b32_e32 v85, v73, v72
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s8, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v2
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_and_b32 v52, 12, v0
	.loc	1 759 31 is_stmt 0              ; attention.py:759:31
	v_bfe_i32 v46, v0, 4, 1
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v53, 3, v0
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v54, 28, v0
	v_dual_mov_b32 v32, v17 :: v_dual_lshlrev_b32 v55, 3, v0
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v56, 4, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:136
	scratch_store_b32 off, v68, off offset:148
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v64, 3, v45
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v68, 0x7c, v68
	v_dual_mov_b32 v4, v17 :: v_dual_lshlrev_b32 v83, 5, v45
	v_mov_b32_e32 v6, v17
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v0, s6, v65
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_and_or_b32 v65, v49, 30, v47
	v_xor_b32_e32 v74, v50, v51
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v47, 1, v47
	v_lshl_or_b32 v92, v45, 10, v61
	v_xor_b32_e32 v45, 16, v85
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0x3ffffff8
	v_dual_mov_b32 v10, v17 :: v_dual_lshlrev_b32 v67, 2, v39
	v_mov_b32_e32 v59, v17
	s_sub_i32 s8, s3, s1
	v_lshrrev_b32_e32 v69, 3, v39
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x200, v0
	v_lshl_or_b32 v39, v39, 4, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v68, 48, v0
	v_or_b32_e32 v71, 32, v0
	v_or_b32_e32 v72, 16, v0
	v_lshl_or_b32 v86, s3, 10, v47
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s85, v64
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v64, s5, v0
	v_add_nc_u32_e32 v0, 0, v45
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v74, off
	scratch_store_b32 off, v1, off offset:128
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v27, v17 :: v_dual_lshlrev_b32 v66, 1, v52
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v31, v17 :: v_dual_lshlrev_b32 v52, 5, v52
	v_dual_mov_b32 v9, v17 :: v_dual_and_b32 v50, 0x630, v50
	buffer_load_u16 v40, v1, s[92:95], 0 offen
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v46, 0x2040, v46
	v_lshl_or_b32 v52, v53, 11, v52
	v_dual_mov_b32 v12, v17 :: v_dual_and_b32 v55, 0x310, v55
	v_xor_b32_e32 v74, 8, v74
	v_mov_b32_e32 v60, v17
	s_delay_alu instid0(VALU_DEP_4)
	v_or3_b32 v88, v50, v46, v52
	v_xor_b32_e32 v46, 32, v85
	v_mov_b32_e32 v41, v17
	v_or3_b32 v91, v48, v57, v55
	v_xor_b32_e32 v48, 48, v85
	v_add_nc_u32_e32 v61, 0, v74
	scratch_store_b32 off, v0, off offset:8 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v46
	v_lshl_or_b32 v84, v75, 5, v66
	v_lshl_or_b32 v66, v51, 8, v82
	v_lshl_or_b32 v51, v51, 1, v67
	v_xor_b32_e32 v50, 64, v85
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v61, off offset:4
	scratch_store_b32 off, v0, off offset:12
	scratch_store_b32 off, v81, off offset:132
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_add_nc_u32 v0, 0, v48
	v_dual_mov_b32 v15, v17 :: v_dual_lshlrev_b32 v70, 5, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v75, off offset:140
	scratch_store_b32 off, v0, off offset:16
	v_xor_b32_e32 v87, v66, v51
	v_xor_b32_e32 v51, 0x50, v85
	v_add_nc_u32_e32 v0, 0, v50
	v_lshl_or_b32 v53, v54, 7, v70
	scratch_store_b32 off, v79, off offset:144 ; 4-byte Folded Spill
	v_xor_b32_e32 v52, 0x60, v85
	v_xor_b32_e32 v55, 0x830, v85
	scratch_store_b32 off, v0, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v51
	v_or3_b32 v90, v53, v67, v54
	v_xor_b32_e32 v53, 0x70, v85
	v_xor_b32_e32 v54, 0x820, v85
	v_xor_b32_e32 v57, 0x810, v85
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v52
	v_xor_b32_e32 v89, v39, v69
	v_xor_b32_e32 v39, v58, v70
	v_xor_b32_e32 v58, 0x860, v85
	v_xor_b32_e32 v66, 0x870, v85
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v53
	v_xor_b32_e32 v67, 0x840, v85
	v_xor_b32_e32 v69, 0x850, v85
	v_xor_b32_e32 v70, 0x1040, v85
	v_xor_b32_e32 v74, 0x1050, v85
	scratch_store_b32 off, v0, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v54
	v_xor_b32_e32 v97, 0x1060, v85
	v_xor_b32_e32 v98, 0x1070, v85
	v_xor_b32_e32 v99, 0x1010, v85
	v_xor_b32_e32 v100, 0x1020, v85
	scratch_store_b32 off, v0, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v55
	v_xor_b32_e32 v101, 0x1030, v85
	v_xor_b32_e32 v102, 0x1860, v85
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v38, s7, v38
	v_dual_mov_b32 v8, v17 :: v_dual_lshlrev_b32 v65, 2, v65
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v57
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v63, 1, v79
	v_xor_b32_e32 v103, 0x1870, v85
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[61:62], null, s84, v38, v[37:38]
	scratch_store_b32 off, v0, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v58
	v_mul_lo_u32 v37, s5, v68
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	.loc	1 818 13                        ; attention.py:818:13
	s_mul_i32 s4, s4, s8
	v_or_b32_e32 v47, s7, v63
	scratch_store_b32 off, v0, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v66
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v63, 4, v65
	v_xor_b32_e32 v104, 0x1840, v85
	.loc	1 818 13                        ; attention.py:818:13
	s_mul_i32 s0, s0, s87
	s_lshl_b32 s4, s4, 2
	scratch_store_b32 off, v0, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v67
	v_mul_lo_u32 v38, s5, v71
	v_mul_lo_u32 v62, s5, v72
	s_lshl2_add_u32 s0, s0, s4
	v_dual_mov_b32 v2, v17 :: v_dual_and_b32 v49, 0x80, v49
	scratch_store_b32 off, v0, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v69
	v_lshl_add_u32 v56, v56, 9, 0
	v_xor_b32_e32 v105, 0x1850, v85
	v_lshl_add_u32 v125, v37, 2, s0
	v_xor_b32_e32 v106, 0x1820, v85
	scratch_store_b32 off, v0, off offset:60 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v70
	v_add3_u32 v39, v56, v49, v39
	v_xor_b32_e32 v45, 0x2040, v87
	v_lshl_add_u32 v126, v38, 2, s0
	v_lshl_add_u32 v127, v62, 2, s0
	scratch_store_b32 off, v0, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v74
	v_lshl_add_u32 v128, v64, 2, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v81
	v_xor_b32_e32 v107, 0x1830, v85
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s6, s86, 0x3fb8aa3b
	scratch_store_b32 off, v0, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v97
	v_add_nc_u32_e32 v150, v39, v81
	v_cndmask_b32_e64 v43, 0x1054, v43, s0
	v_cndmask_b32_e64 v44, 0x3276, v44, s0
	v_xor_b32_e32 v108, 0x1810, v85
	scratch_store_b32 off, v0, off offset:72 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v98
	v_lshl_or_b32 v43, v43, 8, v43
	v_lshl_or_b32 v44, v44, 8, v44
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v93, 3, v47
	v_or_b32_e32 v94, 2, v47
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v99
	v_mul_lo_u32 v47, s85, v47
	v_mul_lo_u32 v49, s85, v93
	v_mul_lo_u32 v56, s85, v94
	v_xor_b32_e32 v73, 8, v84
	scratch_store_b32 off, v0, off offset:80 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v100
	v_xor_b32_e32 v75, 16, v84
	v_xor_b32_e32 v79, 24, v84
	v_xor_b32_e32 v46, 16, v88
	v_xor_b32_e32 v48, 32, v88
	scratch_store_b32 off, v0, off offset:84 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v101
	v_xor_b32_e32 v50, 48, v88
	v_xor_b32_e32 v51, 64, v88
	v_xor_b32_e32 v52, 0x50, v88
	v_xor_b32_e32 v53, 0x60, v88
	scratch_store_b32 off, v0, off offset:88 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v102
	v_xor_b32_e32 v54, 0x70, v88
	v_xor_b32_e32 v55, 0x810, v89
	v_xor_b32_e32 v57, 4, v90
	v_xor_b32_e32 v58, 8, v90
	scratch_store_b32 off, v0, off offset:92 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v103
	v_xor_b32_e32 v66, 12, v90
	v_xor_b32_e32 v67, 16, v90
	v_xor_b32_e32 v68, 20, v90
	v_xor_b32_e32 v69, 24, v90
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v104
	v_xor_b32_e32 v70, 28, v90
	v_xor_b32_e32 v71, 32, v91
	v_xor_b32_e32 v72, 64, v91
	v_xor_b32_e32 v97, 0x60, v91
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v105
	v_xor_b32_e32 v98, 0x90, v92
	v_xor_b32_e32 v99, 0x120, v92
	v_xor_b32_e32 v100, 0x1b0, v92
	v_xor_b32_e32 v101, 0x240, v92
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v106
	v_xor_b32_e32 v102, 0x2d0, v92
	v_xor_b32_e32 v103, 0x360, v92
	v_xor_b32_e32 v104, 0x3f0, v92
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_mov_b32 v78, 0xff800000
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v0, 0, v107
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v94, 0, v73
	v_add_nc_u32_e32 v96, 0, v79
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v108
	v_dual_mov_b32 v42, v17 :: v_dual_add_nc_u32 v95, 0, v75
	v_add_nc_u32_e32 v74, 0, v46
	v_add_nc_u32_e32 v75, 0, v48
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	v_add_lshl_u32 v0, v47, s85, 1
	v_add_nc_u32_e32 v73, 0, v50
	v_add_nc_u32_e32 v93, 0, v51
	v_add_nc_u32_e32 v136, 0, v52
	v_add_nc_u32_e32 v137, 0, v53
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v0, 1, v47
	v_add_nc_u32_e32 v138, 0, v54
	v_add_nc_u32_e32 v139, 0, v55
	v_add_nc_u32_e32 v140, 0, v57
	v_add_nc_u32_e32 v141, 0, v58
	v_add_nc_u32_e32 v142, 0, v66
	v_add_nc_u32_e32 v143, 0, v67
	v_add_nc_u32_e32 v144, 0, v68
	v_add_nc_u32_e32 v145, 0, v69
	v_add_nc_u32_e32 v146, 0, v70
	v_add_nc_u32_e32 v147, 0, v71
	v_add_nc_u32_e32 v148, 0, v72
	v_add_nc_u32_e32 v149, 0, v97
	v_add_nc_u32_e32 v151, 0, v98
	v_add_nc_u32_e32 v152, 0, v99
	v_add_nc_u32_e32 v153, 0, v100
	v_add_nc_u32_e32 v154, 0, v101
	v_add_nc_u32_e32 v155, 0, v102
	v_add_nc_u32_e32 v156, 0, v103
	v_add_nc_u32_e32 v157, 0, v104
	v_lshlrev_b32_e32 v158, 1, v49
	v_lshlrev_b32_e32 v159, 1, v56
	v_mov_b16_e64 v167.h, 0
	s_mov_b32 s76, 0
	s_and_b32 s71, s71, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s89, 0xffff
	s_movk_i32 s104, 0xffc0
	s_mov_b32 vcc_hi, 0x76543210
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s102, s94
	s_mov_b32 s103, s95
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_lshl_b32 s86, s85, 7
	s_lshl_b32 s84, s84, 6
	s_mov_b32 s100, s88
	s_mov_b32 s101, s89
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v65, v33
	ds_bpermute_b32 v33, v63, v33
	ds_bpermute_b32 v38, v65, v34
	ds_bpermute_b32 v34, v63, v34
	ds_bpermute_b32 v39, v65, v35
	ds_bpermute_b32 v35, v63, v35
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v62, v33, v37, s0
	v_cndmask_b32_e64 v64, v37, v33, s0
	v_and_b32_e32 v33, 0x540054, v43
	v_and_b32_e32 v37, 0x760076, v44
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v66, v35, v39, s0
	v_cndmask_b32_e64 v68, v39, v35, s0
	v_lshl_or_b32 v33, v33, 4, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v71, 0x5040504, v33
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v40
	v_add_nc_u32_e32 v131, 0, v45
	.loc	1 774 26                        ; attention.py:774:26
	ds_bpermute_b32 v45, v65, v36
	ds_bpermute_b32 v36, v63, v36
	v_cndmask_b32_e64 v63, v34, v38, s0
	v_cndmask_b32_e64 v65, v38, v34, s0
	v_lshl_or_b32 v34, v37, 4, v37
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v160, s6, v40
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v72, 0x7060706, v34
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v67, v36, v45, s0
	v_cndmask_b32_e64 v69, v45, v36, s0
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v0, off, off           ; 4-byte Folded Reload
	v_cndmask_b32_e32 v45, 0x80000000, v61, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s76 :: v_dual_mov_b32 v36, s79
	v_dual_mov_b32 v39, s82 :: v_dual_add_nc_u32 v48, v83, v128
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v164, v164, v164 :: v_dual_add_nc_u32 v49, v83, v127
	v_dual_max_f32 v165, v165, v165 :: v_dual_add_nc_u32 v50, v83, v126
	v_dual_max_f32 v162, v162, v162 :: v_dual_add_nc_u32 v51, v83, v125
	v_dual_mov_b32 v169, v41 :: v_dual_add_nc_u32 v52, 0, v87
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v41, 16, v48
	v_dual_mov_b32 v168, v59 :: v_dual_add_nc_u32 v53, 0, v88
	v_dual_mov_b32 v171, v42 :: v_dual_add_nc_u32 v54, 0, v91
	v_cndmask_b32_e64 v42, 0x80000000, v48, s1
	v_cndmask_b32_e64 v48, 0x80000000, v49, s1
	v_add_nc_u32_e32 v59, 16, v51
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_dual_mov_b32 v170, v60 :: v_dual_add_nc_u32 v47, 0, v90
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v34, s77 :: v_dual_add_nc_u32 v43, 0, v84
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v37, s80 :: v_dual_mov_b32 v40, s83
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v163, v163, v163 :: v_dual_add_nc_u32 v46, 0, v89
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s69, 0xff800000, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.h, v167.h
	v_mov_b16_e64 v129.h, v167.h
	v_mov_b16_e64 v130.h, v167.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s104, s104, 64
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v128, 0x100, v128
	v_add_nc_u32_e32 v126, 0x100, v126
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, 0, v0
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[97:100], v45, s[92:95], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	v_add_nc_u32_e32 v45, 16, v49
	v_add_nc_u32_e32 v49, 16, v50
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v45, 0x80000000, v45, s1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v55, v0, v82
	scratch_load_b32 v0, off, off offset:120 ; 4-byte Folded Reload
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b64 v44, v[97:98]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, v0, v82
	.loc	1 823 32                        ; attention.py:823:32
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[99:100]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x7
	buffer_load_b128 v[180:183], v42, s[100:103], 0 offen
	buffer_load_b128 v[193:196], v41, s[100:103], 0 offen
	buffer_load_b128 v[200:203], v48, s[100:103], 0 offen
	buffer_load_b128 v[207:210], v45, s[100:103], 0 offen
	buffer_load_b128 v[105:108], v50, s[100:103], 0 offen
	buffer_load_b128 v[109:112], v49, s[100:103], 0 offen
	buffer_load_b128 v[113:116], v51, s[100:103], 0 offen
	buffer_load_b128 v[117:120], v59, s[100:103], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xb
	buffer_load_u16 v60, v86, s[96:99], 0 offen
	buffer_load_u16 v70, v86, s[96:99], 0 offen offset:4
	buffer_load_u16 v217, v86, s[96:99], 0 offen offset:8
	buffer_load_u16 v213, v86, s[96:99], 0 offen offset:12
	buffer_load_u16 v206, v86, s[96:99], 0 offen offset:16
	buffer_load_u16 v199, v86, s[96:99], 0 offen offset:20
	buffer_load_u16 v192, v86, s[96:99], 0 offen offset:24
	buffer_load_u16 v188, v86, s[96:99], 0 offen offset:28
	buffer_load_u16 v187, v86, s[96:99], 0 offen offset:32
	buffer_load_u16 v186, v86, s[96:99], 0 offen offset:36
	buffer_load_u16 v41, v86, s[96:99], 0 offen offset:40
	buffer_load_u16 v42, v86, s[96:99], 0 offen offset:44
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[48:51], v43 offset1:1
	ds_load_2addr_stride64_b64 v[172:175], v43 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[176:179], v94 offset1:1
	ds_load_2addr_stride64_b64 v[234:237], v94 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[238:241], v95 offset1:1
	ds_load_2addr_stride64_b64 v[242:245], v95 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[121:124], v96 offset1:1
	ds_load_2addr_stride64_b64 v[132:135], v96 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[218:225], v[48:49], v[62:63], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[50:51], v[62:63], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[248:255], v[172:173], v[62:63], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[97:104], v[174:175], v[62:63], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v33, v86, s[96:99], 0 offen offset:48
	buffer_load_u16 v34, v86, s[96:99], 0 offen offset:52
	buffer_load_u16 v35, v86, s[96:99], 0 offen offset:56
	buffer_load_u16 v36, v86, s[96:99], 0 offen offset:60
	buffer_load_u16 v37, v86, s[96:99], 0 offen offset:64
	buffer_load_u16 v38, v86, s[96:99], 0 offen offset:68
	buffer_load_u16 v39, v86, s[96:99], 0 offen offset:72
	buffer_load_u16 v40, v86, s[96:99], 0 offen offset:76
	buffer_load_u16 v43, v86, s[96:99], 0 offen offset:80
	buffer_load_u16 v44, v86, s[96:99], 0 offen offset:84
	buffer_load_u16 v48, v86, s[96:99], 0 offen offset:88
	buffer_load_u16 v49, v86, s[96:99], 0 offen offset:92
	buffer_load_u16 v50, v86, s[96:99], 0 offen offset:96
	buffer_load_u16 v51, v86, s[96:99], 0 offen offset:100
	buffer_load_u16 v174, v86, s[96:99], 0 offen offset:104
	buffer_load_u16 v175, v86, s[96:99], 0 offen offset:108
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[218:225], v[176:177], v[66:67], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[178:179], v[66:67], v[226:233] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v176, v86, s[96:99], 0 offen offset:112
	buffer_load_u16 v177, v86, s[96:99], 0 offen offset:116
	buffer_load_u16 v178, v86, s[96:99], 0 offen offset:120
	buffer_load_u16 v179, v86, s[96:99], 0 offen offset:124
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[97:104], v[236:237], v[66:67], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[248:255], v[234:235], v[66:67], v[248:255] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[218:225], v[238:239], v[64:65], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[240:241], v[64:65], v[226:233] neg_lo:[1,1,0]
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[97:104], v[244:245], v[64:65], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[248:255], v[242:243], v[64:65], v[248:255] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[218:225], v[121:122], v[68:69], v[218:225] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[226:233], v[123:124], v[68:69], v[226:233] neg_lo:[1,1,0]
	.loc	1 880 35                        ; attention.py:880:35
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[97:104], v[134:135], v[68:69], v[97:104] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[248:255], v[132:133], v[68:69], v[248:255] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v245, v222
	v_cvt_f32_i32_e32 v244, v223
	v_cvt_f32_i32_e32 v222, v232
	v_cvt_f32_i32_e32 v239, v104
	v_cvt_f32_i32_e32 v237, v102
	v_cvt_f32_i32_e32 v238, v103
	v_cvt_f32_i32_e32 v236, v101
	v_cvt_f32_i32_e32 v223, v233
	v_cvt_f32_i32_e32 v232, v97
	v_cvt_f32_i32_e32 v233, v98
	v_cvt_f32_i32_e32 v234, v99
	v_cvt_f32_i32_e32 v235, v100
	v_cvt_f32_i32_e32 v243, v224
	v_cvt_f32_i32_e32 v242, v225
	v_cvt_f32_i32_e32 v224, v248
	v_cvt_f32_i32_e32 v225, v249
	v_cvt_f32_i32_e32 v241, v226
	v_cvt_f32_i32_e32 v226, v250
	v_cvt_f32_i32_e32 v240, v227
	v_cvt_f32_i32_e32 v227, v251
	v_cvt_f32_i32_e32 v172, v218
	v_cvt_f32_i32_e32 v218, v228
	v_cvt_f32_i32_e32 v228, v252
	v_cvt_f32_i32_e32 v0, v219
	v_cvt_f32_i32_e32 v219, v229
	v_cvt_f32_i32_e32 v229, v253
	v_cvt_f32_i32_e32 v247, v220
	v_cvt_f32_i32_e32 v220, v230
	v_cvt_f32_i32_e32 v230, v254
	v_cvt_f32_i32_e32 v246, v221
	v_cvt_f32_i32_e32 v221, v231
	v_cvt_f32_i32_e32 v231, v255
	v_mul_f32_e32 v0, v160, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v86, 0x80, v86
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v70, 16, v70
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v102, 0xff800000, v182, s1
	v_cndmask_b32_e64 v104, 0xff800000, v195, s1
	v_cndmask_b32_e64 v103, 0xff800000, v193, s1
	v_cndmask_b32_e64 v101, 0xff800000, v180, s1
	v_cndmask_b32_e64 v135, 0xff800000, v209, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v102
	v_cmp_neq_f32_e64 s4, 0xff800000, v104
	v_cmp_neq_f32_e64 s6, 0xff800000, v103
	v_cmp_neq_f32_e64 s5, 0xff800000, v101
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v98, 0xff800000, v183, s1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s1, s7
	s_and_b32 s4, s1, s4
	s_and_b32 s6, s1, s6
	v_cndmask_b32_e64 v45, 0, 1, s4
	v_cndmask_b32_e64 v59, 0, 1, s6
	v_cndmask_b32_e64 v173, 0, 1, s8
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v97, 0xff800000, v181, s1
	v_cndmask_b32_e64 v100, 0xff800000, v196, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v99, 0xff800000, v194, s1
	v_cndmask_b32_e64 v181, 0xff800000, v108, s1
	v_cndmask_b32_e64 v180, 0xff800000, v106, s1
	v_cndmask_b32_e64 v106, 0xff800000, v107, s1
	v_cndmask_b32_e64 v105, 0xff800000, v105, s1
	v_cndmask_b32_e64 v108, 0xff800000, v111, s1
	v_cndmask_b32_e64 v107, 0xff800000, v109, s1
	v_cndmask_b32_e64 v122, 0xff800000, v203, s1
	v_cndmask_b32_e64 v121, 0xff800000, v201, s1
	v_cndmask_b32_e64 v133, 0xff800000, v202, s1
	v_cndmask_b32_e64 v132, 0xff800000, v200, s1
	v_cndmask_b32_e64 v124, 0xff800000, v210, s1
	v_cndmask_b32_e64 v123, 0xff800000, v208, s1
	v_cndmask_b32_e64 v134, 0xff800000, v207, s1
	v_cndmask_b32_e64 v182, 0xff800000, v110, s1
	v_cndmask_b32_e64 v110, 0xff800000, v116, s1
	v_cndmask_b32_e64 v109, 0xff800000, v114, s1
	v_cndmask_b32_e64 v114, 0xff800000, v115, s1
	v_cndmask_b32_e64 v113, 0xff800000, v113, s1
	v_cndmask_b32_e64 v116, 0xff800000, v119, s1
	v_cndmask_b32_e64 v115, 0xff800000, v117, s1
	v_cndmask_b32_e64 v183, 0xff800000, v112, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v135
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s11, s1, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_cndmask_b32_e64 v112, 0xff800000, v120, s1
	v_cndmask_b32_e64 v111, 0xff800000, v118, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v249, 0, 1, s11
	v_or_b16 v248.h, v59.l, v45.l
	v_mov_b16_e64 v45.l, v173.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v52, v[101:104]
	ds_store_b128 v52, v[132:135] offset:512
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v97
	v_cmp_neq_f32_e64 s23, 0xff800000, v98
	v_cmp_neq_f32_e64 s21, 0xff800000, v99
	v_cmp_neq_f32_e64 s20, 0xff800000, v100
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v131, v[97:100]
	ds_store_b128 v131, v[121:124] offset:512
	ds_store_b128 v52, v[105:108] offset:1024
	ds_store_b128 v52, v[113:116] offset:1536
	ds_store_b128 v131, v[180:183] offset:1024
	ds_store_b128 v131, v[109:112] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v53
	ds_load_b128 v[101:104], v74
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v134
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s5, s1, s13
	v_mov_b16_e64 v59.l, v249.l
	v_cndmask_b32_e64 v250, 0, 1, s5
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v132
	v_cmp_neq_f32_e64 s12, 0xff800000, v133
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, s1, s10
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v108
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v251, 0, 1, s7
	v_or_b16 v248.l, v59.l, v45.l
	v_mov_b16_e64 v45.l, v250.l
	s_and_b32 s10, s1, s9
	s_and_b32 s9, s1, s12
	v_mov_b16_e64 v59.l, v251.l
	v_cndmask_b32_e64 v252, 0, 1, s9
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v107
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v215, 0x3fb8aa3b, v97
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v97, 0, 1, s10
	s_and_b32 s12, s1, s17
	v_or_b16 v249.h, v59.l, v45.l
	v_mov_b16_e64 v45.l, v252.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v98
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v98, 0, 1, s12
	v_mov_b16_e32 v59.l, v97.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v106
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v45.l, 8, v45.l
	s_and_b32 s13, s1, s16
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v216, 0x3fb8aa3b, v99
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v99, 0, 1, s13
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v105
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v249.l, v59.l, v45.l
	v_mov_b16_e32 v45.l, v98.l
	s_and_b32 s14, s1, s14
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_dual_mul_f32 v214, 0x3fb8aa3b, v100 :: v_dual_add_nc_u32 v57, v159, v82
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v100, 0, 1, s14
	v_mov_b16_e32 v59.l, v99.l
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v116
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s17, s1, s15
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v211, 0x3fb8aa3b, v101 :: v_dual_add_nc_u32 v58, v158, v82
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v101, 0, 1, s17
	v_or_b16 v250.h, v59.l, v45.l
	v_mov_b16_e32 v45.l, v100.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v115
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s1, s29
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v102 :: v_dual_add_nc_u32 v166, 0, v92
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v102, 0, 1, s15
	v_mov_b16_e32 v59.l, v101.l
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v114
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s1, s24
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v212, 0x3fb8aa3b, v103
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v103, 0, 1, s16
	v_or_b16 v250.l, v59.l, v45.l
	v_mov_b16_e32 v45.l, v102.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v113
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, s1, s18
	v_mov_b16_e32 v59.l, v103.l
	v_cndmask_b32_e64 v97, 0, 1, s18
	v_lshlrev_b16 v45.l, 8, v45.l
	s_and_b32 s19, s1, s19
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_mul_f32_e32 v210, 0x3fb8aa3b, v104
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v104, 0, 1, s19
	s_and_b32 s20, s1, s20
	v_or_b16 v251.h, v59.l, v45.l
	v_mov_b16_e32 v45.l, v97.l
	v_cndmask_b32_e64 v98, 0, 1, s20
	v_mov_b16_e32 v59.l, v104.l
	s_and_b32 s21, s1, s21
	s_and_b32 s23, s1, s23
	v_lshlrev_b16 v45.l, 8, v45.l
	v_cndmask_b32_e64 v99, 0, 1, s21
	v_cndmask_b32_e64 v100, 0, 1, s23
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v124
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s24, s1, s22
	v_or_b16 v251.l, v59.l, v45.l
	v_mov_b16_e32 v45.l, v98.l
	v_mov_b16_e32 v59.l, v99.l
	v_cndmask_b32_e64 v101, 0, 1, s24
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v123
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s1, s28
	v_lshlrev_b16 v45.l, 8, v45.l
	v_cndmask_b32_e64 v97, 0, 1, s22
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v122
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s1, s25
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v121
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v252.h, v59.l, v45.l
	v_mov_b16_e32 v45.l, v100.l
	v_mov_b16_e32 v59.l, v101.l
	v_cndmask_b32_e64 v102, 0, 1, s25
	s_and_b32 s26, s1, s26
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v183
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v45.l, 8, v45.l
	v_cndmask_b32_e64 v98, 0, 1, s26
	s_and_b32 s29, s1, s27
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v182
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v99, 0, 1, s29
	v_or_b16 v252.l, v59.l, v45.l
	v_mov_b16_e32 v45.l, v97.l
	v_mov_b16_e32 v59.l, v102.l
	s_and_b32 s27, s1, s34
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v181
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v100, 0, 1, s27
	v_lshlrev_b16 v45.l, 8, v45.l
	s_and_b32 s28, s1, s33
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v180
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v97, 0, 1, s28
	s_and_b32 s33, s1, s31
	v_or_b16 v253.h, v59.l, v45.l
	v_mov_b16_e32 v45.l, v98.l
	v_mov_b16_e32 v59.l, v99.l
	v_cndmask_b32_e64 v98, 0, 1, s33
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s1, s30
	v_lshlrev_b16 v45.l, 8, v45.l
	v_cndmask_b32_e64 v99, 0, 1, s34
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v109
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s1, s38
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v110
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v253.l, v59.l, v45.l
	v_mov_b16_e32 v45.l, v100.l
	v_mov_b16_e32 v59.l, v97.l
	v_cndmask_b32_e64 v97, 0, 1, s30
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v111
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b128 v[109:112], v93
	ds_load_b128 v[117:120], v136
	ds_load_b128 v[121:124], v137
	ds_load_b128 v[132:135], v138
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v0, v70
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v82, s86, v82
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s1, s36
	s_and_b32 s36, s1, s35
	v_or_b16 v254.h, v59.l, v45.l
	v_mov_b16_e32 v45.l, v98.l
	v_mov_b16_e32 v59.l, v99.l
	s_and_b32 s35, s1, s37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v0, 0x80000000, v55, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v98, 0, 1, s35
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v55, 0x80000000, v56, s3
	v_cndmask_b32_e64 v56, 0x80000000, v57, s3
	v_cndmask_b32_e64 v79, 0x80000000, v58, s3
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v57, v160, v247
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v254.l, v59.l, v45.l
	v_mov_b16_e32 v45.l, v97.l
	v_cndmask_b32_e64 v59, 0, 1, s31
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(29) lgkmcnt(0)
	v_dual_mul_f32 v189, 0x3fb8aa3b, v135 :: v_dual_lshlrev_b32 v58, 16, v217
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v125, 0x100, v125
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v45.l, 8, v45.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b128 v[105:108], v75
	ds_load_b128 v[113:116], v73
	v_mul_f32_e32 v191, 0x3fb8aa3b, v134
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v216, v57, v58
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v57, v160, v246
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v255.h, v59.l, v45.l
	v_mov_b16_e32 v45.l, v98.l
	v_cndmask_b32_e64 v59, 0, 1, s36
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v58, 16, v213
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v127, 0x100, v127
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v97, v160, v172 :: v_dual_add_nc_u32 v172, 0, v85
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v45.l, 8, v45.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v214, v57, v58 :: v_dual_mul_f32 v57, v160, v245
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v201, 0x3fb8aa3b, v109 :: v_dual_lshlrev_b32 v58, 16, v206
	v_mul_f32_e32 v200, 0x3fb8aa3b, v112
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v255.l, v59.l, v45.l
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v45, v76, v76
	v_max_f32_e32 v59, v77, v77
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(26)
	v_dual_fmac_f32 v211, v57, v58 :: v_dual_lshlrev_b32 v58, 16, v199
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v57, v160, v244 :: v_dual_mul_f32 v208, 0x3fb8aa3b, v105
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v180, 0x3fb8aa3b, v106 :: v_dual_mul_f32 v209, 0x3fb8aa3b, v107
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v207, 0x3fb8aa3b, v108 :: v_dual_mul_f32 v204, 0x3fb8aa3b, v113
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	s_waitcnt vmcnt(25)
	v_dual_fmac_f32 v53, v57, v58 :: v_dual_lshlrev_b32 v58, 16, v192
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v57, v160, v243
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v61, s84, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v181, 0x3fb8aa3b, v114 :: v_dual_mul_f32 v202, 0x3fb8aa3b, v111
	v_dual_mul_f32 v205, 0x3fb8aa3b, v115 :: v_dual_mul_f32 v182, 0x3fb8aa3b, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v212, v57, v58
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v57, v160, v242 :: v_dual_lshlrev_b32 v58, 16, v188
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v203, 0x3fb8aa3b, v116 :: v_dual_mul_f32 v198, 0x3fb8aa3b, v119
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v215, v97, v60
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v97, v160, v220 :: v_dual_fmac_f32 v210, v57, v58
	s_waitcnt vmcnt(23)
	v_dual_mul_f32 v57, v160, v241 :: v_dual_lshlrev_b32 v58, 16, v187
	s_waitcnt vmcnt(17)
	v_dual_mul_f32 v98, v160, v221 :: v_dual_lshlrev_b32 v35, 16, v35
	s_waitcnt vmcnt(12)
	v_dual_mul_f32 v99, v160, v222 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v208, v57, v58 :: v_dual_mul_f32 v57, v160, v240
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v186
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v100, v160, v223 :: v_dual_lshlrev_b32 v33, 16, v33
	v_mul_f32_e32 v101, v160, v224
	v_dual_mul_f32 v102, v160, v225 :: v_dual_lshlrev_b32 v39, 16, v39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v180, v57, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v57, v160, v218 :: v_dual_lshlrev_b32 v36, 16, v36
	v_dual_mul_f32 v58, v160, v219 :: v_dual_lshlrev_b32 v41, 16, v41
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v103, v160, v226 :: v_dual_lshlrev_b32 v44, 16, v44
	v_dual_mul_f32 v104, v160, v227 :: v_dual_lshlrev_b32 v37, 16, v37
	v_dual_mul_f32 v113, v160, v236 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v209, v57, v41 :: v_dual_lshlrev_b32 v38, 16, v38
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_dual_mul_f32 v197, 0x3fb8aa3b, v117 :: v_dual_mul_f32 v196, 0x3fb8aa3b, v120
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v105, v160, v228
	v_dual_mul_f32 v106, v160, v229 :: v_dual_lshlrev_b32 v43, 16, v43
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(7)
	v_dual_fmac_f32 v205, v99, v35 :: v_dual_lshlrev_b32 v50, 16, v50
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v204, v97, v33 :: v_dual_fmac_f32 v181, v98, v34
	v_dual_fmac_f32 v203, v100, v36 :: v_dual_fmac_f32 v182, v102, v38
	v_dual_fmac_f32 v201, v101, v37 :: v_dual_fmac_f32 v202, v103, v39
	v_dual_fmac_f32 v200, v104, v40 :: v_dual_fmac_f32 v197, v105, v43
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v46, v248, v249 offset1:32
	ds_store_2addr_b32 v46, v250, v251 offset0:64 offset1:96
	ds_store_2addr_b32 v139, v252, v253 offset1:32
	ds_store_2addr_b32 v139, v254, v255 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v47
	ds_load_b32 v34, v140
	ds_load_b32 v35, v141
	ds_load_b32 v36, v142
	ds_load_b32 v37, v143
	ds_load_b32 v38, v144
	ds_load_b32 v39, v145
	ds_load_b32 v40, v146
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v183, 0x3fb8aa3b, v118 :: v_dual_mul_f32 v194, 0x3fb8aa3b, v121
	v_dual_mul_f32 v193, 0x3fb8aa3b, v124 :: v_dual_max_f32 v60, v78, v78
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v107, v160, v230 :: v_dual_lshlrev_b32 v48, 16, v48
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v111, v160, v234 :: v_dual_lshlrev_b32 v118, 16, v175
	v_dual_mul_f32 v112, v160, v235 :: v_dual_lshlrev_b32 v117, 16, v174
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v184, 0x3fb8aa3b, v122 :: v_dual_mul_f32 v195, 0x3fb8aa3b, v123
	v_dual_mul_f32 v190, 0x3fb8aa3b, v132 :: v_dual_mul_f32 v185, 0x3fb8aa3b, v133
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v109, v160, v232 :: v_dual_lshlrev_b32 v42, 16, v42
	v_dual_mul_f32 v110, v160, v233 :: v_dual_lshlrev_b32 v51, 16, v51
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v114, v160, v237 :: v_dual_lshlrev_b32 v119, 16, v176
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v115, v160, v238 :: v_dual_lshlrev_b32 v120, 16, v177
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v116, v160, v239 :: v_dual_lshlrev_b32 v121, 16, v178
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v207, v58, v42 :: v_dual_lshlrev_b32 v122, 16, v179
	v_dual_fmac_f32 v198, v107, v48 :: v_dual_fmac_f32 v193, v112, v118
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v57, 0x10000, v40
	v_and_b32_e32 v100, 1, v35
	v_and_b32_e32 v118, 0x1000000, v40
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v108, v160, v231 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v183, v106, v44 :: v_dual_fmac_f32 v194, v109, v50
	v_dual_fmac_f32 v195, v111, v117 :: v_dual_fmac_f32 v184, v110, v51
	v_dual_fmac_f32 v191, v115, v121 :: v_dual_fmac_f32 v190, v113, v119
	v_fmac_f32_e32 v185, v114, v120
	v_dual_fmac_f32 v189, v116, v122 :: v_dual_and_b32 v44, 0x10000, v33
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v58, 1, v33
	v_and_b32_e32 v97, 0x1000000, v33
	v_and_b32_e32 v114, 0x1000000, v39
	v_and_b32_e32 v117, 1, v40
	v_lshrrev_b16 v33.l, 8, v33.l
	v_cmp_eq_u32_e64 s43, 1, v100
	v_cmp_ne_u32_e64 s59, 0, v57
	v_cmp_ne_u32_e64 s60, 0, v118
	v_and_b32_e32 v50, 0x10000, v38
	v_and_b32_e32 v101, 0x1000000, v35
	v_and_b32_e32 v110, 0x1000000, v38
	v_lshrrev_b16 v33.h, 8, v34.l
	v_cmp_eq_u32_e64 s37, 1, v58
	v_cmp_ne_u32_e64 s39, 0, v97
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v208, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v109, 1, v38
	v_cmp_ne_u32_e64 s57, 0, v114
	v_cmp_eq_u32_e64 s58, 1, v117
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v191, s59
	v_cndmask_b32_e64 v120, 0xff800000, v189, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x10000, v35
	v_lshrrev_b16 v35.h, 8, v38.l
	v_and_b16 v38.l, 1, v33.l
	v_and_b32_e32 v99, 0x1000000, v34
	v_and_b16 v38.h, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v215, s37
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v98, 1, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v193, s57
	v_cndmask_b32_e64 v117, 0xff800000, v190, s58
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v46, 0x10000, v34
	v_lshrrev_b16 v34.l, 8, v35.l
	v_lshrrev_b16 v34.h, 8, v36.l
	v_lshrrev_b16 v35.l, 8, v37.l
	v_cmp_eq_u16_e64 s61, 1, v38.l
	v_and_b32_e32 v102, 1, v36
	v_and_b32_e32 v104, 0x1000000, v36
	v_and_b16 v41.l, 1, v34.l
	v_and_b16 v41.h, 1, v34.h
	v_and_b16 v42.l, 1, v35.l
	v_and_b16 v42.h, 1, v35.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v52, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v48, 0x10000, v36
	v_lshrrev_b16 v36.h, 8, v40.l
	v_cmp_ne_u32_e64 s42, 0, v99
	v_lshrrev_b16 v36.l, 8, v39.l
	v_cmp_eq_u16_e64 s65, 1, v42.l
	v_cmp_eq_u16_e64 s66, 1, v42.h
	v_and_b16 v43.h, 1, v36.h
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v119, v120
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s44, 0, v47
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v196, v108, v49
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v49, 0x10000, v37
	v_and_b32_e32 v106, 0x1000000, v37
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v210, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v105, 1, v37
	v_and_b32_e32 v51, 0x10000, v39
	v_and_b16 v43.l, 1, v36.l
	v_cmp_ne_u32_e64 s38, 0, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v209, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v113, 1, v39
	v_cmp_ne_u32_e64 s48, 0, v104
	v_cmp_eq_u16_e64 s68, 1, v43.h
	v_cmp_eq_u32_e64 s49, 1, v105
	v_cmp_ne_u32_e64 s50, 0, v49
	v_cmp_ne_u32_e64 s51, 0, v106
	v_cmp_eq_u32_e64 s40, 1, v98
	v_cmp_eq_u16_e64 s62, 1, v38.h
	v_cmp_eq_u16_e64 s63, 1, v41.l
	v_cmp_eq_u16_e64 s64, 1, v41.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v116, v117
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v46
	v_cmp_eq_u32_e64 s52, 1, v109
	v_cmp_ne_u32_e64 s53, 0, v50
	v_cmp_ne_u32_e64 s54, 0, v110
	v_cmp_ne_u32_e64 s45, 0, v101
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v216, s38
	v_cndmask_b32_e64 v36, 0xff800000, v214, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s46, 1, v102
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v203, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s55, 1, v113
	v_cmp_ne_u32_e64 s56, 0, v51
	v_cmp_eq_u16_e64 s67, 1, v43.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v185, s68
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v203, v33, v34
.Ltmp6:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v201, s49
	v_cndmask_b32_e64 v107, 0xff800000, v202, s50
	v_cndmask_b32_e64 v108, 0xff800000, v200, s51
	v_cndmask_b32_e64 v106, 0xff800000, v182, s65
	v_cndmask_b32_e64 v37, 0xff800000, v211, s40
	v_cndmask_b32_e64 v39, 0xff800000, v212, s41
	v_cndmask_b32_e64 v38, 0xff800000, v53, s62
	v_cndmask_b32_e64 v109, 0xff800000, v197, s52
	v_cndmask_b32_e64 v111, 0xff800000, v198, s53
	v_cndmask_b32_e64 v112, 0xff800000, v196, s54
	v_cndmask_b32_e64 v110, 0xff800000, v183, s66
	v_cndmask_b32_e64 v100, 0xff800000, v207, s45
	v_cndmask_b32_e64 v98, 0xff800000, v180, s63
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v101, 0xff800000, v204, s46
	v_cndmask_b32_e64 v103, 0xff800000, v205, s47
	v_cndmask_b32_e64 v113, 0xff800000, v194, s55
	v_cndmask_b32_e64 v115, 0xff800000, v195, s56
	v_cndmask_b32_e64 v102, 0xff800000, v181, s64
	v_cndmask_b32_e64 v114, 0xff800000, v184, s67
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v208, v41, v118, v42
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v54, v[33:36]
	ds_store_b128 v54, v[105:108] offset:2048
	ds_store_b128 v147, v[37:40]
	ds_store_b128 v147, v[109:112] offset:2048
	ds_store_b128 v148, v[97:100]
	ds_store_b128 v148, v[113:116] offset:2048
	ds_store_b128 v149, v[101:104]
	ds_store_b128 v149, v[117:120] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[51:54], v0, s[72:75], 0 offen
	buffer_load_b128 v[41:44], v55, s[72:75], 0 offen
	buffer_load_b128 v[55:58], v56, s[72:75], 0 offen
	buffer_load_b128 v[47:50], v79, s[72:75], 0 offen
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v200, v98, v99, v100
	v_max3_f32 v201, v101, v102, v103
	v_max3_f32 v202, v104, v105, v106
	v_max3_f32 v204, v36, v37, v38
	v_max3_f32 v46, v107, v108, v109
	v_max3_f32 v198, v39, v40, v97
	v_max3_f32 v205, v110, v111, v112
	v_max3_f32 v207, v113, v114, v115
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[121:124], v150
	ds_load_b128 v[132:135], v150 offset:256
	ds_load_b128 v[174:177], v150 offset:1024
	ds_load_b128 v[178:181], v150 offset:1280
	ds_load_b128 v[182:185], v150 offset:512
	ds_load_b128 v[186:189], v150 offset:768
	ds_load_b128 v[190:193], v150 offset:1536
	ds_load_b128 v[194:197], v150 offset:1792
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v200, v201, v202
	v_max3_f32 v79, v203, v35, v204
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.h, v167.h
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v46, v46, v205, v207
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v217.h, v167.h
	v_mov_b16_e64 v213.h, v167.h
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v79, v198, v0
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v246.h, v167.h
	v_mov_b16_e64 v206.h, v167.h
	v_mov_b16_e64 v245.h, v167.h
	v_mov_b16_e64 v244.h, v167.h
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v0, v0, v46, v208
	s_waitcnt lgkmcnt(6)
	v_dual_max_f32 v198, v124, v124 :: v_dual_max_f32 v203, v135, v135
	s_waitcnt lgkmcnt(5)
	v_max_f32_e32 v79, v177, v177
	v_max3_f32 v200, v121, v174, v122
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v46, v0, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v201, v175, v123, v176
	s_waitcnt lgkmcnt(4)
	v_dual_max_f32 v202, v181, v181 :: v_dual_max_f32 v79, v198, v79
	v_max3_f32 v204, v179, v134, v180
.Ltmp20:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v0, v80, v0, v46
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v205, v193, v193
	v_max_f32_e32 v198, v185, v185
	v_max3_f32 v79, v200, v201, v79
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v201, v197, v197
.Ltmp22:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v97, v0
	v_sub_f32_e32 v97, v98, v0
	v_sub_f32_e32 v98, v99, v0
	v_dual_sub_f32 v99, v100, v0 :: v_dual_max_f32 v198, v198, v205
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v202, v203, v202 :: v_dual_max_f32 v203, v189, v189
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v101, v0
	v_sub_f32_e32 v101, v102, v0
	v_sub_f32_e32 v102, v103, v0
	v_sub_f32_e32 v103, v104, v0
	v_sub_f32_e32 v104, v105, v0
	v_sub_f32_e32 v105, v106, v0
	v_sub_f32_e32 v106, v107, v0
	v_sub_f32_e32 v107, v108, v0
	v_sub_f32_e32 v108, v109, v0
	v_sub_f32_e32 v109, v110, v0
	v_sub_f32_e32 v110, v111, v0
	v_sub_f32_e32 v111, v112, v0
	v_sub_f32_e32 v112, v113, v0
	v_sub_f32_e32 v113, v114, v0
	v_sub_f32_e32 v114, v115, v0
	v_sub_f32_e32 v115, v116, v0
	v_sub_f32_e32 v116, v117, v0
	v_sub_f32_e32 v117, v118, v0
	v_sub_f32_e32 v118, v119, v0
	v_sub_f32_e32 v119, v120, v0
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v120, v132, v178, v133
	v_max3_f32 v200, v182, v190, v183
	v_max3_f32 v205, v195, v188, v196
	v_max_f32_e32 v201, v203, v201
.Ltmp26:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v203, v80, v0
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v120, v120, v204, v202
	v_max3_f32 v202, v191, v184, v192
	v_max3_f32 v204, v186, v194, v187
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v0
	v_sub_f32_e32 v33, v33, v0
	v_sub_f32_e32 v35, v35, v0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v198, v200, v202, v198
	v_max3_f32 v200, v204, v205, v201
.Ltmp30:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v201, v203
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v202, v79
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v0
	v_sub_f32_e32 v37, v37, v0
	v_sub_f32_e32 v38, v38, v0
	v_sub_f32_e32 v39, v39, v0
	v_sub_f32_e32 v40, v40, v0
	v_mov_b32_e32 v80, v0
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v0, v113
	v_exp_f32_e32 v113, v115
	v_exp_f32_e32 v115, v117
	v_exp_f32_e32 v117, v119
.Ltmp33:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v202, v202 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v119, 0, v201, s69
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v203, v120 :: v_dual_mov_b32 v204, v198
	v_mov_b32_e32 v205, v200
.Ltmp36:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v104, v104
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v201, v202, v202
.Ltmp38:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v102, v102
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v203, v203 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v204, v204 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v119 :: v_dual_max_f32 v79, v79, v201
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v106, v106
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v205, v205 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s61
	v_cndmask_b32_e64 v33, 0, v33, s37
	v_cndmask_b32_e64 v35, 0, v35, s38
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v202, v203, v203 :: v_dual_max_f32 v203, v204, v204
.Ltmp44:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v119
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s41
	v_cndmask_b32_e64 v46, 0, v46, s43
	v_cndmask_b32_e64 v98, 0, v98, s44
	v_cndmask_b32_e64 v100, 0, v100, s46
	v_cndmask_b32_e64 v104, 0, v104, s49
	v_cndmask_b32_e64 v108, 0, v108, s52
	v_cndmask_b32_e64 v110, 0, v110, s53
	v_cndmask_b32_e64 v112, 0, v112, s55
	v_cndmask_b32_e64 v114, 0, v114, s56
	v_cndmask_b32_e64 v116, 0, v116, s58
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v1, v1, v119 :: v_dual_mov_b32 v212, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v242.h, v167.h
	v_mov_b16_e64 v241.h, v167.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v99, v99
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s39
.Ltmp45:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v204, v205, v205
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v102, 0, v102, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v34.h
	v_mov_b16_e32 v70.l, v33.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v119
	v_mul_f32_e32 v20, v20, v119
	v_mul_f32_e32 v22, v22, v119
	v_mul_f32_e32 v24, v24, v119
	v_mul_f32_e32 v25, v25, v119
	v_mul_f32_e32 v26, v26, v119
	v_mul_f32_e32 v29, v29, v119
	v_mul_f32_e32 v30, v30, v119
	v_dual_mul_f32 v31, v31, v119 :: v_dual_and_b32 v70, 1, v70
	v_mul_f32_e32 v14, v14, v119
	v_mul_f32_e32 v3, v3, v119
	v_mul_f32_e32 v7, v7, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v217.l, v35.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v213.l, v39.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v246.l, v46.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v206.l, v98.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v245.l, v100.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v244.l, v104.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v81.l, v108.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v242.l, v110.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v129.l, v112.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v241.l, v114.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.l, v116.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v119
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v212, v212 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp48:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v119
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v119, v120, v202 :: v_dual_max_f32 v120, v198, v203
.Ltmp50:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v199.h, v167.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	v_cndmask_b32_e64 v106, 0, v106, s50
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v198, v200, v204
.Ltmp52:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v199.l, v102.h
	v_and_b32_e32 v200, 1, v167
	v_mov_b16_e64 v167.l, v36.h
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v214, v120 :: v_dual_and_b32 v81, 1, v81
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v203, 1, v213
	v_and_b32_e32 v205, 1, v206
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v213, v119 :: v_dual_and_b32 v206, 1, v245
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v247.h, v167.h
	v_mov_b16_e64 v243.h, v167.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s62
	v_cndmask_b32_e64 v99, 0, v99, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s45, v33, v33
	v_mov_b16_e64 v247.l, v37.h
	v_mov_b16_e64 v243.l, v106.h
	v_cmp_o_f32_e64 s62, v108, v108
	v_and_b32_e32 v207, 1, v244
	v_add3_u32 v33, v33, v70, 0x7fff
	v_add3_u32 v81, v108, v81, 0x7fff
	v_and_b32_e32 v108, 1, v167
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v214, v214 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v199, 1, v199
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v107, s51
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s44, v34, v34
	v_cmp_o_f32_e64 s50, v98, v98
	v_cmp_o_f32_e64 s51, v100, v100
	v_and_b32_e32 v201, 1, v217
	v_add3_u32 v34, v34, v200, 0x7fff
	v_add3_u32 v70, v98, v205, 0x7fff
	v_add3_u32 v98, v100, v206, 0x7fff
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v213, v213 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v103, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s52, v36, v36
	v_cmp_o_f32_e64 s58, v102, v102
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v215, v198 :: v_dual_and_b32 v202, 1, v247
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s45
	v_add3_u32 v33, v36, v108, 0x7fff
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v212, v212
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v208, 1, v243
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v108, v214, v214
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v100, v102, v199, 0x7fff
	v_add3_u32 v102, v104, v207, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s46, v35, v35
	v_add3_u32 v35, v35, v201, 0x7fff
	v_mov_b16_e64 v167.l, v38.h
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s44
	v_cndmask_b16 v102.l, 0x7fff, v98.h, s51
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v98, v213, v213
.Ltmp68:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s47, v37, v37
	v_cmp_o_f32_e64 s60, v104, v104
	v_add3_u32 v37, v37, v202, 0x7fff
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v79, v79, v36
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v104, v106, v208, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v118, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v37.l, 0x7fff, v35.h, s46
.Ltmp71:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v98, v119, v98 :: v_dual_and_b32 v35, 1, v167
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v104.l, 0x7fff, v100.h, s58
	v_permlanex16_b32 v100, v34, vcc_hi, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s48
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v39, v39
	v_add3_u32 v39, v39, v203, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.l, 0x7fff, v37.h, s47
	v_cndmask_b16 v37.h, 0x7fff, v33.h, s52
	v_perm_b32 v33, v100, v34, v71
	v_perm_b32 v34, v100, v34, v72
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v100, v79 :: v_dual_mov_b32 v119, v98
.Ltmp74:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v111, v111
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v97, 0, v97, s63
	v_cndmask_b32_e64 v118, 0, v118, s59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v167.l, v40.h
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v119, v119 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v240.h, v167.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v109, v109
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s53, v38, v38
	v_mov_b16_e64 v240.l, v118.h
	v_and_b32_e32 v204, 1, v246
	v_add3_u32 v35, v38, v35, 0x7fff
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v100, v100 :: v_dual_max_f32 v119, v119, v119
.Ltmp78:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v38, 1, v167
	v_mov_b16_e64 v167.l, v97.h
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v173, v161, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v101, s64
	v_cndmask_b32_e64 v111, 0, v111, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s49, v46, v46
	v_cmp_o_f32_e64 s54, v40, v40
	v_and_b32_e32 v209, 1, v242
	v_and_b32_e32 v129, 1, v129
	v_and_b32_e32 v210, 1, v241
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v46, v46, v204, 0x7fff
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v215, v215 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v211, 1, v240
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v79, v79, v100
.Ltmp82:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v38, v40, v38, 0x7fff
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v98, v119
.Ltmp84:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v40, 1, v167
	v_mov_b16_e64 v167.l, v99.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s65
	v_cndmask_b32_e64 v109, 0, v109, s66
	v_cndmask_b32_e64 v0, 0, v0, s67
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s55, v97, v97
	v_cmp_o_f32_e64 s61, v106, v106
	v_cmp_o_f32_e64 s63, v110, v110
	v_cmp_o_f32_e64 s64, v112, v112
	v_cmp_o_f32_e64 s65, v114, v114
	v_cmp_o_f32_e64 s66, v116, v116
	v_cmp_o_f32_e64 s67, v118, v118
	v_add3_u32 v106, v110, v209, 0x7fff
	v_add3_u32 v110, v112, v129, 0x7fff
	v_add3_u32 v112, v114, v210, 0x7fff
	v_add3_u32 v114, v116, v130, 0x7fff
	v_add3_u32 v116, v118, v211, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v39.h, s48
	v_cndmask_b16 v70.l, 0x7fff, v46.h, s49
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v215, v215
	v_max_f32_e32 v108, v120, v108
.Ltmp86:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v39.h, 0x7fff, v35.h, s53
	v_cndmask_b16 v46.h, 0x7fff, v38.h, s54
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v59, v59, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v97, v40, 0x7fff
	v_and_b32_e32 v97, 1, v167
	v_mov_b16_e64 v167.l, v101.h
	v_cmp_o_f32_e64 s56, v99, v99
	v_cndmask_b16 v81.l, 0x7fff, v70.h, s50
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v198, v118
.Ltmp88:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v36, v37, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v120, v108 :: v_dual_max_f32 v165, v165, v79
.Ltmp90:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v38, v39, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v200, v46, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.h, 0x7fff, v40.h, s55
	v_add3_u32 v97, v99, v97, 0x7fff
	v_and_b32_e32 v99, 1, v167
	v_mov_b16_e64 v167.l, v103.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v113, s57
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s57, v101, v101
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v198, v118 :: v_dual_max_f32 v45, v45, v79
.Ltmp92:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v35, v36, v37, v71
	v_perm_b32 v36, v36, v37, v72
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v120, v120 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v37, v38, v39, v71
	v_perm_b32 v38, v38, v39, v72
	v_perm_b32 v39, v200, v46, v71
	v_perm_b32 v40, v200, v46, v72
	v_permlanex16_b32 v46, v70, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v99, v101, v99, 0x7fff
	v_and_b32_e32 v101, 1, v167
	v_mov_b16_e64 v167.l, v105.h
	v_cmp_o_f32_e64 s59, v103, v103
	v_cndmask_b16 v112.l, 0x7fff, v81.h, s62
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v198, v198 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp96:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v120, v120, v120 :: v_dual_and_b32 v79, 1, v167
.Ltmp97:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v81.h, 0x7fff, v97.h, s56
	v_perm_b32 v97, v46, v70, v71
	v_perm_b32 v98, v46, v70, v72
	v_add3_u32 v46, v103, v101, 0x7fff
	v_mov_b16_e64 v167.l, v107.h
	v_cndmask_b16 v110.l, 0x7fff, v104.h, s61
.Ltmp98:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v108, v108, v120
.Ltmp99:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v70, v81, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v104.h, 0x7fff, v46.h, s59
	v_add3_u32 v46, v105, v79, 0x7fff
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v198, v198, v198 :: v_dual_and_b32 v79, 1, v167
.Ltmp101:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v163, v163, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v106.l, 0x7fff, v102.h, s60
	v_cndmask_b16 v102.h, 0x7fff, v99.h, s57
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v60, v60, v108 :: v_dual_sub_f32 v119, v174, v165
.Ltmp102:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v118, v118, v198
.Ltmp103:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v99, v70, v81, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v115, s68
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s68, v105, v105
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v105, v122, v165
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v103, v173, v118 :: v_dual_max_f32 v164, v164, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v100, v70, v81, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v81, v121, v165 :: v_dual_max_f32 v162, v162, v118
	v_sub_f32_e32 v121, v176, v165
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v108, v123, v165 :: v_dual_sub_f32 v123, v132, v164
	v_sub_f32_e32 v118, v124, v165
	v_sub_f32_e32 v122, v177, v165
	v_sub_f32_e32 v124, v133, v164
	v_dual_sub_f32 v132, v134, v164 :: v_dual_sub_f32 v177, v184, v163
	v_sub_f32_e32 v133, v135, v164
	v_sub_f32_e32 v134, v178, v164
	v_sub_f32_e32 v135, v179, v164
	v_dual_sub_f32 v174, v181, v164 :: v_dual_sub_f32 v179, v190, v163
	v_dual_sub_f32 v181, v192, v163 :: v_dual_sub_f32 v190, v197, v162
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v192, v77, v59
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s45, 0xff800000, v77
	v_mov_b32_e32 v77, v59
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v59, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s43, v107, v107
	v_cndmask_b16 v114.l, 0x7fff, v106.h, s63
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v120, v175, v165 :: v_dual_sub_f32 v173, v180, v164
	v_sub_f32_e32 v175, v182, v163
	v_dual_sub_f32 v176, v183, v163 :: v_dual_sub_f32 v183, v186, v162
	v_sub_f32_e32 v182, v193, v163
	v_dual_sub_f32 v186, v189, v162 :: v_dual_sub_f32 v193, v78, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v79, v107, v79, 0x7fff
	v_cndmask_b16 v106.h, 0x7fff, v46.h, s68
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s46, 0xff800000, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s24
	v_mov_b32_e32 v78, v60
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v60, v105
	v_exp_f32_e32 v105, v108
	v_exp_f32_e32 v108, v121
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v116.l, 0x7fff, v110.h, s64
	v_mov_b16_e64 v167.l, v109.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v110.h, 0x7fff, v79.h, s43
	v_permlanex16_b32 v79, v106, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v107, v104, vcc_hi, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v134
	v_exp_f32_e32 v122, v124
	v_exp_f32_e32 v124, v132
	v_exp_f32_e32 v132, v173
	v_exp_f32_e32 v134, v174
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v173, v79, v106, v71
	v_perm_b32 v174, v79, v106, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, 0, v105, s6
	v_cndmask_b32_e64 v106, 0, v108, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v46, 1, v167
	v_mov_b16_e64 v167.l, v111.h
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v178, v185, v163 :: v_dual_sub_f32 v185, v188, v162
	v_sub_f32_e32 v180, v191, v163
	v_dual_sub_f32 v184, v187, v162 :: v_dual_sub_f32 v191, v76, v45
	v_sub_f32_e32 v187, v194, v162
	v_sub_f32_e32 v188, v195, v162
	v_sub_f32_e32 v189, v196, v162
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s47, 0xff800000, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v119, s20
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v194, v161, v103 :: v_dual_mov_b32 v161, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v103, v107, v104, v71
	v_perm_b32 v104, v107, v104, v72
	v_and_b32_e32 v107, 1, v167
	v_mov_b16_e64 v167.l, v0.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s44, 0xff800000, v76
	v_mov_b32_e32 v76, v45
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v81
	v_exp_f32_e32 v81, v120
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v120, v123
	v_exp_f32_e32 v123, v135
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v135, v175
	v_exp_f32_e32 v175, v179
	v_exp_f32_e32 v176, v176
	v_exp_f32_e32 v179, v180
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v180, v181
	v_exp_f32_e32 v178, v178
	v_exp_f32_e32 v181, v182
	v_exp_f32_e32 v182, v183
	v_exp_f32_e32 v183, v187
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v187, v188
	v_exp_f32_e32 v185, v185
	v_exp_f32_e32 v188, v189
	v_exp_f32_e32 v186, v186
	v_exp_f32_e32 v189, v190
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v79, 1, v167
	v_cmp_o_f32_e64 s42, v109, v109
	v_cmp_o_f32_e64 s40, v0, v0
	v_cmp_o_f32_e64 s41, v111, v111
	v_cndmask_b16 v129.l, 0x7fff, v112.h, s65
	v_add3_u32 v0, v0, v79, 0x7fff
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v105, v106
.Ltmp105:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v46, v109, v46, 0x7fff
	v_permlanex16_b32 v109, v110, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v167.l, v113.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s11
	v_cndmask_b32_e64 v60, 0, v60, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.h, 0x7fff, v46.h, s42
	v_add3_u32 v46, v111, v107, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s23
	v_cndmask_b32_e64 v107, 0, v118, s4
	v_cndmask_b32_e64 v111, 0, v120, s10
	v_cndmask_b32_e64 v118, 0, v121, s29
	v_cndmask_b32_e64 v119, 0, v122, s9
	v_cndmask_b32_e64 v120, 0, v123, s26
	v_cndmask_b32_e64 v121, 0, v124, s7
	v_cndmask_b32_e64 v122, 0, v132, s25
	v_cndmask_b32_e64 v123, 0, v133, s5
	v_cndmask_b32_e64 v124, 0, v134, s22
	v_cndmask_b32_e64 v132, 0, v135, s17
	v_cndmask_b32_e64 v133, 0, v175, s34
	v_cndmask_b32_e64 v134, 0, v176, s14
	v_cndmask_b32_e64 v135, 0, v179, s33
	v_cndmask_b32_e64 v177, 0, v177, s13
	v_cndmask_b32_e64 v179, 0, v180, s28
	v_cndmask_b32_e64 v178, 0, v178, s12
	v_cndmask_b32_e64 v180, 0, v181, s27
	v_cndmask_b32_e64 v181, 0, v182, s19
	v_cndmask_b32_e64 v182, 0, v183, s36
	v_cndmask_b32_e64 v183, 0, v184, s18
	v_cndmask_b32_e64 v184, 0, v187, s35
	v_cndmask_b32_e64 v185, 0, v185, s16
	v_cndmask_b32_e64 v187, 0, v188, s31
	v_cndmask_b32_e64 v186, 0, v186, s15
	v_cndmask_b32_e64 v188, 0, v189, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.l, 0x7fff, v114.h, s66
	v_perm_b32 v175, v109, v110, v71
	v_perm_b32 v176, v109, v110, v72
	v_cndmask_b16 v114.h, 0x7fff, v46.h, s41
	v_permlanex16_b32 v46, v112, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v59
	v_dual_add_f32 v60, v60, v81 :: v_dual_and_b32 v59, 1, v167
.Ltmp107:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v115.h
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v107, v108
	v_dual_add_f32 v105, v111, v118 :: v_dual_add_f32 v110, v134, v135
	v_dual_add_f32 v106, v119, v120 :: v_dual_add_f32 v107, v121, v122
	v_dual_add_f32 v108, v123, v124 :: v_dual_add_f32 v109, v132, v133
	v_dual_add_f32 v111, v177, v179 :: v_dual_add_f32 v118, v178, v180
	v_dual_add_f32 v121, v185, v187 :: v_dual_add_f32 v122, v186, v188
.Ltmp109:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v113, v113
	v_cndmask_b16 v199.l, 0x7fff, v116.h, s67
	v_perm_b32 v177, v46, v112, v71
	v_perm_b32 v178, v46, v112, v72
	v_permlanex16_b32 v46, v114, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v116.h, 0x7fff, v0.h, s40
	v_add3_u32 v0, v113, v59, 0x7fff
	v_and_b32_e32 v59, 1, v167
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v60 :: v_dual_add_f32 v60, v79, v81
	v_add_f32_e32 v79, v105, v106
	v_dual_add_f32 v81, v107, v108 :: v_dual_add_f32 v108, v121, v122
	v_add_f32_e32 v105, v109, v110
	v_add_f32_e32 v106, v111, v118
.Ltmp111:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s38, v115, v115
	v_mov_b16_e64 v167.l, v117.h
	v_perm_b32 v179, v46, v114, v71
	v_perm_b32 v180, v46, v114, v72
	v_permlanex16_b32 v46, v116, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v129.h, 0x7fff, v0.h, s39
	v_add3_u32 v0, v115, v59, 0x7fff
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v45, v45, v60 :: v_dual_add_f32 v60, v79, v81
	v_add_f32_e32 v79, v105, v106
	v_dual_add_f32 v119, v181, v182 :: v_dual_add_f32 v120, v183, v184
.Ltmp113:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v167
	v_perm_b32 v181, v46, v116, v71
	v_perm_b32 v182, v46, v116, v72
	v_permlanex16_b32 v46, v129, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v130.h, 0x7fff, v0.h, s38
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v106, v79
.Ltmp115:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v70, v102, vcc_hi, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s37, v117, v117
	v_perm_b32 v183, v46, v129, v71
	v_perm_b32 v184, v46, v129, v72
	v_permlanex16_b32 v46, v130, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v106, v106 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v101, v70, v102, v71
	v_perm_b32 v102, v70, v102, v72
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v70, v191
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v185, v46, v130, v71
	v_perm_b32 v186, v46, v130, v72
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v79, v106
	v_add_f32_e32 v107, v119, v120
.Ltmp119:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v191, v192
	v_exp_f32_e32 v192, v193
	v_exp_f32_e32 v193, v194
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v0, v117, v59, 0x7fff
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v107, v108
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v59, v45
.Ltmp122:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v106.l, v55.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v106.h, v47.l
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v199.h, 0x7fff, v0.h, s37
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v107, v81
	v_mov_b32_dpp v59, v59 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp124:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v254, 0, v192, s46
	v_cndmask_b32_e64 v255, 0, v193, s47
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v0, v199, vcc_hi, 0xfedcba98 op_sel:[1,0]
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v107, v107 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v105, v60
.Ltmp126:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v59
.Ltmp127:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v47.l, v55.h
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v187, v0, v199, v71
	v_perm_b32 v188, v0, v199, v72
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v105, v105 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v108.l, v56.l
	v_mov_b16_e32 v108.h, v48.l
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v60, v105 :: v_dual_add_f32 v60, v81, v107
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v81, v46
.Ltmp132:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v107.h, v42.l
	v_mov_b16_e32 v42.l, v52.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v105, v59 :: v_dual_mov_b32 v0, v60
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v107.l, v52.l
	v_mov_b16_e32 v48.l, v56.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v105, v105 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v0, v0 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v46, v46, v81
.Ltmp137:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v56.h, v50.l
	v_mov_b16_e32 v50.l, v58.h
	v_mov_b16_e32 v52.l, v57.l
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v0, v60, v0
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v60, v46
.Ltmp140:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v52.h, v49.l
	v_mov_b16_e32 v49.l, v57.h
	v_mov_b16_e32 v56.l, v58.l
	v_mov_b16_e32 v55.l, v54.l
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v60, v60 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v55.h, v44.l
	v_mov_b16_e32 v44.l, v54.h
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v253, 0, v191, s45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v109, v0 :: v_dual_add_f32 v60, v46, v60
	v_mov_b32_e32 v79, v45
.Ltmp144:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v70, 0, v70, s44
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s104, 0x1c0
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp146:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v60, v170, v254
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v45, v45, v79
	v_add_f32_e32 v79, v59, v105
.Ltmp149:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v105.h, v41.l
	v_mov_b16_e32 v41.l, v51.h
	v_mov_b16_e32 v105.l, v51.l
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v59, v45
.Ltmp151:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v51.h, v43.l
	v_mov_b16_e32 v43.l, v53.h
	v_mov_b32_e32 v46, v41
	ds_store_b64 v166, v[105:106]
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v59, v59 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp153:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v51.l, v53.l
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v81, v79
.Ltmp155:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v151, v[46:47]
	v_mov_b32_e32 v47, v42
	ds_store_b64 v152, v[107:108]
	ds_store_b64 v153, v[47:48]
	v_dual_mov_b32 v48, v43 :: v_dual_add_f32 v59, v45, v59
	v_mov_b32_e32 v45, v50
	ds_store_b64 v154, v[51:52]
	ds_store_b64 v155, v[48:49]
	ds_store_b64 v156, v[55:56]
	ds_store_b64 v157, v[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v49, off, off offset:36
	scratch_load_b32 v57, off, off offset:64
	scratch_load_b32 v45, off, off offset:8
	scratch_load_b32 v53, off, off offset:40
	ds_load_b128 v[41:44], v172
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp157:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v59, v168, v70
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	ds_load_b128 v[189:192], v57
	scratch_load_b32 v57, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[193:196], v57
	scratch_load_b32 v57, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[189:196], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[197:200], v57
	scratch_load_b32 v57, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[201:204], v57
	scratch_load_b32 v57, off, off offset:12 ; 4-byte Folded Reload
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v49
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[197:204], v[33:40], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[197:200], v172 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	scratch_load_b32 v41, off, off offset:32 ; 4-byte Folded Reload
.Ltmp158:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v0, v109
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp159:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v42, v171, v255
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[205:208], v57
	s_waitcnt vmcnt(0)
	ds_load_b128 v[249:252], v41
	scratch_load_b32 v41, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[43:46], v41
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v57, off, off offset:16
	scratch_load_b32 v41, off, off offset:24
	s_waitcnt vmcnt(1)
	ds_load_b128 v[209:212], v57
	ds_load_b128 v[213:216], v172 offset:2048
	scratch_load_b32 v57, off, off offset:44 ; 4-byte Folded Reload
	ds_load_b128 v[53:56], v53
	s_waitcnt vmcnt(1)
	ds_load_b128 v[241:244], v41
	scratch_load_b32 v41, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[205:212], v[97:104], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[49:56], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v37, off, off offset:52
	scratch_load_b32 v33, off, off offset:48
	s_waitcnt vmcnt(3)
	ds_load_b128 v[217:220], v57
	scratch_load_b32 v57, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(3)
	ds_load_b128 v[245:248], v41
	scratch_load_b32 v41, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[213:220], v[97:104], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_load_b128 v[37:40], v37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[33:36], v33
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[173:180], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_load_b128 v[221:224], v57
	scratch_load_b32 v57, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[225:228], v57
	scratch_load_b32 v57, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[221:228], v[97:104], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[229:232], v57
	scratch_load_b32 v57, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[233:236], v57
	scratch_load_b32 v57, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[229:236], v[97:104], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[237:240], v57
	ds_load_b128 v[55:58], v41
	scratch_load_b32 v41, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[193:196], v41
	ds_load_b128 v[189:192], v172 offset:4096
	scratch_load_b32 v41, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[237:244], v[173:180], v[17:24]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[245:252], v[181:188], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[189:196], v[173:180], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[47:50], v41
	scratch_load_b32 v41, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[43:50], v[173:180], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[205:208], v41
	scratch_load_b32 v41, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[209:212], v41
	scratch_load_b32 v41, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[205:212], v[181:188], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[51:54], v41
	scratch_load_b32 v41, off, off offset:116 ; 4-byte Folded Reload
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[51:58], v[181:188], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	ds_load_b128 v[201:204], v41
.Ltmp160:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v79, v81
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp161:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v41, v169, v253
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[197:204], v[181:188], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:136
	scratch_load_b32 v33, off, off offset:148
	scratch_load_b32 v34, off, off offset:140
	scratch_load_b32 v35, off, off offset:144
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v34, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	v_and_b32_e32 v0, 4, v0
	ds_store_2addr_b64 v35, v[59:60], v[41:42] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v20
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v18, v0, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v19, v0, v19
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v21, v0, v21
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v51, s6, v22, v0, v22
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fixup_f32 v18, v34, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v20, v33, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s4, v24, v0, v24
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v21, v39, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s3, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fixup_f32 v24, v34, v0, v24
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s4, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s5, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s3, v29, v0, v29
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s6, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s4, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s3, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s4, v10, v0, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s5, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s3, v15, v0, v15
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s4, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s5, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v17, s1
	v_cndmask_b32_e64 v17, 0, v18, s1
	v_cndmask_b32_e64 v18, 0, v19, s1
	v_cndmask_b32_e64 v19, 0, v20, s1
	v_cndmask_b32_e64 v20, 0, v21, s1
	v_cndmask_b32_e64 v21, 0, v22, s1
	v_cndmask_b32_e64 v22, 0, v23, s1
	v_cndmask_b32_e64 v23, 0, v24, s1
	v_cndmask_b32_e64 v24, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	v_cndmask_b32_e64 v26, 0, v27, s1
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_cndmask_b32_e64 v29, 0, v30, s1
	v_cndmask_b32_e64 v30, 0, v31, s1
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:132
	scratch_load_b32 v36, off, off offset:128
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	v_cmp_o_f32_e64 s5, v8, v8
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s5
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_bfe_u32 v25, v31, 16, 1
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v24, v9, v24, 0x7fff
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v5, v8, v19, s0
	v_cndmask_b32_e64 v6, v18, v17, s0
	v_cndmask_b32_e64 v7, v17, v18, s0
	v_cndmask_b32_e64 v13, v20, v22, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	v_cndmask_b32_e64 v15, v21, v23, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s0
	v_cndmask_b32_e64 v8, v22, v20, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v14, v23, v21, s0
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v10, v11, v12, v71
	v_perm_b32 v11, v11, v12, v72
	v_perm_b32 v12, v13, v17, v71
	v_perm_b32 v13, v13, v17, v72
	v_perm_b32 v0, v2, v4, v71
	v_perm_b32 v1, v2, v4, v72
	v_perm_b32 v4, v5, v8, v71
	v_perm_b32 v5, v5, v8, v72
	v_perm_b32 v8, v9, v16, v71
	v_perm_b32 v9, v9, v16, v72
	v_perm_b32 v2, v3, v6, v71
	v_perm_b32 v3, v3, v6, v72
	v_perm_b32 v6, v7, v14, v71
	v_perm_b32 v7, v7, v14, v72
	v_perm_b32 v14, v15, v18, v71
	v_perm_b32 v15, v15, v18, v72
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v32, 1, v32
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v36, s85, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	v_or_b32_e32 v34, 32, v32
	v_or_b32_e32 v35, 48, v32
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s85, v32
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp162:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 156
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 156
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17312
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 156
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
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
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 156
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 38
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
